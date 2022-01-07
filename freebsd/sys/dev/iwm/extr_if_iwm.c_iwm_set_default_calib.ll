; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_default_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_default_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwm_tlv_calib_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IWM_UCODE_TYPE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Wrong ucode_type %u for default calibration.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i8*)* @iwm_set_default_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_set_default_calib(%struct.iwm_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwm_tlv_calib_data*, align 8
  %7 = alloca i64, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.iwm_tlv_calib_data*
  store %struct.iwm_tlv_calib_data* %9, %struct.iwm_tlv_calib_data** %6, align 8
  %10 = load %struct.iwm_tlv_calib_data*, %struct.iwm_tlv_calib_data** %6, align 8
  %11 = getelementptr inbounds %struct.iwm_tlv_calib_data, %struct.iwm_tlv_calib_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32toh(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @IWM_UCODE_TYPE_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %19 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.iwm_tlv_calib_data*, %struct.iwm_tlv_calib_data** %6, align 8
  %26 = getelementptr inbounds %struct.iwm_tlv_calib_data, %struct.iwm_tlv_calib_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %28, i32* %34, align 4
  %35 = load %struct.iwm_tlv_calib_data*, %struct.iwm_tlv_calib_data** %6, align 8
  %36 = getelementptr inbounds %struct.iwm_tlv_calib_data, %struct.iwm_tlv_calib_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
