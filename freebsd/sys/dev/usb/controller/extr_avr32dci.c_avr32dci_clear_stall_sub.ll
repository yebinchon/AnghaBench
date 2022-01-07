; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_clear_stall_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_clear_stall_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_hw_ep_profile = type { i32, i32 }

@UE_CONTROL = common dso_local global i64 0, align 8
@AVR32_EPTRST = common dso_local global i32 0, align 4
@AVR32_EPTSTA_FRCESTALL = common dso_local global i32 0, align 4
@AVR32_EPTSTA_TOGGLESQ = common dso_local global i32 0, align 4
@UE_BULK = common dso_local global i64 0, align 8
@AVR32_EPTCFG_TYPE_BULK = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i64 0, align 8
@AVR32_EPTCFG_TYPE_INTR = common dso_local global i32 0, align 4
@AVR32_EPTCFG_TYPE_ISOC = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@AVR32_EPTCFG_EPDIR_IN = common dso_local global i32 0, align 4
@AVR32_EPTCFG_EPT_MAPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Chip rejected configuration\0A\00", align 1
@AVR32_EPTCTL_EPT_ENABL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.avr32dci_softc*, i64, i64, i64)* @avr32dci_clear_stall_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_clear_stall_sub(%struct.avr32dci_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.avr32dci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_hw_ep_profile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @UE_CONTROL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %129

17:                                               ; preds = %4
  %18 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %19 = load i32, i32* @AVR32_EPTRST, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @AVR32_EPTRST_MASK(i64 %20)
  %22 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %18, i32 %19, i32 %21)
  %23 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @AVR32_EPTSETSTA(i64 %24)
  %26 = load i32, i32* @AVR32_EPTSTA_FRCESTALL, align 4
  %27 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %23, i32 %25, i32 %26)
  %28 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @AVR32_EPTCLRSTA(i64 %29)
  %31 = load i32, i32* @AVR32_EPTSTA_TOGGLESQ, align 4
  %32 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %28, i32 %30, i32 %31)
  %33 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @AVR32_EPTCLRSTA(i64 %34)
  %36 = load i32, i32* @AVR32_EPTSTA_FRCESTALL, align 4
  %37 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %33, i32 %35, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @UE_BULK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %17
  %42 = load i32, i32* @AVR32_EPTCFG_TYPE_BULK, align 4
  store i32 %42, i32* %10, align 4
  br label %54

43:                                               ; preds = %17
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @UE_INTERRUPT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @AVR32_EPTCFG_TYPE_INTR, align 4
  store i32 %48, i32* %10, align 4
  br label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @AVR32_EPTCFG_TYPE_ISOC, align 4
  %51 = call i32 @AVR32_EPTCFG_NB_TRANS(i32 1)
  %52 = or i32 %50, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %47
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @UE_DIR_IN, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @AVR32_EPTCFG_EPDIR_IN, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @avr32dci_get_hw_ep_profile(i32* null, %struct.usb_hw_ep_profile** %9, i64 %64)
  %66 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %9, align 8
  %67 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %9, align 8
  %70 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  store i32 %72, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %77, %63
  %74 = load i32, i32* %11, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %73

80:                                               ; preds = %73
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @AVR32_EPTCFG_EPSIZE(i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i64, i64* %6, align 8
  %86 = icmp slt i64 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = call i32 @AVR32_EPTCFG_NBANK(i32 1)
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %103

91:                                               ; preds = %80
  %92 = load i64, i64* %6, align 8
  %93 = icmp slt i64 %92, 3
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = call i32 @AVR32_EPTCFG_NBANK(i32 2)
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %91
  %99 = call i32 @AVR32_EPTCFG_NBANK(i32 3)
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @AVR32_EPTCFG(i64 %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %104, i32 %106, i32 %107)
  %109 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @AVR32_EPTCFG(i64 %110)
  %112 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %109, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @AVR32_EPTCFG_EPT_MAPD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %103
  %118 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %119 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %129

123:                                              ; preds = %103
  %124 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @AVR32_EPTCTLENB(i64 %125)
  %127 = load i32, i32* @AVR32_EPTCTL_EPT_ENABL, align 4
  %128 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %124, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %16, %123, %117
  ret void
}

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTRST_MASK(i64) #1

declare dso_local i32 @AVR32_EPTSETSTA(i64) #1

declare dso_local i32 @AVR32_EPTCLRSTA(i64) #1

declare dso_local i32 @AVR32_EPTCFG_NB_TRANS(i32) #1

declare dso_local i32 @avr32dci_get_hw_ep_profile(i32*, %struct.usb_hw_ep_profile**, i64) #1

declare dso_local i32 @AVR32_EPTCFG_EPSIZE(i64) #1

declare dso_local i32 @AVR32_EPTCFG_NBANK(i32) #1

declare dso_local i32 @AVR32_EPTCFG(i64) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AVR32_EPTCTLENB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
