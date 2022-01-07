; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_attach_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_attach_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtwn_usb_write_1 = common dso_local global i32 0, align 4
@rtwn_usb_write_2 = common dso_local global i32 0, align 4
@rtwn_usb_write_4 = common dso_local global i32 0, align 4
@rtwn_usb_read_1 = common dso_local global i32 0, align 4
@rtwn_usb_read_2 = common dso_local global i32 0, align 4
@rtwn_usb_read_4 = common dso_local global i32 0, align 4
@rtwn_usb_delay = common dso_local global i32 0, align 4
@rtwn_usb_tx_start = common dso_local global i32 0, align 4
@rtwn_usb_start_xfers = common dso_local global i32 0, align 4
@rtwn_usb_reset_lists = common dso_local global i32 0, align 4
@rtwn_usb_abort_xfers = common dso_local global i32 0, align 4
@rtwn_usb_fw_write_block = common dso_local global i32 0, align 4
@rtwn_usb_get_qmap = common dso_local global i32 0, align 4
@rtwn_nop_softc = common dso_local global i32 0, align 4
@rtwn_usb_drop_incorrect_tx = common dso_local global i32 0, align 4
@rtwn_nop_softc_vap = common dso_local global i8* null, align 8
@rtwn_nop_softc_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_usb_attach_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_usb_attach_methods(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load i32, i32* @rtwn_usb_write_1, align 4
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 18
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @rtwn_usb_write_2, align 4
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 17
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @rtwn_usb_write_4, align 4
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 16
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @rtwn_usb_read_1, align 4
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @rtwn_usb_read_2, align 4
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %16, i32 0, i32 14
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @rtwn_usb_read_4, align 4
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @rtwn_usb_delay, align 4
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @rtwn_usb_tx_start, align 4
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @rtwn_usb_start_xfers, align 4
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %29 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @rtwn_usb_reset_lists, align 4
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @rtwn_usb_abort_xfers, align 4
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @rtwn_usb_fw_write_block, align 4
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @rtwn_usb_get_qmap, align 4
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @rtwn_nop_softc, align 4
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @rtwn_usb_drop_incorrect_tx, align 4
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %47 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @rtwn_nop_softc_vap, align 8
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @rtwn_nop_softc_vap, align 8
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @rtwn_nop_softc_int, align 4
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %58 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %57, i32 0, i32 0
  store i32 100, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
