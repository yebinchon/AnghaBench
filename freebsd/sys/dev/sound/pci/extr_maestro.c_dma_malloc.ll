; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_dma_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_dma_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@setmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i64*, i32*)* @dma_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_malloc(i32 %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @bus_dmamem_alloc(i32 %11, i8** %10, i32 %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %39

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @setmap, align 4
  %24 = load i64*, i64** %8, align 8
  %25 = call i64 @bus_dmamap_load(i32 %18, i32 %20, i8* %21, i32 %22, i32 %23, i64* %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_dmamem_free(i32 %32, i8* %33, i32 %35)
  store i8* null, i8** %5, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %37, %31, %16
  %40 = load i8*, i8** %5, align 8
  ret i8* %40
}

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
