; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__, i32, %struct.xgbe_channel*, %struct.xgbe_hw_if }
%struct.TYPE_2__ = type { i32 }
%struct.xgbe_channel = type { i32 }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@DMA_ISR = common dso_local global i32 0, align 4
@DMA_CH_SR = common dso_local global i32 0, align 4
@TI = common dso_local global i32 0, align 4
@RI = common dso_local global i32 0, align 4
@RBU = common dso_local global i32 0, align 4
@FBE = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@MACIS = common dso_local global i32 0, align 4
@MAC_ISR = common dso_local global i32 0, align 4
@MMCTXIS = common dso_local global i32 0, align 4
@MMCRXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xgbe_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_hw_if*, align 8
  %5 = alloca %struct.xgbe_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %11, %struct.xgbe_prv_data** %3, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 5
  store %struct.xgbe_hw_if* %13, %struct.xgbe_hw_if** %4, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = load i32, i32* @DMA_ISR, align 4
  %16 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %130

20:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %91, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %91

34:                                               ; preds = %27
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 4
  %37 = load %struct.xgbe_channel*, %struct.xgbe_channel** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %37, i64 %39
  store %struct.xgbe_channel* %40, %struct.xgbe_channel** %5, align 8
  %41 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %42 = load i32, i32* @DMA_CH_SR, align 4
  %43 = call i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DMA_CH_SR, align 4
  %51 = load i32, i32* @TI, align 4
  %52 = call i64 @XGMAC_GET_BITS(i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DMA_CH_SR, align 4
  %57 = load i32, i32* @RI, align 4
  %58 = call i64 @XGMAC_GET_BITS(i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = call i32 @xgbe_all_poll(%struct.xgbe_prv_data* %61, i32 16)
  br label %63

63:                                               ; preds = %60, %54, %34
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DMA_CH_SR, align 4
  %66 = load i32, i32* @RBU, align 4
  %67 = call i64 @XGMAC_GET_BITS(i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DMA_CH_SR, align 4
  %78 = load i32, i32* @FBE, align 4
  %79 = call i64 @XGMAC_GET_BITS(i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @taskqueue_thread, align 4
  %83 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %84 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %83, i32 0, i32 1
  %85 = call i32 @taskqueue_enqueue(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %88 = load i32, i32* @DMA_CH_SR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %33
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %21

94:                                               ; preds = %21
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @DMA_ISR, align 4
  %97 = load i32, i32* @MACIS, align 4
  %98 = call i64 @XGMAC_GET_BITS(i32 %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %102 = load i32, i32* @MAC_ISR, align 4
  %103 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MAC_ISR, align 4
  %106 = load i32, i32* @MMCTXIS, align 4
  %107 = call i64 @XGMAC_GET_BITS(i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %111 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %110, i32 0, i32 1
  %112 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %111, align 8
  %113 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %114 = bitcast %struct.xgbe_prv_data* %113 to %struct.xgbe_prv_data.1*
  %115 = call i32 %112(%struct.xgbe_prv_data.1* %114)
  br label %116

116:                                              ; preds = %109, %100
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @MAC_ISR, align 4
  %119 = load i32, i32* @MMCRXIS, align 4
  %120 = call i64 @XGMAC_GET_BITS(i32 %117, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %124 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %123, i32 0, i32 0
  %125 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %124, align 8
  %126 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %127 = bitcast %struct.xgbe_prv_data* %126 to %struct.xgbe_prv_data.0*
  %128 = call i32 %125(%struct.xgbe_prv_data.0* %127)
  br label %129

129:                                              ; preds = %122, %116
  br label %130

130:                                              ; preds = %19, %129, %94
  ret void
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel*, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @xgbe_all_poll(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
