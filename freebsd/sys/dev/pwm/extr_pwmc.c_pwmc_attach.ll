; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwmc_softc = type { i32, i32, i32 }
%struct.make_dev_args = type { i32, i32, %struct.pwmc_softc*, i32, i32, i32* }

@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@pwm_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pwm/pwmc%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to make PWM device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pwmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwmc_softc*, align 8
  %5 = alloca %struct.make_dev_args, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pwmc_softc* @device_get_softc(i32 %7)
  store %struct.pwmc_softc* %8, %struct.pwmc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %14 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %13, i32 0, i32 0
  %15 = call i32 @pwmbus_get_channel(i32 %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = call i32 @make_dev_args_init(%struct.make_dev_args* %5)
  %21 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %22 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 5
  store i32* @pwm_cdevsw, i32** %25, align 8
  %26 = load i32, i32* @UID_ROOT, align 4
  %27 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @GID_OPERATOR, align 4
  %29 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 1
  store i32 432, i32* %30, align 4
  %31 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 2
  store %struct.pwmc_softc* %31, %struct.pwmc_softc** %32, align 8
  %33 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %34 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_get_parent(i32 %35)
  %37 = call i32 @device_get_unit(i32 %36)
  %38 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @make_dev_s(%struct.make_dev_args* %5, i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %19
  %49 = load %struct.pwmc_softc*, %struct.pwmc_softc** %4, align 8
  %50 = call i32 @pwmc_setup_label(%struct.pwmc_softc* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %44, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pwmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @pwmbus_get_channel(i32, i32*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pwmc_setup_label(%struct.pwmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
