; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_init_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_init_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_dev_emu = type { i32, %struct.pci_xhci_dev_ep*, %struct.xhci_dev_ctx* }
%struct.pci_xhci_dev_ep = type { i32, i32*, i32, i8*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"init_ep %d with pstreams %d\0D\0A\00", align 1
@XHCI_EPCTX_2_TR_DQ_PTR_MASK = common dso_local global i32 0, align 4
@XHCI_SCTX_0_TR_DQ_PTR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"init_ep %d with no pstreams\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"init_ep tr DCS %x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_dev_emu*, i32)* @pci_xhci_init_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_init_ep(%struct.pci_xhci_dev_emu* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_xhci_dev_emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_dev_ctx*, align 8
  %6 = alloca %struct.pci_xhci_dev_ep*, align 8
  %7 = alloca %struct.xhci_endp_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_xhci_dev_emu* %0, %struct.pci_xhci_dev_emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %3, align 8
  %11 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %10, i32 0, i32 2
  %12 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %11, align 8
  store %struct.xhci_dev_ctx* %12, %struct.xhci_dev_ctx** %5, align 8
  %13 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %13, i32 0, i32 0
  %15 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %15, i64 %17
  store %struct.xhci_endp_ctx* %18, %struct.xhci_endp_ctx** %7, align 8
  %19 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %3, align 8
  %20 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %19, i32 0, i32 1
  %21 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %21, i64 %23
  store %struct.pci_xhci_dev_ep* %24, %struct.pci_xhci_dev_ep** %6, align 8
  %25 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPRINTF(i8* %35)
  %37 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %38 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %3, align 8
  %44 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XHCI_EPCTX_2_TR_DQ_PTR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i8* @XHCI_GADDR(i32 %45, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_3__*
  %53 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %54 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %53, i32 0, i32 4
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.TYPE_4__* @calloc(i32 %55, i32 4)
  %57 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %58 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %57, i32 0, i32 5
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %97, %31
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %65 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @XHCI_SCTX_0_TR_DQ_PTR_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %75 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  %81 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %82 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %81, i32 0, i32 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @XHCI_SCTX_0_DCS_GET(i32 %88)
  %90 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %91 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %90, i32 0, i32 5
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %63
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %59

100:                                              ; preds = %59
  br label %134

101:                                              ; preds = %2
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @DPRINTF(i8* %104)
  %106 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XHCI_EPCTX_2_TR_DQ_PTR_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %112 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %114 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @XHCI_EPCTX_2_DCS_GET(i32 %115)
  %117 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %118 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %3, align 8
  %120 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %123 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @XHCI_GADDR(i32 %121, i32 %124)
  %126 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %127 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %129 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @DPRINTF(i8* %132)
  br label %134

134:                                              ; preds = %101, %100
  %135 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %136 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = call i32* @malloc(i32 4)
  %141 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %142 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %6, align 8
  %144 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @USB_DATA_XFER_INIT(i32* %145)
  br label %147

147:                                              ; preds = %139, %134
  ret void
}

declare dso_local i32 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @XHCI_GADDR(i32, i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @XHCI_SCTX_0_DCS_GET(i32) #1

declare dso_local i32 @XHCI_EPCTX_2_DCS_GET(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @USB_DATA_XFER_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
