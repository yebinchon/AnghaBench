; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@usb_no_suspend_wait = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_bus*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.usb_bus* @device_get_softc(i32 %5)
  store %struct.usb_bus* %6, %struct.usb_bus** %4, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %9 = icmp eq %struct.usb_bus* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %13 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %12)
  %14 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %15 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %14)
  %16 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %17 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %21 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @usb_proc_msignal(i32 %15, i32* %19, i32* %23)
  %25 = load i64, i64* @usb_no_suspend_wait, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %11
  %28 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %29 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %28)
  %30 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %31 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %35 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @usb_proc_mwait(i32 %29, i32* %33, i32* %37)
  br label %39

39:                                               ; preds = %27, %11
  %40 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %41 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.usb_bus* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @usb_proc_msignal(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus*) #1

declare dso_local i32 @usb_proc_mwait(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
