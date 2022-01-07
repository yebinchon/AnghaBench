; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_report_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_report_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stopped_vcpu = common dso_local global i32 0, align 4
@GDB_SIGNAL_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"thread:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @report_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_stop() #0 {
  %1 = call i32 (...) @start_packet()
  %2 = load i32, i32* @stopped_vcpu, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @append_char(i8 signext 83)
  br label %8

6:                                                ; preds = %0
  %7 = call i32 @append_char(i8 signext 84)
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i32, i32* @GDB_SIGNAL_TRAP, align 4
  %10 = call i32 @append_byte(i32 %9)
  %11 = load i32, i32* @stopped_vcpu, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = call i32 @append_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stopped_vcpu, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @append_integer(i32 %16)
  %18 = call i32 @append_char(i8 signext 59)
  br label %19

19:                                               ; preds = %13, %8
  store i32 -1, i32* @stopped_vcpu, align 4
  %20 = call i32 (...) @finish_packet()
  ret void
}

declare dso_local i32 @start_packet(...) #1

declare dso_local i32 @append_char(i8 signext) #1

declare dso_local i32 @append_byte(i32) #1

declare dso_local i32 @append_string(i8*) #1

declare dso_local i32 @append_integer(i32) #1

declare dso_local i32 @finish_packet(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
