; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bhnd_set_pmu_info() called with siba PMU state %d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid PMU state: %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @siba_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.siba_softc*, align 8
  %11 = alloca %struct.siba_devinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.siba_softc* @device_get_softc(i32 %12)
  store %struct.siba_softc* %13, %struct.siba_softc** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.siba_devinfo* @device_get_ivars(i32 %14)
  store %struct.siba_devinfo* %15, %struct.siba_devinfo** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %47 [
    i32 133, label %17
    i32 138, label %17
    i32 135, label %17
    i32 137, label %17
    i32 132, label %17
    i32 136, label %17
    i32 140, label %17
    i32 139, label %17
    i32 134, label %19
  ]

17:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %21 = call i32 @SIBA_LOCK(%struct.siba_softc* %20)
  %22 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %23 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 129, label %25
    i32 131, label %25
    i32 128, label %35
    i32 130, label %35
  ]

25:                                               ; preds = %19, %19
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %29 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %32 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %31, i32 0, i32 0
  store i32 131, i32* %32, align 8
  %33 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %34 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %33)
  store i32 0, i32* %5, align 4
  br label %49

35:                                               ; preds = %19, %19
  %36 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %37 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %19
  %42 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %43 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %4
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %41, %35, %25, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.siba_softc* @device_get_softc(i32) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
