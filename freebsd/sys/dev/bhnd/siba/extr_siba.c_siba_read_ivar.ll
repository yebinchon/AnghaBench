; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.bhnd_core_info }
%struct.bhnd_core_info = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"invalid PMU state: %d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @siba_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.siba_softc*, align 8
  %11 = alloca %struct.siba_devinfo*, align 8
  %12 = alloca %struct.bhnd_core_info*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.siba_softc* @device_get_softc(i32 %13)
  store %struct.siba_softc* %14, %struct.siba_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.siba_devinfo* @device_get_ivars(i32 %15)
  store %struct.siba_devinfo* %16, %struct.siba_devinfo** %11, align 8
  %17 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %18 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.bhnd_core_info* %19, %struct.bhnd_core_info** %12, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %91 [
    i32 133, label %21
    i32 138, label %26
    i32 135, label %31
    i32 137, label %36
    i32 132, label %40
    i32 136, label %47
    i32 140, label %52
    i32 139, label %57
    i32 134, label %62
  ]

21:                                               ; preds = %4
  %22 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %23 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %5, align 4
  br label %93

26:                                               ; preds = %4
  %27 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %28 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %9, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %5, align 4
  br label %93

31:                                               ; preds = %4
  %32 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %33 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %93

36:                                               ; preds = %4
  %37 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %38 = call i64 @bhnd_core_class(%struct.bhnd_core_info* %37)
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %93

40:                                               ; preds = %4
  %41 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %42 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @bhnd_vendor_name(i64 %43)
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %5, align 4
  br label %93

47:                                               ; preds = %4
  %48 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %49 = call i32 @bhnd_core_name(%struct.bhnd_core_info* %48)
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %93

52:                                               ; preds = %4
  %53 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %54 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %5, align 4
  br label %93

57:                                               ; preds = %4
  %58 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %12, align 8
  %59 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %93

62:                                               ; preds = %4
  %63 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %64 = call i32 @SIBA_LOCK(%struct.siba_softc* %63)
  %65 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %66 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %85 [
    i32 129, label %68
    i32 131, label %72
    i32 128, label %81
    i32 130, label %81
  ]

68:                                               ; preds = %62
  %69 = load i64*, i64** %9, align 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %71 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %70)
  store i32 0, i32* %5, align 4
  br label %93

72:                                               ; preds = %62
  %73 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %74 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  %79 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %80 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %79)
  store i32 0, i32* %5, align 4
  br label %93

81:                                               ; preds = %62, %62
  %82 = load i64*, i64** %9, align 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %84 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %83)
  store i32 0, i32* %5, align 4
  br label %93

85:                                               ; preds = %62
  %86 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %87 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %4
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %85, %81, %72, %68, %57, %52, %47, %40, %36, %31, %26, %21
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.siba_softc* @device_get_softc(i32) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @bhnd_core_class(%struct.bhnd_core_info*) #1

declare dso_local i32 @bhnd_vendor_name(i64) #1

declare dso_local i32 @bhnd_core_name(%struct.bhnd_core_info*) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
