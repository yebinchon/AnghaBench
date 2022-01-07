; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_reset_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_reset_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_trb = type { i32 }
%struct.pci_xhci_dev_emu = type { i32, %struct.TYPE_2__*, %struct.xhci_dev_ctx*, %struct.pci_xhci_dev_ep* }
%struct.TYPE_2__ = type { i64 (i32)* }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32, i32, i32, i32 }
%struct.pci_xhci_dev_ep = type { i32, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"pci_xhci: reset ep %u: slot %u\0D\0A\00", align 1
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@XHCI_TRB_TYPE_STOP_EP = common dso_local global i64 0, align 8
@XHCI_TRB_3_SUSP_EP_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pci_xhci: reset ep: invalid epid %u\0D\0A\00", align 1
@XHCI_TRB_ERROR_TRB = common dso_local global i64 0, align 8
@XHCI_ST_EPCTX_STOPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pci_xhci: reset ep[%u] %08x %08x %016lx %08x\0D\0A\00", align 1
@XHCI_TRB_TYPE_RESET_EP = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_ENDP_NOT_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_xhci_softc*, i64, %struct.xhci_trb*)* @pci_xhci_cmd_reset_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_xhci_cmd_reset_ep(%struct.pci_xhci_softc* %0, i64 %1, %struct.xhci_trb* %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.pci_xhci_dev_emu*, align 8
  %8 = alloca %struct.pci_xhci_dev_ep*, align 8
  %9 = alloca %struct.xhci_dev_ctx*, align 8
  %10 = alloca %struct.xhci_endp_ctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.xhci_trb* %2, %struct.xhci_trb** %6, align 8
  %14 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %15 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @XHCI_TRB_3_EP_GET(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %5, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DPRINTF(i8* %20)
  %22 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %24 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @XHCI_TRB_3_TYPE_GET(i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %27, i64 %28)
  store %struct.pci_xhci_dev_emu* %29, %struct.pci_xhci_dev_emu** %7, align 8
  %30 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %31 = icmp ne %struct.pci_xhci_dev_emu* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @XHCI_TRB_TYPE_STOP_EP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %39 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XHCI_TRB_3_SUSP_EP_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %37, %3
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %49, 31
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %12, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DPRINTF(i8* %53)
  %55 = load i64, i64* @XHCI_TRB_ERROR_TRB, align 8
  store i64 %55, i64* %11, align 8
  br label %148

56:                                               ; preds = %48
  %57 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %58 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %57, i32 0, i32 3
  %59 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %59, i64 %60
  store %struct.pci_xhci_dev_ep* %61, %struct.pci_xhci_dev_ep** %8, align 8
  %62 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %63 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %68 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @USB_DATA_XFER_RESET(i32* %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %73 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %72, i32 0, i32 2
  %74 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %73, align 8
  store %struct.xhci_dev_ctx* %74, %struct.xhci_dev_ctx** %9, align 8
  %75 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %76 = icmp ne %struct.xhci_dev_ctx* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %79, i32 0, i32 0
  %81 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %81, i64 %82
  store %struct.xhci_endp_ctx* %83, %struct.xhci_endp_ctx** %10, align 8
  %84 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, -8
  %88 = load i32, i32* @XHCI_ST_EPCTX_STOPPED, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %91 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %93 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %71
  %98 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %99 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %102 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  %105 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %97, %71
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %110 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %113 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %116 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %119 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @DPRINTF(i8* %122)
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @XHCI_TRB_TYPE_RESET_EP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %107
  %128 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %129 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64 (i32)*, i64 (i32)** %131, align 8
  %133 = icmp eq i64 (i32)* %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %127
  %135 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %136 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64 (i32)*, i64 (i32)** %138, align 8
  %140 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %141 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 %139(i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %134, %127
  %146 = load i64, i64* @XHCI_TRB_ERROR_ENDP_NOT_ON, align 8
  store i64 %146, i64* %11, align 8
  br label %148

147:                                              ; preds = %134, %107
  br label %148

148:                                              ; preds = %147, %145, %51
  %149 = load i64, i64* %11, align 8
  ret i64 %149
}

declare dso_local i64 @XHCI_TRB_3_EP_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @XHCI_TRB_3_TYPE_GET(i32) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @USB_DATA_XFER_RESET(i32*) #1

declare dso_local i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
