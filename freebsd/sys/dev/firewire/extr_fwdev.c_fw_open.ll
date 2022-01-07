; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, %struct.fw_drv1* }
%struct.fw_drv1 = type { i32, i32, i32 }
%struct.firewire_softc = type { i32 }

@firewire_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SI_NAMED = common dso_local global i32 0, align 4
@firewire_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fw%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32*)* @fw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_open(%struct.cdev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_drv1*, align 8
  %13 = alloca %struct.firewire_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = call i32 @DEV2UNIT(%struct.cdev* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cdev*, %struct.cdev** %6, align 8
  %19 = call i64 @DEV_FWMEM(%struct.cdev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @fwmem_open(%struct.cdev* %22, i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %98

27:                                               ; preds = %4
  %28 = load i32, i32* @firewire_devclass, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.firewire_softc* @devclass_get_softc(i32 %28, i32 %29)
  store %struct.firewire_softc* %30, %struct.firewire_softc** %13, align 8
  %31 = load %struct.firewire_softc*, %struct.firewire_softc** %13, align 8
  %32 = icmp eq %struct.firewire_softc* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %27
  %36 = load %struct.firewire_softc*, %struct.firewire_softc** %13, align 8
  %37 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FW_GLOCK(i32 %38)
  %40 = load %struct.cdev*, %struct.cdev** %6, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 1
  %42 = load %struct.fw_drv1*, %struct.fw_drv1** %41, align 8
  %43 = icmp ne %struct.fw_drv1* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.firewire_softc*, %struct.firewire_softc** %13, align 8
  %46 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FW_GUNLOCK(i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %5, align 4
  br label %98

50:                                               ; preds = %35
  %51 = load %struct.cdev*, %struct.cdev** %6, align 8
  %52 = getelementptr inbounds %struct.cdev, %struct.cdev* %51, i32 0, i32 1
  store %struct.fw_drv1* inttoptr (i64 -1 to %struct.fw_drv1*), %struct.fw_drv1** %52, align 8
  %53 = load %struct.firewire_softc*, %struct.firewire_softc** %13, align 8
  %54 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @FW_GUNLOCK(i32 %55)
  %57 = load i32, i32* @M_FW, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.fw_drv1* @malloc(i32 12, i32 %57, i32 %60)
  %62 = load %struct.cdev*, %struct.cdev** %6, align 8
  %63 = getelementptr inbounds %struct.cdev, %struct.cdev* %62, i32 0, i32 1
  store %struct.fw_drv1* %61, %struct.fw_drv1** %63, align 8
  %64 = load %struct.cdev*, %struct.cdev** %6, align 8
  %65 = getelementptr inbounds %struct.cdev, %struct.cdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SI_NAMED, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %50
  %71 = load %struct.cdev*, %struct.cdev** %6, align 8
  %72 = call i32 @DEV2UNIT(%struct.cdev* %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.cdev*, %struct.cdev** %6, align 8
  %74 = call i32 @DEV2SUB(%struct.cdev* %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.cdev*, %struct.cdev** %6, align 8
  %76 = call i32 @dev2unit(%struct.cdev* %75)
  %77 = load i32, i32* @UID_ROOT, align 4
  %78 = load i32, i32* @GID_OPERATOR, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @make_dev(i32* @firewire_cdevsw, i32 %76, i32 %77, i32 %78, i32 432, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %70, %50
  %83 = load %struct.cdev*, %struct.cdev** %6, align 8
  %84 = getelementptr inbounds %struct.cdev, %struct.cdev* %83, i32 0, i32 1
  %85 = load %struct.fw_drv1*, %struct.fw_drv1** %84, align 8
  store %struct.fw_drv1* %85, %struct.fw_drv1** %12, align 8
  %86 = load %struct.firewire_softc*, %struct.firewire_softc** %13, align 8
  %87 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fw_drv1*, %struct.fw_drv1** %12, align 8
  %90 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fw_drv1*, %struct.fw_drv1** %12, align 8
  %92 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %91, i32 0, i32 1
  %93 = call i32 @STAILQ_INIT(i32* %92)
  %94 = load %struct.fw_drv1*, %struct.fw_drv1** %12, align 8
  %95 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %94, i32 0, i32 0
  %96 = call i32 @STAILQ_INIT(i32* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %82, %44, %33, %21
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @DEV2UNIT(%struct.cdev*) #1

declare dso_local i64 @DEV_FWMEM(%struct.cdev*) #1

declare dso_local i32 @fwmem_open(%struct.cdev*, i32, i32, i32*) #1

declare dso_local %struct.firewire_softc* @devclass_get_softc(i32, i32) #1

declare dso_local i32 @FW_GLOCK(i32) #1

declare dso_local i32 @FW_GUNLOCK(i32) #1

declare dso_local %struct.fw_drv1* @malloc(i32, i32, i32) #1

declare dso_local i32 @DEV2SUB(%struct.cdev*) #1

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
