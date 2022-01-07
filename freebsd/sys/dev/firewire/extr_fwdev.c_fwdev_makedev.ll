; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_makedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_makedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_softc = type { %struct.cdev*, %struct.TYPE_2__* }
%struct.cdev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@firewire_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fw%d.%d\00", align 1
@FWMEM_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fwmem%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fw%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fwmem%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwdev_makedev(%struct.firewire_softc* %0) #0 {
  %2 = alloca %struct.firewire_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  store %struct.firewire_softc* %0, %struct.firewire_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.firewire_softc*, %struct.firewire_softc** %2, align 8
  %7 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @MAKEMINOR(i32 0, i32 %12, i32 0)
  %14 = load i32, i32* @UID_ROOT, align 4
  %15 = load i32, i32* @GID_OPERATOR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @make_dev(i32* @firewire_cdevsw, i32 %13, i32 %14, i32 %15, i32 432, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16, i32 0)
  %18 = bitcast i8* %17 to %struct.cdev*
  %19 = load %struct.firewire_softc*, %struct.firewire_softc** %2, align 8
  %20 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %19, i32 0, i32 0
  store %struct.cdev* %18, %struct.cdev** %20, align 8
  %21 = load i32, i32* @FWMEM_FLAG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @MAKEMINOR(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* @UID_ROOT, align 4
  %25 = load i32, i32* @GID_OPERATOR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @make_dev(i32* @firewire_cdevsw, i32 %23, i32 %24, i32 %25, i32 432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 0)
  %28 = bitcast i8* %27 to %struct.cdev*
  store %struct.cdev* %28, %struct.cdev** %4, align 8
  %29 = load %struct.firewire_softc*, %struct.firewire_softc** %2, align 8
  %30 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %29, i32 0, i32 0
  %31 = load %struct.cdev*, %struct.cdev** %30, align 8
  %32 = load %struct.cdev*, %struct.cdev** %4, align 8
  %33 = call i32 @dev_depends(%struct.cdev* %31, %struct.cdev* %32)
  %34 = load %struct.firewire_softc*, %struct.firewire_softc** %2, align 8
  %35 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %34, i32 0, i32 0
  %36 = load %struct.cdev*, %struct.cdev** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @make_dev_alias(%struct.cdev* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.cdev*, %struct.cdev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @make_dev_alias(%struct.cdev* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @make_dev(i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @MAKEMINOR(i32, i32, i32) #1

declare dso_local i32 @dev_depends(%struct.cdev*, %struct.cdev*) #1

declare dso_local i32 @make_dev_alias(%struct.cdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
