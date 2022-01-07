; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_postattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_postattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.TYPE_2__, i32*, i32, i32, %struct.r12a_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.r12a_softc = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.rtwn_usb_softc = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@R12A_CHIP_C_CUT = common dso_local global i32 0, align 4
@r12a_c_cut_rf_read = common dso_local global i32 0, align 4
@r12a_rf_read = common dso_local global i32 0, align 4
@R92C_BOARD_TYPE_MINICARD = common dso_local global i64 0, align 8
@R92C_BOARD_TYPE_SOLO = common dso_local global i64 0, align 8
@R92C_BOARD_TYPE_COMBO = common dso_local global i64 0, align 8
@r88e_set_led = common dso_local global i32 0, align 4
@r12a_set_led = common dso_local global i32 0, align 4
@rtl8812au_mac_no_ext_pa_lna = common dso_local global i32* null, align 8
@r12a_ioctl_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r12au_postattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12au_postattach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_usb_softc*, align 8
  %4 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %5)
  store %struct.rtwn_usb_softc* %6, %struct.rtwn_usb_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 4
  %9 = load %struct.r12a_softc*, %struct.r12a_softc** %8, align 8
  store %struct.r12a_softc* %9, %struct.r12a_softc** %4, align 8
  %10 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @usbd_get_speed(i32 %12)
  %14 = load i64, i64* @USB_SPEED_SUPER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %18 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %17, i32 0, i32 0
  store i32 7, i32* %18, align 8
  %19 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %20 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %19, i32 0, i32 1
  store i32 26, i32* %20, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %23 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %25 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %24, i32 0, i32 1
  store i32 16, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %28 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @R12A_CHIP_C_CUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @r12a_c_cut_rf_read, align 4
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @r12a_rf_read, align 4
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %43 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @R92C_BOARD_TYPE_MINICARD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %49 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @R92C_BOARD_TYPE_SOLO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %55 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @R92C_BOARD_TYPE_COMBO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %47, %41
  %60 = load i32, i32* @r88e_set_led, align 4
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %62 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @r12a_set_led, align 4
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %66 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %69 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %74 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %79 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %84 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** @rtl8812au_mac_no_ext_pa_lna, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %91 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %87, %82, %77, %72, %67
  %93 = load i32, i32* @r12a_ioctl_net, align 4
  %94 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %95 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  ret void
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i64 @usbd_get_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
