; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dma_tag_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dma_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_dma_translation = type { i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DMA addr_mask invalid: %#jx\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to create bridge DMA tag: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhnd_dma_translation*, i32*)* @bhndb_dma_tag_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_dma_tag_create(i32 %0, i32 %1, %struct.bhnd_dma_translation* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhnd_dma_translation*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.bhnd_dma_translation* %2, %struct.bhnd_dma_translation** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %8, align 8
  %19 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %8, align 8
  %22 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %27, i8* %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = call i32 @MIN(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %8, align 8
  %36 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %8, align 8
  %42 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40, %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @bus_dma_tag_create(i32 %45, i32 1, i32 0, i32 %46, i32 %47, i32* null, i32* null, i32 %48, i32 0, i32 %49, i32 0, i32* null, i32* null, i32* %10)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
