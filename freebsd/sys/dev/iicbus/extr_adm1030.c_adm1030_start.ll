; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1030_softc = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.pmac_fan*, i32)*, i32*, i64, i32, i64 }
%struct.pmac_fan = type opaque
%struct.pmac_fan.0 = type opaque

@.str = private unnamed_addr constant [13 x i8] c"MDD Case fan\00", align 1
@adm1030_set = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adm1030_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1030_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adm1030_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.adm1030_softc* @device_get_softc(i32 %7)
  store %struct.adm1030_softc* %8, %struct.adm1030_softc** %3, align 8
  %9 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %10 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %13 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @adm1030_write_byte(i32 %11, i32 %14, i32 1, i32 1)
  %16 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %17 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %20 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @adm1030_write_byte(i32 %18, i32 %21, i32 0, i32 149)
  %23 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %24 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %27 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adm1030_write_byte(i32 %25, i32 %28, i32 35, i32 145)
  %30 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %31 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %34 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 15, i32* %35, align 8
  %36 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %37 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %40 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %45 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %48 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load i64, i64* @adm1030_set, align 8
  %51 = inttoptr i64 %50 to i32 (%struct.pmac_fan.0*, i32)*
  %52 = bitcast i32 (%struct.pmac_fan.0*, i32)* %51 to i32 (%struct.pmac_fan*, i32)*
  %53 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %54 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 (%struct.pmac_fan*, i32)* %52, i32 (%struct.pmac_fan*, i32)** %55, align 8
  %56 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %57 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %56, i32 0, i32 1
  %58 = call i32 @config_intrhook_disestablish(i32* %57)
  %59 = load %struct.adm1030_softc*, %struct.adm1030_softc** %3, align 8
  %60 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %59, i32 0, i32 0
  %61 = call i32 @pmac_thermal_fan_register(%struct.TYPE_2__* %60)
  ret void
}

declare dso_local %struct.adm1030_softc* @device_get_softc(i32) #1

declare dso_local i32 @adm1030_write_byte(i32, i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @pmac_thermal_fan_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
