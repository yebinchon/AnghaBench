; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.pbio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PBIO_BUFSIZ = common dso_local global i32 0, align 4
@PBIOPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pbioip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @pbioread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbioread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pbio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = call i32 @UNIT(%struct.cdev* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.cdev*, %struct.cdev** %5, align 8
  %19 = call i32 @PORT(%struct.cdev* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call %struct.pbio_softc* @pbio_addr(i32 %20)
  store %struct.pbio_softc* %21, %struct.pbio_softc** %8, align 8
  %22 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %23 = icmp eq %struct.pbio_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %4, align 4
  br label %121

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %119, %26
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %120

32:                                               ; preds = %27
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PBIO_BUFSIZ, align 4
  %37 = call i32 @min(i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %39 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = call i32 @uiomove(i8* %45, i32 %46, %struct.uio* %47)
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %121

52:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %116, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %60 = call i32 @portval(i32 %58, %struct.pbio_softc* %59, i8* %15)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %121

64:                                               ; preds = %57
  %65 = load i8, i8* %15, align 1
  %66 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %67 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %65, i8* %76, align 1
  %77 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %78 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %64
  %87 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %88 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %86
  %97 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %98 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = ptrtoint i64* %103 to i32
  %105 = load i32, i32* @PBIOPRI, align 4
  %106 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %107 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @tsleep(i32 %104, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %96, %86, %64
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %53

119:                                              ; preds = %53
  br label %27

120:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %62, %50, %24
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @UNIT(%struct.cdev*) #1

declare dso_local i32 @PORT(%struct.cdev*) #1

declare dso_local %struct.pbio_softc* @pbio_addr(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @portval(i32, %struct.pbio_softc*, i8*) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
