; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_calc_residual.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_calc_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, %struct.hardware_scb* }
%struct.hardware_scb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.initiator_status }
%struct.initiator_status = type { i32, i32 }
%struct.ahd_dma_seg = type { i32 }

@SG_STATUS_VALID = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SG_OVERRUN_RESID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"data overrun detected Tag == 0x%x.\0A\00", align 1
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Bogus resid sgptr value 0x%x\0A\00", align 1
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@AHD_DMA_LAST_SEG = common dso_local global i32 0, align 4
@SCB_SENSE = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_calc_residual(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.initiator_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahd_dma_seg*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %11 = load %struct.scb*, %struct.scb** %4, align 8
  %12 = getelementptr inbounds %struct.scb, %struct.scb* %11, i32 0, i32 1
  %13 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  store %struct.hardware_scb* %13, %struct.hardware_scb** %5, align 8
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %15 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @aic_le32toh(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SG_STATUS_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %136

23:                                               ; preds = %2
  %24 = load i32, i32* @SG_STATUS_VALID, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SG_LIST_NULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %136

33:                                               ; preds = %23
  %34 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %35 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.initiator_status* %36, %struct.initiator_status** %6, align 8
  %37 = load %struct.initiator_status*, %struct.initiator_status** %6, align 8
  %38 = getelementptr inbounds %struct.initiator_status, %struct.initiator_status* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @aic_le32toh(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SG_FULL_RESID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = call i32 @aic_get_transfer_length(%struct.scb* %46)
  store i32 %47, i32* %9, align 4
  br label %121

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SG_LIST_NULL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %136

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SG_OVERRUN_RESID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load %struct.scb*, %struct.scb** %4, align 8
  %62 = call i32 @ahd_print_path(%struct.ahd_softc* %60, %struct.scb* %61)
  %63 = load %struct.scb*, %struct.scb** %4, align 8
  %64 = call i32 @SCB_GET_TAG(%struct.scb* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %67 = load %struct.scb*, %struct.scb** %4, align 8
  %68 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %66, %struct.scb* %67)
  %69 = load %struct.scb*, %struct.scb** %4, align 8
  %70 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  %71 = call i32 @aic_set_transaction_status(%struct.scb* %69, i32 %70)
  %72 = load %struct.scb*, %struct.scb** %4, align 8
  %73 = call i32 @aic_freeze_scb(%struct.scb* %72)
  br label %136

74:                                               ; preds = %54
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SG_PTR_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %118

83:                                               ; preds = %74
  %84 = load %struct.initiator_status*, %struct.initiator_status** %6, align 8
  %85 = getelementptr inbounds %struct.initiator_status, %struct.initiator_status* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @aic_le32toh(i32 %86)
  %88 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = load %struct.scb*, %struct.scb** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @SG_PTR_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc* %90, %struct.scb* %91, i32 %94)
  store %struct.ahd_dma_seg* %95, %struct.ahd_dma_seg** %10, align 8
  %96 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %97 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %96, i32 -1
  store %struct.ahd_dma_seg* %97, %struct.ahd_dma_seg** %10, align 8
  br label %98

98:                                               ; preds = %106, %83
  %99 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %100 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @aic_le32toh(i32 %101)
  %103 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %108 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %107, i32 1
  store %struct.ahd_dma_seg* %108, %struct.ahd_dma_seg** %10, align 8
  %109 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %110 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @aic_le32toh(i32 %111)
  %113 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %98

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117, %80
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %45
  %122 = load %struct.scb*, %struct.scb** %4, align 8
  %123 = getelementptr inbounds %struct.scb, %struct.scb* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SCB_SENSE, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.scb*, %struct.scb** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @aic_set_residual(%struct.scb* %129, i32 %130)
  br label %136

132:                                              ; preds = %121
  %133 = load %struct.scb*, %struct.scb** %4, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @aic_set_sense_residual(%struct.scb* %133, i32 %134)
  br label %136

136:                                              ; preds = %22, %32, %53, %59, %132, %128
  ret void
}

declare dso_local i32 @aic_le32toh(i32) #1

declare dso_local i32 @aic_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @aic_freeze_scb(%struct.scb*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @aic_set_residual(%struct.scb*, i32) #1

declare dso_local i32 @aic_set_sense_residual(%struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
