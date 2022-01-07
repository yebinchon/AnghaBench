; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pbio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @pbioioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbioioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.pbio_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = call i32 @UNIT(%struct.cdev* %15)
  store i32 %16, i32* %14, align 4
  %17 = load %struct.cdev*, %struct.cdev** %7, align 8
  %18 = call i32 @PORT(%struct.cdev* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call %struct.pbio_softc* @pbio_addr(i32 %19)
  store %struct.pbio_softc* %20, %struct.pbio_softc** %12, align 8
  %21 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %22 = icmp eq %struct.pbio_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %6, align 4
  br label %96

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %93 [
    i32 130, label %27
    i32 129, label %38
    i32 128, label %49
    i32 133, label %60
    i32 132, label %71
    i32 131, label %82
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %32 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  br label %95

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %43 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 4
  br label %95

49:                                               ; preds = %25
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %54 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 4
  br label %95

60:                                               ; preds = %25
  %61 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %62 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %95

71:                                               ; preds = %25
  %72 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %73 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %9, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32 %79, i32* %81, align 4
  br label %95

82:                                               ; preds = %25
  %83 = load %struct.pbio_softc*, %struct.pbio_softc** %12, align 8
  %84 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %9, align 8
  %92 = inttoptr i64 %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %95

93:                                               ; preds = %25
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %6, align 4
  br label %96

95:                                               ; preds = %82, %71, %60, %49, %38, %27
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %93, %23
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @UNIT(%struct.cdev*) #1

declare dso_local i32 @PORT(%struct.cdev*) #1

declare dso_local %struct.pbio_softc* @pbio_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
