; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_sglist_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_sglist_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, %struct.amr_sgentry*, %struct.amr_sg64entry*, i32, i32, i32, i32 }
%struct.amr_sgentry = type { i32 }
%struct.amr_sg64entry = type { i32 }

@AMR_NSEG = common dso_local global i32 0, align 4
@AMR_MAXCMD = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't allocate scatter/gather DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate s/g table\0A\00", align 1
@amr_sglist_helper = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"s/g table too low (0x%x), reallocating\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*)* @amr_sglist_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_sglist_map(%struct.amr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %9 = call i64 @AMR_IS_SG64(%struct.amr_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @AMR_NSEG, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = load i32, i32* @AMR_MAXCMD, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %14, %16
  store i64 %17, i64* %4, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @AMR_NSEG, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = load i32, i32* @AMR_MAXCMD, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %27 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %30 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %33 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %34 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %33, i32 0, i32 4
  %35 = call i32 @bus_dma_tag_create(i32 %28, i32 512, i32 0, i32 %29, i32 %30, i32* null, i32* null, i64 %31, i32 1, i32 %32, i32 0, i32* null, i32* null, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %97

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %78, %44
  %46 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %47 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %50 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %51 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %50, i32 0, i32 3
  %52 = call i32 @bus_dmamem_alloc(i32 %48, i8** %5, i32 %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %57 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %2, align 4
  br label %97

61:                                               ; preds = %45
  %62 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %63 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %66 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @amr_sglist_helper, align 4
  %71 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %72 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %71, i32 0, i32 0
  %73 = call i32 @bus_dmamap_load(i32 %64, i32 %67, i8* %68, i64 %69, i32 %70, i32* %72, i32 0)
  %74 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %75 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 8192
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %80 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @debug(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %45

83:                                               ; preds = %61
  %84 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %85 = call i64 @AMR_IS_SG64(%struct.amr_softc* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = bitcast i8* %88 to %struct.amr_sg64entry*
  %90 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %91 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %90, i32 0, i32 2
  store %struct.amr_sg64entry* %89, %struct.amr_sg64entry** %91, align 8
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i8*, i8** %5, align 8
  %94 = bitcast i8* %93 to %struct.amr_sgentry*
  %95 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %96 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %95, i32 0, i32 1
  store %struct.amr_sgentry* %94, %struct.amr_sgentry** %96, align 8
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %55, %38
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @AMR_IS_SG64(%struct.amr_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
