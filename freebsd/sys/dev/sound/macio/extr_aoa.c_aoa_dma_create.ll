; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_dma_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_dma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoa_dma = type { i32, i32, i32, i32 }
%struct.aoa_softc = type { %struct.aoa_dma*, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AOA_BUFFER_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"AOA\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoa_dma* (%struct.aoa_softc*)* @aoa_dma_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoa_dma* @aoa_dma_create(%struct.aoa_softc* %0) #0 {
  %2 = alloca %struct.aoa_dma*, align 8
  %3 = alloca %struct.aoa_softc*, align 8
  %4 = alloca %struct.aoa_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aoa_softc* %0, %struct.aoa_softc** %3, align 8
  %8 = load %struct.aoa_softc*, %struct.aoa_softc** %3, align 8
  %9 = getelementptr inbounds %struct.aoa_softc, %struct.aoa_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @bus_get_dma_tag(i32 %11)
  %13 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %16 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %17 = call i32 @bus_dma_tag_create(i32 %12, i32 4, i32 0, i32 %13, i32 %14, i32* null, i32* null, i32 %15, i32 1, i32 %16, i32 0, i32* null, i32* null, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.aoa_dma* null, %struct.aoa_dma** %2, align 8
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.aoa_dma* @malloc(i32 16, i32 %22, i32 %25)
  store %struct.aoa_dma* %26, %struct.aoa_dma** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  %29 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %31 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  %32 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  %35 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  %37 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %36, i32 0, i32 0
  %38 = load i32, i32* @MTX_DEF, align 4
  %39 = call i32 @mtx_init(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %38)
  %40 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  %41 = load %struct.aoa_softc*, %struct.aoa_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aoa_softc, %struct.aoa_softc* %41, i32 0, i32 0
  store %struct.aoa_dma* %40, %struct.aoa_dma** %42, align 8
  %43 = load %struct.aoa_dma*, %struct.aoa_dma** %4, align 8
  store %struct.aoa_dma* %43, %struct.aoa_dma** %2, align 8
  br label %44

44:                                               ; preds = %21, %20
  %45 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  ret %struct.aoa_dma* %45
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local %struct.aoa_dma* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
