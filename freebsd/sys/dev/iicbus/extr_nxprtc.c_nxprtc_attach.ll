; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i8*, i32 }

@PCF8523_R_SECOND = common dso_local global i32 0, align 4
@PCF8523_R_TMR_A_COUNT = common dso_local global i32 0, align 4
@PCF8563_R_SECOND = common dso_local global i32 0, align 4
@PCF8563_R_TMR_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"impossible: cannot determine chip type\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@nxprtc_start = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nxprtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxprtc_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nxprtc_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.nxprtc_softc* @device_get_softc(i8* %5)
  store %struct.nxprtc_softc* %6, %struct.nxprtc_softc** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @device_get_parent(i8* %10)
  %12 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @nxprtc_get_chiptype(i8* %14)
  %16 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %39 [
    i32 133, label %21
    i32 130, label %21
    i32 131, label %21
    i32 129, label %21
    i32 132, label %30
    i32 128, label %30
  ]

21:                                               ; preds = %1, %1, %1, %1
  %22 = load i32, i32* @PCF8523_R_SECOND, align 4
  %23 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PCF8523_R_TMR_A_COUNT, align 4
  %26 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %43

30:                                               ; preds = %1, %1
  %31 = load i32, i32* @PCF8563_R_SECOND, align 4
  %32 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @PCF8563_R_TMR_COUNT, align 4
  %35 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %43

39:                                               ; preds = %1
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @device_printf(i8* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %30, %21
  %44 = load i32, i32* @nxprtc_start, align 4
  %45 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %53 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %52, i32 0, i32 2
  %54 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %39
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.nxprtc_softc* @device_get_softc(i8*) #1

declare dso_local i32 @device_get_parent(i8*) #1

declare dso_local i32 @nxprtc_get_chiptype(i8*) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
