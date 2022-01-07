; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ipmi_softc* }
%struct.ipmi_softc = type { i32 }
%struct.thread = type { i32 }
%struct.ipmi_device = type { %struct.ipmi_softc*, i32, i32, i32 }

@on = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_IPMI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ipmi_dtor = common dso_local global i32 0, align 4
@IPMI_BMC_SLAVE_ADDR = common dso_local global i32 0, align 4
@IPMI_BMC_SMS_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ipmi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ipmi_device*, align 8
  %11 = alloca %struct.ipmi_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load i32, i32* @on, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOENT, align 4
  store i32 %16, i32* %5, align 4
  br label %57

17:                                               ; preds = %4
  %18 = load i32, i32* @M_IPMI, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.ipmi_device* @malloc(i32 24, i32 %18, i32 %21)
  store %struct.ipmi_device* %22, %struct.ipmi_device** %10, align 8
  %23 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %24 = load i32, i32* @ipmi_dtor, align 4
  %25 = call i32 @devfs_set_cdevpriv(%struct.ipmi_device* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %30 = load i32, i32* @M_IPMI, align 4
  %31 = call i32 @free(%struct.ipmi_device* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %17
  %34 = load %struct.cdev*, %struct.cdev** %6, align 8
  %35 = getelementptr inbounds %struct.cdev, %struct.cdev* %34, i32 0, i32 0
  %36 = load %struct.ipmi_softc*, %struct.ipmi_softc** %35, align 8
  store %struct.ipmi_softc* %36, %struct.ipmi_softc** %11, align 8
  %37 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %38 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %37, i32 0, i32 3
  %39 = call i32 @TAILQ_INIT(i32* %38)
  %40 = load i32, i32* @IPMI_BMC_SLAVE_ADDR, align 4
  %41 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %42 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IPMI_BMC_SMS_LUN, align 4
  %44 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %45 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ipmi_softc*, %struct.ipmi_softc** %11, align 8
  %47 = load %struct.ipmi_device*, %struct.ipmi_device** %10, align 8
  %48 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %47, i32 0, i32 0
  store %struct.ipmi_softc* %46, %struct.ipmi_softc** %48, align 8
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %11, align 8
  %50 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %49)
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %11, align 8
  %52 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ipmi_softc*, %struct.ipmi_softc** %11, align 8
  %56 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %33, %28, %15
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.ipmi_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.ipmi_device*, i32) #1

declare dso_local i32 @free(%struct.ipmi_device*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
