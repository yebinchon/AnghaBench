; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.kue_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"could not load firmware\0A\00", align 1
@KUE_CTL_READ = common dso_local global i32 0, align 4
@KUE_CMD_GET_ETHER_DESCRIPTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @kue_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kue_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.kue_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.kue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.kue_softc* %6, %struct.kue_softc** %3, align 8
  %7 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %8 = call i32 @kue_load_fw(%struct.kue_softc* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %13 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %19 = call i32 @kue_reset(%struct.kue_softc* %18)
  %20 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %21 = load i32, i32* @KUE_CTL_READ, align 4
  %22 = load i32, i32* @KUE_CMD_GET_ETHER_DESCRIPTOR, align 4
  %23 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %24 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %23, i32 0, i32 0
  %25 = call i32 @kue_ctl(%struct.kue_softc* %20, i32 %21, i32 %22, i32 0, %struct.TYPE_4__* %24, i32 4)
  %26 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %27 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %30 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %32, i32 4)
  ret void
}

declare dso_local %struct.kue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @kue_load_fw(%struct.kue_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @kue_reset(%struct.kue_softc*) #1

declare dso_local i32 @kue_ctl(%struct.kue_softc*, i32, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
