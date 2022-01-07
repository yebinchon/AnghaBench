; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.wb_softc = type { i32 }

@SUPERIO_VENDOR_NUVOTON = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@SUPERIO_DEV_WDT = common dso_local global i64 0, align 8
@wb_devs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s (0x%02x/0x%02x) Watchdog Timer\00", align 1
@BUS_PROBE_SPECIFIC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"unrecognized chip: devid 0x%02x, revid 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.wb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @superio_vendor(i32 %9)
  %11 = load i64, i64* @SUPERIO_VENDOR_NUVOTON, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @superio_get_type(i32 %16)
  %18 = load i64, i64* @SUPERIO_DEV_WDT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %81

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.wb_softc* @device_get_softc(i32 %23)
  store %struct.wb_softc* %24, %struct.wb_softc** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @superio_devid(i32 %25)
  %27 = ashr i32 %26, 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @superio_revid(i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %68, %22
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wb_devs, align 8
  %33 = call i32 @nitems(%struct.TYPE_3__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wb_devs, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %35
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wb_devs, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wb_softc*, %struct.wb_softc** %5, align 8
  %52 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wb_devs, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snprintf(i8* %53, i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %65 = call i32 @device_set_desc_copy(i32 %63, i8* %64)
  %66 = load i32, i32* @BUS_PROBE_SPECIFIC, align 4
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %30

71:                                               ; preds = %30
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %44, %20, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @superio_vendor(i32) #1

declare dso_local i64 @superio_get_type(i32) #1

declare dso_local %struct.wb_softc* @device_get_softc(i32) #1

declare dso_local i32 @superio_devid(i32) #1

declare dso_local i32 @superio_revid(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
