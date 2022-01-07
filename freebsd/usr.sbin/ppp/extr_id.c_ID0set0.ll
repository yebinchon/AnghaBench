; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0set0.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0set0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@euid = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ID0set0: Unable to seteuid!\0A\00", align 1
@EX_NOPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ID0set0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ID0set0() #0 {
  %1 = load i32, i32* @euid, align 4
  %2 = call i32 @seteuid(i32 %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @LogERROR, align 4
  %6 = call i32 @log_Printf(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @EX_NOPERM, align 4
  %8 = call i32 @AbortProgram(i32 %7)
  br label %9

9:                                                ; preds = %4, %0
  ret void
}

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @AbortProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
