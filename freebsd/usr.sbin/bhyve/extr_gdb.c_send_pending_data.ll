; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_send_pending_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_send_pending_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@cur_resp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@write_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Write to GDB socket failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send_pending_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_pending_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_resp, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @write_event, align 4
  %8 = call i32 @mevent_disable(i32 %7)
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @io_buffer_head(%struct.TYPE_4__* @cur_resp)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_resp, i32 0, i32 0), align 8
  %13 = call i32 @write(i32 %10, i32 %11, i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @close_connection()
  br label %31

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @io_buffer_advance(%struct.TYPE_4__* @cur_resp, i32 %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_resp, i32 0, i32 0), align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @write_event, align 4
  %26 = call i32 @mevent_disable(i32 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @write_event, align 4
  %29 = call i32 @mevent_enable(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %6, %30, %16
  ret void
}

declare dso_local i32 @mevent_disable(i32) #1

declare dso_local i32 @write(i32, i32, i64) #1

declare dso_local i32 @io_buffer_head(%struct.TYPE_4__*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close_connection(...) #1

declare dso_local i32 @io_buffer_advance(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mevent_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
