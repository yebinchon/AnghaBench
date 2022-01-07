; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dev_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dev_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hci = type { i32, %struct.pci_xhci_dev_emu* }
%struct.pci_xhci_dev_emu = type { %struct.xhci_dev_ctx*, %struct.pci_xhci_softc* }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32 }
%struct.pci_xhci_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.xhci_trb = type { i32 }
%struct.pci_xhci_portregs = type { i32 }

@XHCI_CMD_RS = common dso_local global i32 0, align 4
@XHCI_PS_PLS_MASK = common dso_local global i32 0, align 4
@UPS_PORT_LS_RESUME = common dso_local global i32 0, align 4
@XHCI_PS_PLC = common dso_local global i32 0, align 4
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@XHCI_TRB_EVENT_PORT_STS_CHANGE = common dso_local global i32 0, align 4
@XHCI_ST_EPCTX_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"xhci device interrupt on disabled endpoint %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"xhci device interrupt on endpoint %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hci*, i32)* @pci_xhci_dev_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_dev_intr(%struct.usb_hci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_xhci_dev_emu*, align 8
  %7 = alloca %struct.xhci_dev_ctx*, align 8
  %8 = alloca %struct.xhci_trb, align 4
  %9 = alloca %struct.pci_xhci_softc*, align 8
  %10 = alloca %struct.pci_xhci_portregs*, align 8
  %11 = alloca %struct.xhci_endp_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_hci* %0, %struct.usb_hci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 128
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -129
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = mul nsw i32 %19, 2
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %14, align 4
  %30 = icmp sle i32 %29, 31
  br label %31

31:                                               ; preds = %28, %2
  %32 = phi i1 [ false, %2 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.usb_hci*, %struct.usb_hci** %4, align 8
  %36 = getelementptr inbounds %struct.usb_hci, %struct.usb_hci* %35, i32 0, i32 1
  %37 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %36, align 8
  store %struct.pci_xhci_dev_emu* %37, %struct.pci_xhci_dev_emu** %6, align 8
  %38 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %6, align 8
  %39 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %38, i32 0, i32 1
  %40 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %39, align 8
  store %struct.pci_xhci_softc* %40, %struct.pci_xhci_softc** %9, align 8
  %41 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %9, align 8
  %42 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %31
  %47 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %9, align 8
  %48 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XHCI_CMD_RS, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %6, align 8
  %56 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %55, i32 0, i32 0
  %57 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %56, align 8
  %58 = icmp eq %struct.xhci_dev_ctx* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %46, %31
  store i32 0, i32* %3, align 4
  br label %144

60:                                               ; preds = %54
  %61 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %9, align 8
  %62 = load %struct.usb_hci*, %struct.usb_hci** %4, align 8
  %63 = getelementptr inbounds %struct.usb_hci, %struct.usb_hci* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc* %61, i32 %64)
  store %struct.pci_xhci_portregs* %65, %struct.pci_xhci_portregs** %10, align 8
  %66 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %10, align 8
  %67 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @XHCI_PS_PLS_GET(i32 %68)
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %110

71:                                               ; preds = %60
  %72 = load i32, i32* @XHCI_PS_PLS_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %10, align 8
  %75 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @UPS_PORT_LS_RESUME, align 4
  %79 = call i32 @XHCI_PS_PLS_SET(i32 %78)
  %80 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %10, align 8
  %81 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %10, align 8
  %85 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @XHCI_PS_PLC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %144

91:                                               ; preds = %71
  %92 = load i32, i32* @XHCI_PS_PLC, align 4
  %93 = load %struct.pci_xhci_portregs*, %struct.pci_xhci_portregs** %10, align 8
  %94 = getelementptr inbounds %struct.pci_xhci_portregs, %struct.pci_xhci_portregs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.usb_hci*, %struct.usb_hci** %4, align 8
  %98 = getelementptr inbounds %struct.usb_hci, %struct.usb_hci* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %101 = load i32, i32* @XHCI_TRB_EVENT_PORT_STS_CHANGE, align 4
  %102 = call i32 @pci_xhci_set_evtrb(%struct.xhci_trb* %8, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %9, align 8
  %104 = call i32 @pci_xhci_insert_event(%struct.pci_xhci_softc* %103, %struct.xhci_trb* %8, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %142

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %60
  %111 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %6, align 8
  %112 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %111, i32 0, i32 0
  %113 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %112, align 8
  store %struct.xhci_dev_ctx* %113, %struct.xhci_dev_ctx** %7, align 8
  %114 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %114, i32 0, i32 0
  %116 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %116, i64 %118
  store %struct.xhci_endp_ctx* %119, %struct.xhci_endp_ctx** %11, align 8
  %120 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %121 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 7
  %124 = load i32, i32* @XHCI_ST_EPCTX_DISABLED, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %110
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @DPRINTF(i8* %129)
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %110
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @DPRINTF(i8* %134)
  %136 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %9, align 8
  %137 = load %struct.usb_hci*, %struct.usb_hci** %4, align 8
  %138 = getelementptr inbounds %struct.usb_hci, %struct.usb_hci* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @pci_xhci_device_doorbell(%struct.pci_xhci_softc* %136, i32 %139, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %131, %108
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %126, %90, %59
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pci_xhci_portregs* @XHCI_PORTREG_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_PS_PLS_GET(i32) #1

declare dso_local i32 @XHCI_PS_PLS_SET(i32) #1

declare dso_local i32 @pci_xhci_set_evtrb(%struct.xhci_trb*, i32, i32, i32) #1

declare dso_local i32 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pci_xhci_device_doorbell(%struct.pci_xhci_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
