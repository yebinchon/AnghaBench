; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.mos_softc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"couldn't get MAC address\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"address: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @mos_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.mos_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.mos_softc* %6, %struct.mos_softc** %3, align 8
  %7 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mos_readmac(%struct.mos_softc* %7, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %18 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_sprintf(i32 %19)
  %21 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %23 = call i32 @mos_chip_init(%struct.mos_softc* %22)
  ret void
}

declare dso_local %struct.mos_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @mos_readmac(%struct.mos_softc*, i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*, ...) #1

declare dso_local i32 @ether_sprintf(i32) #1

declare dso_local i32 @mos_chip_init(%struct.mos_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
