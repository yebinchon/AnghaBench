; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"emu_malloc: failed to alloc DMA map: %d\0A\00", align 1
@emu_setmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"emu_malloc: failed to load DMA memory: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.emu_mem*, i32, i64*, i32*)* @emu_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emu_malloc(%struct.emu_mem* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emu_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.emu_mem* %0, %struct.emu_mem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64*, i64** %8, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %14 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @bus_dmamem_alloc(i32 %15, i8** %10, i32 %16, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %22 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %29 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %27, %20
  store i8* null, i8** %5, align 8
  br label %77

36:                                               ; preds = %4
  %37 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %38 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @emu_setmap, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = call i32 @bus_dmamap_load(i32 %39, i32 %41, i8* %42, i32 %43, i32 %44, i64* %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %54 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %61 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %69 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bus_dmamem_free(i32 %70, i8* %71, i32 %73)
  store i8* null, i8** %5, align 8
  br label %77

75:                                               ; preds = %48
  %76 = load i8*, i8** %10, align 8
  store i8* %76, i8** %5, align 8
  br label %77

77:                                               ; preds = %75, %67, %35
  %78 = load i8*, i8** %5, align 8
  ret i8* %78
}

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
