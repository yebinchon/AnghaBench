; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_write_ulptx_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_write_ulptx_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { %struct.sglist* }
%struct.sglist = type { i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i32, i32 }
%struct.ulptx_sgl = type { %struct.TYPE_2__*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8**, i8** }

@ULP_TX_SC_DSGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_softc*, i8*, i32)* @ccr_write_ulptx_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_write_ulptx_sgl(%struct.ccr_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ccr_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ulptx_sgl*, align 8
  %8 = alloca %struct.sglist*, align 8
  %9 = alloca %struct.sglist_seg*, align 8
  %10 = alloca i32, align 4
  store %struct.ccr_softc* %0, %struct.ccr_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %11, i32 0, i32 0
  %13 = load %struct.sglist*, %struct.sglist** %12, align 8
  store %struct.sglist* %13, %struct.sglist** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.sglist*, %struct.sglist** %8, align 8
  %16 = getelementptr inbounds %struct.sglist, %struct.sglist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.sglist*, %struct.sglist** %8, align 8
  %22 = getelementptr inbounds %struct.sglist, %struct.sglist* %21, i32 0, i32 1
  %23 = load %struct.sglist_seg*, %struct.sglist_seg** %22, align 8
  %24 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %23, i64 0
  store %struct.sglist_seg* %24, %struct.sglist_seg** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %26, %struct.ulptx_sgl** %7, align 8
  %27 = load i32, i32* @ULP_TX_SC_DSGL, align 4
  %28 = call i32 @V_ULPTX_CMD(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @V_ULPTX_NSGE(i32 %29)
  %31 = or i32 %28, %30
  %32 = call i8* @htobe32(i32 %31)
  %33 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %7, align 8
  %34 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %36 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @htobe32(i32 %37)
  %39 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %7, align 8
  %40 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %42 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @htobe64(i32 %43)
  %45 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %7, align 8
  %46 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %48 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %47, i32 1
  store %struct.sglist_seg* %48, %struct.sglist_seg** %9, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %93, %3
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.sglist*, %struct.sglist** %8, align 8
  %52 = getelementptr inbounds %struct.sglist, %struct.sglist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %49
  %57 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %58 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @htobe32(i32 %59)
  %61 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %7, align 8
  %62 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* %60, i8** %73, align 8
  %74 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %75 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @htobe64(i32 %76)
  %78 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %7, align 8
  %79 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  store i8* %77, i8** %90, align 8
  %91 = load %struct.sglist_seg*, %struct.sglist_seg** %9, align 8
  %92 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %91, i32 1
  store %struct.sglist_seg* %92, %struct.sglist_seg** %9, align 8
  br label %93

93:                                               ; preds = %56
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %49

96:                                               ; preds = %49
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_ULPTX_CMD(i32) #1

declare dso_local i32 @V_ULPTX_NSGE(i32) #1

declare dso_local i8* @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
