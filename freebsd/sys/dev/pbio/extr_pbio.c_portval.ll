; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_portval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_portval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32, i64 }

@PBIO_PORTA = common dso_local global i32 0, align 4
@PBIO_PORTB = common dso_local global i32 0, align 4
@PBIO_PORTC = common dso_local global i32 0, align 4
@PBIOPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pbiopl\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pbio_softc*, i8*)* @portval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portval(i32 %0, %struct.pbio_softc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pbio_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pbio_softc* %1, %struct.pbio_softc** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %9

9:                                                ; preds = %101, %3
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %38 [
    i32 0, label %11
    i32 1, label %17
    i32 2, label %23
    i32 3, label %31
  ]

11:                                               ; preds = %9
  %12 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %13 = load i32, i32* @PBIO_PORTA, align 4
  %14 = call i32 @pbinb(%struct.pbio_softc* %12, i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  br label %40

17:                                               ; preds = %9
  %18 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %19 = load i32, i32* @PBIO_PORTB, align 4
  %20 = call i32 @pbinb(%struct.pbio_softc* %18, i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %7, align 8
  store i8 %21, i8* %22, align 1
  br label %40

23:                                               ; preds = %9
  %24 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %25 = load i32, i32* @PBIO_PORTC, align 4
  %26 = call i32 @pbinb(%struct.pbio_softc* %24, i32 %25)
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 15
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %7, align 8
  store i8 %29, i8* %30, align 1
  br label %40

31:                                               ; preds = %9
  %32 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %33 = load i32, i32* @PBIO_PORTC, align 4
  %34 = call i32 @pbinb(%struct.pbio_softc* %32, i32 %33)
  %35 = and i32 %34, 15
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  br label %40

38:                                               ; preds = %9
  %39 = load i8*, i8** %7, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %31, %23, %17, %11
  %41 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %42 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %55 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8, i8* %60, align 8
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %53, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %68 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8 %66, i8* %73, align 8
  store i32 0, i32* %4, align 4
  br label %102

74:                                               ; preds = %50
  %75 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %76 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = ptrtoint i64* %81 to i32
  %83 = load i32, i32* @PBIOPRI, align 4
  %84 = load %struct.pbio_softc*, %struct.pbio_softc** %6, align 8
  %85 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @max(i32 1, i32 %91)
  %93 = call i32 @tsleep(i32 %82, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @EINTR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %74
  %98 = load i32, i32* @EINTR, align 4
  store i32 %98, i32* %4, align 4
  br label %102

99:                                               ; preds = %74
  br label %101

100:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %99
  br label %9

102:                                              ; preds = %100, %97, %64
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @pbinb(%struct.pbio_softc*, i32) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
