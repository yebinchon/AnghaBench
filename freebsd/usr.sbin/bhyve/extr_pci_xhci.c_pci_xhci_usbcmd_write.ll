; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_usbcmd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_usbcmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_xhci_dev_emu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_xhci_portregs = type { i32 }
%struct.xhci_trb = type { i32 }

@XHCI_CMD_RS = common dso_local global i32 0, align 4
@XHCI_STS_HCH = common dso_local global i32 0, align 4
@XHCI_STS_PCD = common dso_local global i32 0, align 4
@XHCI_MAX_DEVS = common dso_local global i32 0, align 4
@XHCI_PS_CSC = common dso_local global i32 0, align 4
@XHCI_PS_CCS = common dso_local global i32 0, align 4
@XHCI_PS_PLS_MASK = common dso_local global i32 0, align 4
@UPS_PORT_LS_POLL = common dso_local global i32 0, align 4
@UPS_PORT_LS_U0 = common dso_local global i32 0, align 4
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@XHCI_TRB_EVENT_PORT_STS_CHANGE = common dso_local global i32 0, align 4
@XHCI_CMD_HCRST = common dso_local global i32 0, align 4
@XHCI_CMD_CSS = common dso_local global i32 0, align 4
@XHCI_CMD_CRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32)* @pci_xhci_usbcmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_usbcmd_write(%struct.pci_xhci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_xhci_dev_emu*, align 8
  %8 = alloca %struct.pci_xhci_portregs*, align 8
  %9 = alloca %struct.xhci_trb, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @XHCI_CMD_RS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %108

14:                                               ; preds = %2
  %15 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XHCI_CMD_RS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @XHCI_CMD_RS, align 4
  %24 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %25 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @XHCI_STS_HCH, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @XHCI_STS_PCD, align 4
  %37 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.pci_xhci_dev_emu* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc* %50, i32 %51)
  store %struct.pci_xhci_dev_emu* %52, %struct.pci_xhci_dev_emu** %7, align 8
  %53 = icmp eq %struct.pci_xhci_dev_emu* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %103

55:                                               ; preds = %49
  %56 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc* %56, i32 %57)
  store %struct.pci_xhci_portregs* %58, %struct.pci_xhci_portregs** %8, align 8
  %59 = load i32, i32* @XHCI_PS_CSC, align 4
  %60 = load i32, i32* @XHCI_PS_CCS, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %63 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %69 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %73 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %85

78:                                               ; preds = %55
  %79 = load i32, i32* @UPS_PORT_LS_POLL, align 4
  %80 = call i32 @XHCI_PS_PLS_SET(i32 %79)
  %81 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %82 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %55
  %86 = load i32, i32* @UPS_PORT_LS_U0, align 4
  %87 = call i32 @XHCI_PS_PLS_SET(i32 %86)
  %88 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %8, align 8
  %89 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %95 = load i32, i32* @XHCI_TRB_EVENT_PORT_STS_CHANGE, align 4
  %96 = call i32 @pci_xhci_set_evtrb(%struct.xhci_trb* %9, i32 %93, i64 %94, i32 %95)
  %97 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %98 = call i64 @pci_xhci_insert_event(%struct.pci_xhci_softc* %97, %struct.xhci_trb* %9, i32 0)
  %99 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %54
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %45

106:                                              ; preds = %101, %45
  br label %107

107:                                              ; preds = %106, %14
  br label %129

108:                                              ; preds = %2
  %109 = load i32, i32* @XHCI_CMD_RS, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %112 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @XHCI_STS_HCH, align 4
  %117 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %118 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @XHCI_STS_PCD, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %125 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %108, %107
  %130 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %131 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XHCI_CMD_RS, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @XHCI_CMD_HCRST, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %129
  %143 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %144 = call i32 @pci_xhci_reset(%struct.pci_xhci_softc* %143)
  %145 = load i32, i32* @XHCI_CMD_HCRST, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %142, %129
  %150 = load i32, i32* @XHCI_CMD_CSS, align 4
  %151 = load i32, i32* @XHCI_CMD_CRS, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %4, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %160 = call i32 @pci_xhci_assert_interrupt(%struct.pci_xhci_softc* %159)
  br label %161

161:                                              ; preds = %158, %149
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_DEVINST_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_PS_PLS_SET(i32) #1

declare dso_local i32 @pci_xhci_set_evtrb(%struct.xhci_trb*, i32, i64, i32) #1

declare dso_local i64 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

declare dso_local i32 @pci_xhci_reset(%struct.pci_xhci_softc*) #1

declare dso_local i32 @pci_xhci_assert_interrupt(%struct.pci_xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
