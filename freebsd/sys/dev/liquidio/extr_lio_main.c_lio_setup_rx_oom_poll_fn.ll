; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_rx_oom_poll_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_rx_oom_poll_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { %struct.lio_tq, %struct.octeon_device* }
%struct.lio_tq = type { i32, i32*, %struct.lio* }
%struct.octeon_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"lio_rx_oom_status\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to create lio rx oom status tq\0A\00", align 1
@lio_poll_check_rx_oom_status = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"lio%d_rx_oom_status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_setup_rx_oom_poll_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_setup_rx_oom_poll_fn(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_tq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call %struct.lio* @if_getsoftc(%struct.ifnet* %7)
  store %struct.lio* %8, %struct.lio** %4, align 8
  %9 = load %struct.lio*, %struct.lio** %4, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  store %struct.octeon_device* %11, %struct.octeon_device** %5, align 8
  %12 = load %struct.lio*, %struct.lio** %4, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 0
  store %struct.lio_tq* %13, %struct.lio_tq** %6, align 8
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %16 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %17 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %16, i32 0, i32 1
  %18 = call i32* @taskqueue_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32** %17)
  %19 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %20 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %22 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %27 = call i32 @lio_dev_err(%struct.octeon_device* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %55

28:                                               ; preds = %1
  %29 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %30 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %33 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %32, i32 0, i32 0
  %34 = load i32, i32* @lio_poll_check_rx_oom_status, align 4
  %35 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %36 = bitcast %struct.lio_tq* %35 to i8*
  %37 = call i32 @TIMEOUT_TASK_INIT(i32* %31, i32* %33, i32 0, i32 %34, i8* %36)
  %38 = load %struct.lio*, %struct.lio** %4, align 8
  %39 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %40 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %39, i32 0, i32 2
  store %struct.lio* %38, %struct.lio** %40, align 8
  %41 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %42 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %41, i32 0, i32 1
  %43 = load i32, i32* @PI_NET, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @taskqueue_start_threads(i32** %42, i32 1, i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %49 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.lio_tq*, %struct.lio_tq** %6, align 8
  %52 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %51, i32 0, i32 0
  %53 = call i32 @lio_ms_to_ticks(i32 50)
  %54 = call i32 @taskqueue_enqueue_timeout(i32* %50, i32* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %28, %25
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32* @taskqueue_create(i8*, i32, i32, i32**) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32*, i32*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
