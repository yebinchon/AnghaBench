; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32 }

@DMA_CH_TCR = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@TXQEN = common dso_local global i32 0, align 4
@MTL_Q_ENABLED = common dso_local global i32 0, align 4
@MAC_TCR = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_tx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 2
  %7 = load %struct.xgbe_channel*, %struct.xgbe_channel** %6, align 8
  store %struct.xgbe_channel* %7, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %16 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %22 = load i32, i32* @DMA_CH_TCR, align 4
  %23 = load i32, i32* @ST, align 4
  %24 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel* %21, i32 %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %28, i32 1
  store %struct.xgbe_channel* %29, %struct.xgbe_channel** %3, align 8
  br label %8

30:                                               ; preds = %19, %8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MTL_Q_TQOMR, align 4
  %41 = load i32, i32* @TXQEN, align 4
  %42 = load i32, i32* @MTL_Q_ENABLED, align 4
  %43 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = load i32, i32* @MAC_TCR, align 4
  %50 = load i32, i32* @TE, align 4
  %51 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %48, i32 %49, i32 %50, i32 1)
  ret void
}

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
