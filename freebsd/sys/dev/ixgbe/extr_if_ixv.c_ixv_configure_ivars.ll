; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_configure_ivars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_configure_ivars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64, i32, i32, %struct.ix_rx_queue* }
%struct.ix_rx_queue = type { i32 }

@IXGBE_EITR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixv_configure_ivars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_configure_ivars(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ix_rx_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 4
  %7 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %6, align 8
  store %struct.ix_rx_queue* %7, %struct.ix_rx_queue** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %45, %1
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %17
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %28 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ixv_set_ivar(%struct.adapter* %25, i32 %26, i32 %29, i32 0)
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %34 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ixv_set_ivar(%struct.adapter* %31, i32 %32, i32 %35, i32 1)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 3
  %39 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %40 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IXGBE_VTEITR(i32 %41)
  %43 = load i32, i32* @IXGBE_EITR_DEFAULT, align 4
  %44 = call i32 @IXGBE_WRITE_REG(i32* %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %49 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %48, i32 1
  store %struct.ix_rx_queue* %49, %struct.ix_rx_queue** %3, align 8
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ixv_set_ivar(%struct.adapter* %51, i32 1, i32 %54, i32 -1)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ixv_set_ivar(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @IXGBE_VTEITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
