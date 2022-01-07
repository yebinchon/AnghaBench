; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcht_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cpcht_msipic = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_MSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @cpcht_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcht_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cpcht_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.cpcht_softc* @device_get_softc(i32 %15)
  store %struct.cpcht_softc* %16, %struct.cpcht_softc** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i64, i64* @cpcht_msipic, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %6, align 4
  br label %106

21:                                               ; preds = %5
  %22 = load %struct.cpcht_softc*, %struct.cpcht_softc** %12, align 8
  %23 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  store i32 8, i32* %13, align 4
  br label %25

25:                                               ; preds = %62, %21
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 124, %27
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.cpcht_softc*, %struct.cpcht_softc** %12, align 8
  %37 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IRQ_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %53

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %31

53:                                               ; preds = %48, %31
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %25

65:                                               ; preds = %57, %25
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.cpcht_softc*, %struct.cpcht_softc** %12, align 8
  %71 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %6, align 4
  br label %106

74:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i64, i64* @cpcht_msipic, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @MAP_IRQ(i64 %80, i32 %83)
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* @IRQ_MSI, align 8
  %90 = load %struct.cpcht_softc*, %struct.cpcht_softc** %12, align 8
  %91 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 %89, i64* %98, align 8
  br label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %75

102:                                              ; preds = %75
  %103 = load %struct.cpcht_softc*, %struct.cpcht_softc** %12, align 8
  %104 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %103, i32 0, i32 0
  %105 = call i32 @mtx_unlock(i32* %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %69, %19
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MAP_IRQ(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
