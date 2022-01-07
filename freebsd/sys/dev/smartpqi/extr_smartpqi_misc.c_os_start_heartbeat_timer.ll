; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_misc.c_os_start_heartbeat_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_misc.c_os_start_heartbeat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@OS_FW_HEARTBEAT_TIMER_INTERVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_start_heartbeat_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pqisrc_softstate*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pqisrc_softstate*
  store %struct.pqisrc_softstate* %5, %struct.pqisrc_softstate** %3, align 8
  %6 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %8 = call i32 @pqisrc_heartbeat_timer_handler(%struct.pqisrc_softstate* %7)
  %9 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %10 = call i32 @pqisrc_ctrl_offline(%struct.pqisrc_softstate* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %14 = load i32, i32* @OS_FW_HEARTBEAT_TIMER_INTERVAL, align 4
  %15 = load i32, i32* @hz, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @timeout(void (i8*)* @os_start_heartbeat_timer, %struct.pqisrc_softstate* %13, i32 %16)
  %18 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %19 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %12, %1
  %22 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_heartbeat_timer_handler(%struct.pqisrc_softstate*) #1

declare dso_local i32 @pqisrc_ctrl_offline(%struct.pqisrc_softstate*) #1

declare dso_local i32 @timeout(void (i8*)*, %struct.pqisrc_softstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
