; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_update_ep_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_update_ep_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.pci_xhci_dev_emu = type { i32 }
%struct.pci_xhci_dev_ep = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xhci_endp_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"xhci update ep-ring stream %d, addr %lx\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"xhci update ep-ring, addr %lx\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_ep*, %struct.xhci_endp_ctx*, i64, i32, i32)* @pci_xhci_update_ep_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_update_ep_ring(%struct.pci_xhci_softc* %0, %struct.pci_xhci_dev_emu* %1, %struct.pci_xhci_dev_ep* %2, %struct.xhci_endp_ctx* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pci_xhci_softc*, align 8
  %9 = alloca %struct.pci_xhci_dev_emu*, align 8
  %10 = alloca %struct.pci_xhci_dev_ep*, align 8
  %11 = alloca %struct.xhci_endp_ctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %8, align 8
  store %struct.pci_xhci_dev_emu* %1, %struct.pci_xhci_dev_emu** %9, align 8
  store %struct.pci_xhci_dev_ep* %2, %struct.pci_xhci_dev_ep** %10, align 8
  store %struct.xhci_endp_ctx* %3, %struct.xhci_endp_ctx** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %16 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, -16
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = or i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %30 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, -16
  %38 = trunc i64 %37 to i32
  %39 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %40 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %45, 1
  %47 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %48 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %54 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -2
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 1
  %59 = or i32 %56, %58
  %60 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %61 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %64 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @DPRINTF(i8* %71)
  br label %112

73:                                               ; preds = %7
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = and i64 %75, -16
  %77 = trunc i64 %76 to i32
  %78 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %79 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %14, align 4
  %81 = and i32 %80, 1
  %82 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %83 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, -16
  %88 = trunc i64 %87 to i32
  %89 = call i32 @XHCI_GADDR(%struct.pci_xhci_softc* %84, i32 %88)
  %90 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %91 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, -16
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = or i64 %94, %97
  %99 = trunc i64 %98 to i32
  %100 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %101 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %103 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %106 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @DPRINTF(i8* %110)
  br label %112

112:                                              ; preds = %73, %20
  ret void
}

declare dso_local i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
