; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32 }

@DMA_CH_RCR = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@MAC_RQC0R = common dso_local global i32 0, align 4
@MAC_RCR = common dso_local global i32 0, align 4
@DCRCC = common dso_local global i32 0, align 4
@CST = common dso_local global i32 0, align 4
@ACS = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_rx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 2
  %8 = load %struct.xgbe_channel*, %struct.xgbe_channel** %7, align 8
  store %struct.xgbe_channel* %8, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %31

21:                                               ; preds = %15
  %22 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %23 = load i32, i32* @DMA_CH_RCR, align 4
  %24 = load i32, i32* @SR, align 4
  %25 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel* %22, i32 %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %30 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %29, i32 1
  store %struct.xgbe_channel* %30, %struct.xgbe_channel** %3, align 8
  br label %9

31:                                               ; preds = %20, %9
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 1
  %41 = shl i32 2, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = load i32, i32* @MAC_RQC0R, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %48, i32 %49, i32 %50)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = load i32, i32* @MAC_RCR, align 4
  %54 = load i32, i32* @DCRCC, align 4
  %55 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %57 = load i32, i32* @MAC_RCR, align 4
  %58 = load i32, i32* @CST, align 4
  %59 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = load i32, i32* @MAC_RCR, align 4
  %62 = load i32, i32* @ACS, align 4
  %63 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = load i32, i32* @MAC_RCR, align 4
  %66 = load i32, i32* @RE, align 4
  %67 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %64, i32 %65, i32 %66, i32 1)
  ret void
}

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.xgbe_channel*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
