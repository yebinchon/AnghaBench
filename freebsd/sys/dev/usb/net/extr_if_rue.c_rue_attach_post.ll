; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.rue_softc = type { i32 }

@RUE_EEPROM_IDR0 = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @rue_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.rue_softc*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %4 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %5 = call %struct.rue_softc* @uether_getsc(%struct.usb_ether* %4)
  store %struct.rue_softc* %5, %struct.rue_softc** %3, align 8
  %6 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %7 = call i32 @rue_reset(%struct.rue_softc* %6)
  %8 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %9 = load i32, i32* @RUE_EEPROM_IDR0, align 4
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = call i32 @rue_read_mem(%struct.rue_softc* %8, i32 %9, i32 %12, i32 %13)
  ret void
}

declare dso_local %struct.rue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @rue_reset(%struct.rue_softc*) #1

declare dso_local i32 @rue_read_mem(%struct.rue_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
