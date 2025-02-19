; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_release_ext_rsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_release_ext_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no active PMU request state\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid PMU state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @siba_release_ext_rsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_release_ext_rsrc(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siba_softc*, align 8
  %9 = alloca %struct.siba_devinfo*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @device_get_parent(i64 %10)
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.siba_softc* @device_get_softc(i64 %17)
  store %struct.siba_softc* %18, %struct.siba_softc** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.siba_devinfo* @device_get_ivars(i64 %19)
  store %struct.siba_devinfo* %20, %struct.siba_devinfo** %9, align 8
  %21 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %22 = call i32 @SIBA_LOCK(%struct.siba_softc* %21)
  %23 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %24 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 129, label %26
    i32 131, label %31
    i32 128, label %38
    i32 130, label %38
  ]

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %29 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %16
  %32 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %33 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bhnd_generic_release_ext_rsrc(i64 %34, i64 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %16, %16
  %39 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %40 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %39)
  %41 = load i32, i32* @ENODEV, align 4
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %16
  %43 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %44 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %38, %31, %26, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @bhnd_generic_release_ext_rsrc(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
