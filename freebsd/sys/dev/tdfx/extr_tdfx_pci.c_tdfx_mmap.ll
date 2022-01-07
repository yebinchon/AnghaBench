; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.tdfx_softc = type { i32, i32 }

@tdfx_devclass = common dso_local global i32 0, align 4
@tdfx_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64*, i32, i32*)* @tdfx_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_mmap(%struct.cdev* %0, i32 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [2 x %struct.tdfx_softc*], align 16
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @tdfx_devclass, align 4
  %14 = call i64 @devclass_get_softc(i32 %13, i32 0)
  %15 = inttoptr i64 %14 to %struct.tdfx_softc*
  %16 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 0
  store %struct.tdfx_softc* %15, %struct.tdfx_softc** %16, align 16
  %17 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 0
  %18 = load %struct.tdfx_softc*, %struct.tdfx_softc** %17, align 16
  %19 = icmp eq %struct.tdfx_softc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %70

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, -16777216
  %24 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 0
  %25 = load %struct.tdfx_softc*, %struct.tdfx_softc** %24, align 16
  %26 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 16777215
  store i32 %31, i32* %8, align 4
  %32 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 0
  %33 = load %struct.tdfx_softc*, %struct.tdfx_softc** %32, align 16
  %34 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rman_get_start(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %6, align 4
  br label %70

41:                                               ; preds = %21
  %42 = load i32, i32* @tdfx_count, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load i32, i32* @tdfx_devclass, align 4
  %46 = call i64 @devclass_get_softc(i32 %45, i32 1)
  %47 = inttoptr i64 %46 to %struct.tdfx_softc*
  %48 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 1
  store %struct.tdfx_softc* %47, %struct.tdfx_softc** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, -16777216
  %51 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 1
  %52 = load %struct.tdfx_softc*, %struct.tdfx_softc** %51, align 8
  %53 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 16777215
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds [2 x %struct.tdfx_softc*], [2 x %struct.tdfx_softc*]* %12, i64 0, i64 1
  %60 = load %struct.tdfx_softc*, %struct.tdfx_softc** %59, align 8
  %61 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @rman_get_start(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %6, align 4
  br label %70

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %41
  store i32 -1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %56, %29, %20
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
