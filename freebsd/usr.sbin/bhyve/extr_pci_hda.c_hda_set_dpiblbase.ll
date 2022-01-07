; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_dpiblbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_dpiblbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i32* }

@HDAC_DPLBASE_DPLBASE_DMAPBE = common dso_local global i32 0, align 4
@HDAC_DPLBASE_DPLBASE_MASK = common dso_local global i32 0, align 4
@HDAC_DPIBUBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DMA Position In Buffer dma_paddr: %p\0A\00", align 1
@HDA_DMA_PIB_ENTRY_LEN = common dso_local global i32 0, align 4
@HDA_IOSS_NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Fail to get the guest \09\09\09\09\09 virtual address\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DMA Position In Buffer Reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*, i32, i32)* @hda_set_dpiblbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_set_dpiblbase(%struct.hda_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HDAC_DPLBASE_DPLBASE_DMAPBE, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HDAC_DPLBASE_DPLBASE_DMAPBE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HDAC_DPLBASE_DPLBASE_DMAPBE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HDAC_DPLBASE_DPLBASE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %31 = load i32, i32* @HDAC_DPIBUBASE, align 4
  %32 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 32
  %36 = or i32 %33, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @HDA_DMA_PIB_ENTRY_LEN, align 4
  %44 = load i32, i32* @HDA_IOSS_NO, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32* @hda_dma_get_vaddr(%struct.hda_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %48 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %50 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %26
  %54 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @assert(i32 0)
  br label %56

56:                                               ; preds = %53, %26
  br label %61

57:                                               ; preds = %21
  %58 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %60 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %56
  br label %62

62:                                               ; preds = %61, %3
  ret void
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32* @hda_dma_get_vaddr(%struct.hda_softc*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
