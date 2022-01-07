; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"AR7240\00", align 1
@AR8X16_SWITCH_AR7240 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"AR9340\00", align 1
@AR8X16_SWITCH_AR9340 = common dso_local global i32 0, align 4
@AR8X16_REG_MASK_CTRL = common dso_local global i32 0, align 4
@AR8X16_MASK_CTRL_REV_MASK = common dso_local global i32 0, align 4
@AR8X16_MASK_CTRL_VER_MASK = common dso_local global i32 0, align 4
@AR8X16_MASK_CTRL_VER_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"AR8216\00", align 1
@AR8X16_SWITCH_AR8216 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"AR8226\00", align 1
@AR8X16_SWITCH_AR8226 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"AR8316\00", align 1
@AR8X16_SWITCH_AR8316 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"AR8327\00", align 1
@AR8X16_SWITCH_AR8327 = common dso_local global i32 0, align 4
@ARSWITCH_DBG_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"chipname=%s, id=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Atheros %s Ethernet Switch (ver %d rev %d)\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arswitch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.arswitch_softc* @device_get_softc(i32 %8)
  store %struct.arswitch_softc* %9, %struct.arswitch_softc** %4, align 8
  %10 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %11 = call i32 @bzero(%struct.arswitch_softc* %10, i32 24)
  %12 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %13 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ar7240_probe(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %18 = load i32, i32* @AR8X16_SWITCH_AR7240, align 4
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %20 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %22 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %75

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @ar9340_probe(i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %28 = load i32, i32* @AR8X16_SWITCH_AR9340, align 4
  %29 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %30 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %32 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %75

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @AR8X16_REG_MASK_CTRL, align 4
  %36 = call i32 @arswitch_readreg(i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AR8X16_MASK_CTRL_REV_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %41 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AR8X16_MASK_CTRL_VER_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @AR8X16_MASK_CTRL_VER_SHIFT, align 4
  %46 = icmp sgt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %49 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AR8X16_MASK_CTRL_VER_MASK, align 4
  %52 = load i32, i32* @AR8X16_MASK_CTRL_REV_MASK, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  switch i32 %54, label %73 [
    i32 257, label %55
    i32 513, label %59
    i32 4096, label %63
    i32 4097, label %63
    i32 4610, label %67
    i32 4612, label %67
  ]

55:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %56 = load i32, i32* @AR8X16_SWITCH_AR8216, align 4
  %57 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %58 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  br label %74

59:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %60 = load i32, i32* @AR8X16_SWITCH_AR8226, align 4
  %61 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %62 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %74

63:                                               ; preds = %33, %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %64 = load i32, i32* @AR8X16_SWITCH_AR8316, align 4
  %65 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %66 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  br label %74

67:                                               ; preds = %33, %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %68 = load i32, i32* @AR8X16_SWITCH_AR8327, align 4
  %69 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %70 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %72 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %71, i32 0, i32 4
  store i32 1, i32* %72, align 4
  br label %74

73:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %74

74:                                               ; preds = %73, %67, %63, %59, %55
  br label %75

75:                                               ; preds = %74, %27, %17
  %76 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %77 = load i32, i32* @ARSWITCH_DBG_ANY, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @DPRINTF(%struct.arswitch_softc* %76, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %78, i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %87 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %90 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @snprintf(i8* %84, i32 256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %85, i32 %88, i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %95 = call i32 @device_set_desc_copy(i32 %93, i8* %94)
  %96 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %75
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %83
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.arswitch_softc*, i32) #1

declare dso_local i64 @ar7240_probe(i32) #1

declare dso_local i64 @ar9340_probe(i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.arswitch_softc*, i32, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
