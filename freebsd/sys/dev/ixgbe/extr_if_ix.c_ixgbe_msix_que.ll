; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_msix_que.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_msix_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix_rx_queue = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ixgbe_msix_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_msix_que(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ix_rx_queue*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ix_rx_queue*
  store %struct.ix_rx_queue* %8, %struct.ix_rx_queue** %4, align 8
  %9 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %9, i32 0, i32 2
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %12, i32 0, i32 2
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ifnet* @iflib_get_ifp(i32 %16)
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ixgbe_disable_queue(%struct.adapter* %27, i32 %30)
  %32 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %4, align 8
  %33 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %24
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @ixgbe_disable_queue(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
