; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_get_dev_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_get_dev_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_dev_ctx = type { i32 }
%struct.pci_xhci_softc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"get_dev_ctx devctx_addr == 0\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"pci_xhci: get dev ctx, slot %u devctx addr %016lx\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.xhci_dev_ctx*, align 8
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_dev_ctx*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ule i64 %11, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.xhci_dev_ctx* null, %struct.xhci_dev_ctx** %3, align 8
  br label %53

40:                                               ; preds = %16
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DPRINTF(i8* %44)
  %46 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, -64
  %50 = trunc i64 %49 to i32
  %51 = call %struct.xhci_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc* %46, i32 %50)
  store %struct.xhci_dev_ctx* %51, %struct.xhci_dev_ctx** %7, align 8
  %52 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %7, align 8
  store %struct.xhci_dev_ctx* %52, %struct.xhci_dev_ctx** %3, align 8
  br label %53

53:                                               ; preds = %40, %38
  %54 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %3, align 8
  ret %struct.xhci_dev_ctx* %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xhci_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
