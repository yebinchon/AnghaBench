; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_sg_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_sg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, i32, i32, i32 }

@MLY_MAX_COMMANDS = common dso_local global i32 0, align 4
@MLY_MAX_SGENTRIES = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't allocate scatter/gather DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate s/g table\0A\00", align 1
@mly_sg_map_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_sg_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_sg_map(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load i32, i32* @MLY_MAX_COMMANDS, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = load i32, i32* @MLY_MAX_SGENTRIES, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %8, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %19 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %20 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %20, i32 0, i32 2
  %22 = call i64 @bus_dma_tag_create(i32 %14, i32 1, i32 0, i32 %15, i32 %16, i32* null, i32* null, i64 %17, i32 1, i32 %18, i32 %19, i32* null, i32* null, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %26 = call i32 @mly_printf(%struct.mly_softc* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %1
  %29 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8**
  %35 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %36 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %36, i32 0, i32 1
  %38 = call i64 @bus_dmamem_alloc(i32 %31, i8** %34, i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %42 = call i32 @mly_printf(%struct.mly_softc* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %28
  %45 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @mly_sg_map_helper, align 4
  %56 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %57 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %58 = call i64 @bus_dmamap_load(i32 %47, i32 %50, i32 %53, i64 %54, i32 %55, %struct.mly_softc* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %60, %40, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.mly_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
