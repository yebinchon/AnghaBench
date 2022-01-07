; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.cdev = type { %struct.creator_softc* }
%struct.creator_softc = type { i64, i64* }

@CREATOR_FB_MAP_SIZE = common dso_local global i32 0, align 4
@creator_fb_map = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @creator_fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_fb_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.creator_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  store %struct.creator_softc* %16, %struct.creator_softc** %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %79, %5
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @CREATOR_FB_MAP_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @creator_fb_map, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %22, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @creator_fb_map, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @creator_fb_map, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %37, %43
  %45 = icmp slt i64 %31, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %30
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @creator_fb_map, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @creator_fb_map, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %52, %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.creator_softc*, %struct.creator_softc** %12, align 8
  %64 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %6, align 4
  br label %84

69:                                               ; preds = %46
  %70 = load %struct.creator_softc*, %struct.creator_softc** %12, align 8
  %71 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %6, align 4
  br label %84

78:                                               ; preds = %30, %21
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %69, %67
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
