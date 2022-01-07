; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@FIRE_MSIX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @fire_alloc_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_alloc_msix(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fire_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.fire_softc* @device_get_softc(i32 %11)
  store %struct.fire_softc* %12, %struct.fire_softc** %8, align 8
  %13 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %14 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FIRE_MSIX, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %23 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %22, i32 0, i32 5
  %24 = call i32 @mtx_lock(i32* %23)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %41, %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %28 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %33 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @isclr(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %25

44:                                               ; preds = %38, %25
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %47 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %52 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %51, i32 0, i32 5
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %4, align 4
  br label %106

55:                                               ; preds = %44
  %56 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %57 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %98, %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %65 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @isclr(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %63
  %71 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %72 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @setbit(i32 %73, i32 %74)
  %76 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %77 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @setbit(i32 %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %83 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %89 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %95 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %94, i32 0, i32 5
  %96 = call i32 @mtx_unlock(i32* %95)
  store i32 0, i32* %4, align 4
  br label %106

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %103 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %102, i32 0, i32 5
  %104 = call i32 @mtx_unlock(i32* %103)
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %70, %50, %19
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.fire_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @setbit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
