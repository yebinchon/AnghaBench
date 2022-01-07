; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_getversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_getversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32, i32 }

@CS_MISC_INFO = common dso_local global i32 0, align 4
@CS_CODEC_ID_MASK = common dso_local global i32 0, align 4
@CS_VERSION_ID = common dso_local global i32 0, align 4
@CS_VERSION_NUMBER = common dso_local global i32 0, align 4
@CS_VERSION_CHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"<CS4231 Codec Id. %d>\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"<CS4231A Codec Id. %d>\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"<CS4232 Codec Id. %d>\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"<Unknown 0x%x Codec Id. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*)* @cs4231_getversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_getversion(%struct.cs4231_softc* %0) #0 {
  %2 = alloca %struct.cs4231_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %2, align 8
  %4 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %5 = load i32, i32* @CS_MISC_INFO, align 4
  %6 = call i32 @cs4231_read(%struct.cs4231_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CS_CODEC_ID_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %11 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %13 = load i32, i32* @CS_VERSION_ID, align 4
  %14 = call i32 @cs4231_read(%struct.cs4231_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @CS_VERSION_NUMBER, align 4
  %16 = load i32, i32* @CS_VERSION_CHIPID, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %22 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %48 [
    i32 128, label %24
    i32 160, label %32
    i32 130, label %40
  ]

24:                                               ; preds = %1
  %25 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %26 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %29 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %57

32:                                               ; preds = %1
  %33 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %34 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %37 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %57

40:                                               ; preds = %1
  %41 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %42 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %45 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %57

48:                                               ; preds = %1
  %49 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %50 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %54 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %40, %32, %24
  ret void
}

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
