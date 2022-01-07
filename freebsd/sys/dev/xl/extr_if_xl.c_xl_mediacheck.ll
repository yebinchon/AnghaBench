; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_mediacheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_mediacheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i64, i64, i32 }

@XL_MEDIAOPT_MASK = common dso_local global i32 0, align 4
@XL_MEDIAOPT_VCO = common dso_local global i32 0, align 4
@XL_XCVR_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"bogus xcvr value in EEPROM (%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"choosing new default based on card type\0A\00", align 1
@XL_TYPE_905B = common dso_local global i64 0, align 8
@XL_MEDIAOPT_10FL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"WARNING: no media options bits set in the media options register!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"this could be a manufacturing defect in your adapter or system\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"attempting to guess media type; you should probably consult your vendor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_mediacheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_mediacheck(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %3 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %4 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @XL_MEDIAOPT_MASK, align 4
  %7 = load i32, i32* @XL_MEDIAOPT_VCO, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = and i32 %5, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XL_XCVR_AUTO, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %62

19:                                               ; preds = %12
  %20 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %19
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XL_TYPE_905B, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %40 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %62

46:                                               ; preds = %38, %32
  %47 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %48 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %52 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %56 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %46, %31
  %60 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %61 = call i32 @xl_choose_xcvr(%struct.xl_softc* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %45, %18
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @xl_choose_xcvr(%struct.xl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
