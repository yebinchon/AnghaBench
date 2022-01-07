; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_disable_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32 }

@MAC_RCR = common dso_local global i32 0, align 4
@DCRCC = common dso_local global i32 0, align 4
@CST = common dso_local global i32 0, align 4
@ACS = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@MAC_RQC0R = common dso_local global i32 0, align 4
@DMA_CH_RCR = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_disable_rx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = load i32, i32* @MAC_RCR, align 4
  %7 = load i32, i32* @DCRCC, align 4
  %8 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = load i32, i32* @MAC_RCR, align 4
  %11 = load i32, i32* @CST, align 4
  %12 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = load i32, i32* @MAC_RCR, align 4
  %15 = load i32, i32* @ACS, align 4
  %16 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = load i32, i32* @MAC_RCR, align 4
  %19 = load i32, i32* @RE, align 4
  %20 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %17, i32 %18, i32 %19, i32 0)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %31, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @xgbe_prepare_rx_stop(%struct.xgbe_prv_data* %28, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = load i32, i32* @MAC_RQC0R, align 4
  %37 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %35, i32 %36, i32 0)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 2
  %40 = load %struct.xgbe_channel*, %struct.xgbe_channel** %39, align 8
  store %struct.xgbe_channel* %40, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %58, %34
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %49 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %63

53:                                               ; preds = %47
  %54 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %55 = load i32, i32* @DMA_CH_RCR, align 4
  %56 = load i32, i32* @SR, align 4
  %57 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel* %54, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %62 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %61, i32 1
  store %struct.xgbe_channel* %62, %struct.xgbe_channel** %3, align 8
  br label %41

63:                                               ; preds = %52, %41
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_prepare_rx_stop(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
