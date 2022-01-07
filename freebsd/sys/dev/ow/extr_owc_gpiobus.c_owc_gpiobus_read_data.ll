; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_owc_gpiobus.c_owc_gpiobus_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_owc_gpiobus.c_owc_gpiobus_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_timing = type { i32, i32, i32, i32 }
%struct.owc_gpiobus_softc = type { i32 }

@SBT_1US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ow_timing*, i32*)* @owc_gpiobus_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owc_gpiobus_read_data(i32 %0, %struct.ow_timing* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ow_timing*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.owc_gpiobus_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ow_timing* %1, %struct.ow_timing** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.owc_gpiobus_softc* @device_get_softc(i32 %13)
  store %struct.owc_gpiobus_softc* %14, %struct.owc_gpiobus_softc** %8, align 8
  %15 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %16 = call i32 @GETBUS(%struct.owc_gpiobus_softc* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %3
  %22 = call i32 (...) @critical_enter()
  %23 = call i32 (...) @sbinuptime()
  store i32 %23, i32* %11, align 4
  %24 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %25 = call i32 @OUTPIN(%struct.owc_gpiobus_softc* %24)
  %26 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %27 = call i32 @LOW(%struct.owc_gpiobus_softc* %26)
  %28 = load %struct.ow_timing*, %struct.ow_timing** %6, align 8
  %29 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DELAY(i32 %30)
  %32 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %33 = call i32 @INPIN(%struct.owc_gpiobus_softc* %32)
  br label %34

34:                                               ; preds = %52, %21
  %35 = call i32 (...) @sbinuptime()
  store i32 %35, i32* %12, align 4
  %36 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %37 = call i32 @GETPIN(%struct.owc_gpiobus_softc* %36, i32* %10)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load %struct.ow_timing*, %struct.ow_timing** %6, align 8
  %43 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* @SBT_1US, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i1 [ false, %38 ], [ %51, %49 ]
  br i1 %53, label %34, label %54

54:                                               ; preds = %52
  %55 = call i32 (...) @critical_exit()
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.ow_timing*, %struct.ow_timing** %6, align 8
  %60 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SBT_1US, align 4
  %63 = mul nsw i32 %61, %62
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32*, i32** %7, align 8
  store i32 1, i32* %66, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %72, %69
  %71 = call i32 (...) @sbinuptime()
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.ow_timing*, %struct.ow_timing** %6, align 8
  %77 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ow_timing*, %struct.ow_timing** %6, align 8
  %80 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* @SBT_1US, align 4
  %84 = mul nsw i32 %82, %83
  %85 = icmp slt i32 %75, %84
  br i1 %85, label %70, label %86

86:                                               ; preds = %72
  %87 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %8, align 8
  %88 = call i32 @RELBUS(%struct.owc_gpiobus_softc* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.owc_gpiobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @GETBUS(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @OUTPIN(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @LOW(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @INPIN(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @GETPIN(%struct.owc_gpiobus_softc*, i32*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @RELBUS(%struct.owc_gpiobus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
