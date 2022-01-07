; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Using IIC_FAST mode with speed param=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Using IIC_FASTEST/UNKNOWN mode with speed param=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using clock param=%x\0A\00", align 1
@TWSI_CONTROL_TWSIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64*)* @twsi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twsi_reset(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.twsi_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.twsi_softc* @device_get_softc(i32 %11)
  store %struct.twsi_softc* %12, %struct.twsi_softc** %9, align 8
  %13 = load i64, i64* %6, align 8
  switch i64 %13, label %26 [
    i64 129, label %14
    i64 131, label %14
    i64 130, label %25
    i64 128, label %25
  ]

14:                                               ; preds = %4, %4
  %15 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %16 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @debugf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %36

25:                                               ; preds = %4, %4
  br label %26

26:                                               ; preds = %4, %25
  %27 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %28 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 131
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @debugf(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %26, %14
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @debugf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %41 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %44 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %45 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TWSI_WRITE(%struct.twsi_softc* %43, i32 %46, i32 0)
  %48 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %49 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %50 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @TWSI_WRITE(%struct.twsi_softc* %48, i32 %51, i32 %52)
  %54 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %55 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %56 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TWSI_CONTROL_TWSIEN, align 4
  %59 = call i32 @TWSI_WRITE(%struct.twsi_softc* %54, i32 %57, i32 %58)
  %60 = call i32 @DELAY(i32 1000)
  %61 = load %struct.twsi_softc*, %struct.twsi_softc** %9, align 8
  %62 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %61, i32 0, i32 0
  %63 = call i32 @mtx_unlock(i32* %62)
  ret i32 0
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @debugf(i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TWSI_WRITE(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
