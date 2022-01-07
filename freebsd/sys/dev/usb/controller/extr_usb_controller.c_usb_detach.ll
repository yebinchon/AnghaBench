; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_detach(i32 %0) #0 {
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
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %13 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %12, i32 0, i32 2
  %14 = call i32 @usb_callout_drain(i32* %13)
  %15 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %16 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %15)
  %17 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %18 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %17)
  %19 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %20 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %24 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = call i32 @usb_proc_msignal(i32 %18, i32* %22, i32* %26)
  %28 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %29 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %28)
  %30 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %31 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %35 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @usb_proc_mwait(i32 %29, i32* %33, i32* %37)
  %39 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %40 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %11, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.usb_bus* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

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
