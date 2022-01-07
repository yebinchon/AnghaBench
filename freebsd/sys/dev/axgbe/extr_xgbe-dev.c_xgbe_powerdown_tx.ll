; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_powerdown_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_powerdown_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32 }

@MAC_TCR = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@DMA_CH_TCR = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_powerdown_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_powerdown_tx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
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
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 1
  %36 = load %struct.xgbe_channel*, %struct.xgbe_channel** %35, align 8
  store %struct.xgbe_channel* %36, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %54, %29
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %45 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %43
  %50 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %51 = load i32, i32* @DMA_CH_TCR, align 4
  %52 = load i32, i32* @ST, align 4
  %53 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %57, i32 1
  store %struct.xgbe_channel* %58, %struct.xgbe_channel** %3, align 8
  br label %37

59:                                               ; preds = %48, %37
  ret void
}

declare dso_local i32 @xgbe_prepare_tx_stop(%struct.xgbe_prv_data*, %struct.xgbe_channel*) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
