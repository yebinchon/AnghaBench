; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_find_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_find_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_endp_ctx = type { i32, i32 }
%struct.xhci_stream_ctx = type { i32 }

@XHCI_TRB_ERROR_TRB = common dso_local global i64 0, align 8
@XHCI_STREAMS_MAX = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_INVALID_SID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"pci_xhci: find_stream; LSA bit not set\0D\0A\00", align 1
@XHCI_TRB_ERROR_STREAM_TYPE = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_xhci_softc*, %struct.xhci_endp_ctx*, i64, %struct.xhci_stream_ctx**)* @pci_xhci_find_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_xhci_find_stream(%struct.pci_xhci_softc* %0, %struct.xhci_endp_ctx* %1, i64 %2, %struct.xhci_stream_ctx** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_xhci_softc*, align 8
  %7 = alloca %struct.xhci_endp_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xhci_stream_ctx**, align 8
  %10 = alloca %struct.xhci_stream_ctx*, align 8
  %11 = alloca i64, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %6, align 8
  store %struct.xhci_endp_ctx* %1, %struct.xhci_endp_ctx** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.xhci_stream_ctx** %3, %struct.xhci_stream_ctx*** %9, align 8
  %12 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @XHCI_TRB_ERROR_TRB, align 8
  store i64 %19, i64* %5, align 8
  br label %63

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @XHCI_STREAMS_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @XHCI_TRB_ERROR_INVALID_SID, align 8
  store i64 %25, i64* %5, align 8
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @XHCI_EPCTX_0_LSA_GET(i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @XHCI_TRB_ERROR_INVALID_SID, align 8
  store i64 %34, i64* %5, align 8
  br label %63

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @XHCI_TRB_ERROR_STREAM_TYPE, align 8
  store i64 %40, i64* %5, align 8
  br label %63

41:                                               ; preds = %35
  %42 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %43 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -16
  %48 = trunc i64 %47 to i32
  %49 = call %struct.xhci_stream_ctx* @XHCI_GADDR(%struct.pci_xhci_softc* %42, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.xhci_stream_ctx, %struct.xhci_stream_ctx* %49, i64 %50
  store %struct.xhci_stream_ctx* %51, %struct.xhci_stream_ctx** %10, align 8
  %52 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.xhci_stream_ctx, %struct.xhci_stream_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @XHCI_SCTX_0_SCT_GET(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %41
  %58 = load i64, i64* @XHCI_TRB_ERROR_STREAM_TYPE, align 8
  store i64 %58, i64* %5, align 8
  br label %63

59:                                               ; preds = %41
  %60 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %10, align 8
  %61 = load %struct.xhci_stream_ctx**, %struct.xhci_stream_ctx*** %9, align 8
  store %struct.xhci_stream_ctx* %60, %struct.xhci_stream_ctx** %61, align 8
  %62 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %59, %57, %39, %32, %24, %18
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

declare dso_local i64 @XHCI_EPCTX_0_LSA_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xhci_stream_ctx* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_SCTX_0_SCT_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
