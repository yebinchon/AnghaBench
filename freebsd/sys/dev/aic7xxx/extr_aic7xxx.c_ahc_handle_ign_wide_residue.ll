; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_ign_wide_residue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_ign_wide_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32 }
%struct.scb = type { %struct.ahc_dma_seg* }
%struct.ahc_dma_seg = type { i32, i32 }

@SCB_TAG = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@DPHASE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i64 0, align 8
@SCB_RESIDUAL_SGPTR = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SCB_LUN = common dso_local global i32 0, align 4
@SCB_XFERLEN_ODD = common dso_local global i32 0, align 4
@SCB_RESIDUAL_DATACNT = common dso_local global i32 0, align 4
@AHC_SG_LEN_MASK = common dso_local global i32 0, align 4
@SHADDR = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_handle_ign_wide_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_handle_ign_wide_residue(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahc_dma_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = load i32, i32* @SCB_TAG, align 4
  %14 = call i32 @ahc_inb(%struct.ahc_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %15, i32 %16)
  store %struct.scb* %17, %struct.scb** %6, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %19 = load i32, i32* @SEQ_FLAGS, align 4
  %20 = call i32 @ahc_inb(%struct.ahc_softc* %18, i32 %19)
  %21 = load i32, i32* @DPHASE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.scb*, %struct.scb** %6, align 8
  %26 = call i64 @aic_get_transfer_dir(%struct.scb* %25)
  %27 = load i64, i64* @CAM_DIR_IN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %2
  br label %139

30:                                               ; preds = %24
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %32 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %33 = call i32 @ahc_inb(%struct.ahc_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SG_LIST_NULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %40 = load i32, i32* @SCB_LUN, align 4
  %41 = call i32 @ahc_inb(%struct.ahc_softc* %39, i32 %40)
  %42 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %138

46:                                               ; preds = %38, %30
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %48 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %49 = call i32 @ahc_inl(%struct.ahc_softc* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %51 = load i32, i32* @SCB_RESIDUAL_DATACNT, align 4
  %52 = call i32 @ahc_inl(%struct.ahc_softc* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SG_LIST_NULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %64 = load i32, i32* @SHADDR, align 4
  %65 = call i32 @ahc_inl(%struct.ahc_softc* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @SG_PTR_MASK, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.scb*, %struct.scb** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb* %73, i32 %74)
  store %struct.ahc_dma_seg* %75, %struct.ahc_dma_seg** %8, align 8
  %76 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %77 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %76, i32 -1
  store %struct.ahc_dma_seg* %77, %struct.ahc_dma_seg** %8, align 8
  %78 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %79 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @aic_le32toh(i32 %80)
  %82 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %11, align 4
  %84 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %85 = load %struct.scb*, %struct.scb** %6, align 8
  %86 = getelementptr inbounds %struct.scb, %struct.scb* %85, i32 0, i32 0
  %87 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %86, align 8
  %88 = icmp ne %struct.ahc_dma_seg* %84, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %62
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %97 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %96, i32 -1
  store %struct.ahc_dma_seg* %97, %struct.ahc_dma_seg** %8, align 8
  %98 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %99 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @aic_le32toh(i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = or i32 1, %105
  store i32 %106, i32* %9, align 4
  %107 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %108 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @aic_le32toh(i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %113 = and i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %117 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %116, i32 1
  store %struct.ahc_dma_seg* %117, %struct.ahc_dma_seg** %8, align 8
  %118 = load %struct.scb*, %struct.scb** %6, align 8
  %119 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %120 = call i32 @ahc_sg_virt_to_bus(%struct.scb* %118, %struct.ahc_dma_seg* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %95, %89, %62
  %122 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %123 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @ahc_outl(%struct.ahc_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %127 = load i32, i32* @SCB_RESIDUAL_DATACNT, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ahc_outl(%struct.ahc_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %131 = load i32, i32* @SCB_LUN, align 4
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %133 = load i32, i32* @SCB_LUN, align 4
  %134 = call i32 @ahc_inb(%struct.ahc_softc* %132, i32 %133)
  %135 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %136 = xor i32 %134, %135
  %137 = call i32 @ahc_outb(%struct.ahc_softc* %130, i32 %131, i32 %136)
  br label %138

138:                                              ; preds = %121, %45
  br label %139

139:                                              ; preds = %138, %29
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i32) #1

declare dso_local i64 @aic_get_transfer_dir(%struct.scb*) #1

declare dso_local i32 @ahc_inl(%struct.ahc_softc*, i32) #1

declare dso_local %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb*, i32) #1

declare dso_local i32 @aic_le32toh(i32) #1

declare dso_local i32 @ahc_sg_virt_to_bus(%struct.scb*, %struct.ahc_dma_seg*) #1

declare dso_local i32 @ahc_outl(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
