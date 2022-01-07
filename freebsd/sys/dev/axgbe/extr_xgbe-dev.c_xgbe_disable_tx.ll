; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_disable_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32 }

@MAC_TCR = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@TXQEN = common dso_local global i32 0, align 4
@DMA_CH_TCR = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_disable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_disable_tx(%struct.xgbe_prv_data* %0) #0 {
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

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %16 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %29

20:                                               ; preds = %14
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %22 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %23 = call i32 @xgbe_prepare_tx_stop(%struct.xgbe_prv_data* %21, %struct.xgbe_channel* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %28 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %27, i32 1
  store %struct.xgbe_channel* %28, %struct.xgbe_channel** %3, align 8
  br label %8

29:                                               ; preds = %19, %8
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %31 = load i32, i32* @MAC_TCR, align 4
  %32 = load i32, i32* @TE, align 4
  %33 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %30, i32 %31, i32 %32, i32 0)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %46, %29
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MTL_Q_TQOMR, align 4
  %44 = load i32, i32* @TXQEN, align 4
  %45 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %41, i32 %42, i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 2
  %52 = load %struct.xgbe_channel*, %struct.xgbe_channel** %51, align 8
  store %struct.xgbe_channel* %52, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %70, %49
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %59
  %66 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %67 = load i32, i32* @DMA_CH_TCR, align 4
  %68 = load i32, i32* @ST, align 4
  %69 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel* %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  %73 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %74 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %73, i32 1
  store %struct.xgbe_channel* %74, %struct.xgbe_channel** %3, align 8
  br label %53

75:                                               ; preds = %64, %53
  ret void
}

declare dso_local i32 @xgbe_prepare_tx_stop(%struct.xgbe_prv_data*, %struct.xgbe_channel*) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
