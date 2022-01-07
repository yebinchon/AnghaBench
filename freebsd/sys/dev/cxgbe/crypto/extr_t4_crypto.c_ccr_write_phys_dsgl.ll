; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_write_phys_dsgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_write_phys_dsgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { %struct.TYPE_6__*, %struct.sglist* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sglist = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.cpl_rx_phys_dsgl = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { i64, i8*, i32 }
%struct.phys_sge_pairs = type { i8**, i32* }

@CPL_RX_PHYS_DSGL = common dso_local global i32 0, align 4
@CPL_RX_PHYS_ADDR = common dso_local global i32 0, align 4
@DSGL_SGE_MAXLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_softc*, i8*, i32)* @ccr_write_phys_dsgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_write_phys_dsgl(%struct.ccr_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ccr_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sglist*, align 8
  %8 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %9 = alloca %struct.phys_sge_pairs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ccr_softc* %0, %struct.ccr_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %14, i32 0, i32 1
  %16 = load %struct.sglist*, %struct.sglist** %15, align 8
  store %struct.sglist* %16, %struct.sglist** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.cpl_rx_phys_dsgl*
  store %struct.cpl_rx_phys_dsgl* %18, %struct.cpl_rx_phys_dsgl** %8, align 8
  %19 = load i32, i32* @CPL_RX_PHYS_DSGL, align 4
  %20 = call i32 @V_CPL_RX_PHYS_DSGL_OPCODE(i32 %19)
  %21 = call i32 @V_CPL_RX_PHYS_DSGL_ISRDMA(i32 0)
  %22 = or i32 %20, %21
  %23 = call i8* @htobe32(i32 %22)
  %24 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %25 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = call i32 @V_CPL_RX_PHYS_DSGL_PCIRLXORDER(i32 0)
  %27 = call i32 @V_CPL_RX_PHYS_DSGL_PCINOSNOOP(i32 0)
  %28 = or i32 %26, %27
  %29 = call i32 @V_CPL_RX_PHYS_DSGL_PCITPHNTENB(i32 0)
  %30 = or i32 %28, %29
  %31 = call i32 @V_CPL_RX_PHYS_DSGL_DCAID(i32 0)
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @V_CPL_RX_PHYS_DSGL_NOOFSGENTR(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i8* @htobe32(i32 %35)
  %37 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %38 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @CPL_RX_PHYS_ADDR, align 4
  %40 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %41 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @htobe16(i64 %48)
  %50 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %51 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %54 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %57 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %56, i64 1
  %58 = bitcast %struct.cpl_rx_phys_dsgl* %57 to %struct.phys_sge_pairs*
  store %struct.phys_sge_pairs* %58, %struct.phys_sge_pairs** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %126, %3
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.sglist*, %struct.sglist** %7, align 8
  %62 = getelementptr inbounds %struct.sglist, %struct.sglist* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %59
  %66 = load %struct.sglist*, %struct.sglist** %7, align 8
  %67 = getelementptr inbounds %struct.sglist, %struct.sglist* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = load %struct.sglist*, %struct.sglist** %7, align 8
  %74 = getelementptr inbounds %struct.sglist, %struct.sglist* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %122, %65
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @htobe64(i64 %81)
  %83 = load %struct.phys_sge_pairs*, %struct.phys_sge_pairs** %9, align 8
  %84 = getelementptr inbounds %struct.phys_sge_pairs, %struct.phys_sge_pairs* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @DSGL_SGE_MAXLEN, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %80
  %92 = load i64, i64* @DSGL_SGE_MAXLEN, align 8
  %93 = call i8* @htobe16(i64 %92)
  %94 = load %struct.phys_sge_pairs*, %struct.phys_sge_pairs** %9, align 8
  %95 = getelementptr inbounds %struct.phys_sge_pairs, %struct.phys_sge_pairs* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8* %93, i8** %98, align 8
  %99 = load i64, i64* @DSGL_SGE_MAXLEN, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* @DSGL_SGE_MAXLEN, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %11, align 8
  br label %113

105:                                              ; preds = %80
  %106 = load i64, i64* %11, align 8
  %107 = call i8* @htobe16(i64 %106)
  %108 = load %struct.phys_sge_pairs*, %struct.phys_sge_pairs** %9, align 8
  %109 = getelementptr inbounds %struct.phys_sge_pairs, %struct.phys_sge_pairs* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  store i8* %107, i8** %112, align 8
  store i64 0, i64* %11, align 8
  br label %113

113:                                              ; preds = %105, %91
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp eq i64 %116, 8
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.phys_sge_pairs*, %struct.phys_sge_pairs** %9, align 8
  %120 = getelementptr inbounds %struct.phys_sge_pairs, %struct.phys_sge_pairs* %119, i32 1
  store %struct.phys_sge_pairs* %120, %struct.phys_sge_pairs** %9, align 8
  store i64 0, i64* %13, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %80, label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  br label %59

129:                                              ; preds = %59
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.phys_sge_pairs*, %struct.phys_sge_pairs** %9, align 8
  %132 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %133 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %132, i64 1
  %134 = bitcast %struct.cpl_rx_phys_dsgl* %133 to %struct.phys_sge_pairs*
  %135 = ptrtoint %struct.phys_sge_pairs* %131 to i64
  %136 = ptrtoint %struct.phys_sge_pairs* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 16
  %139 = mul nsw i64 8, %138
  %140 = add i64 %130, %139
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @MPASS(i32 %144)
  ret void
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_OPCODE(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_ISRDMA(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_PCIRLXORDER(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_PCINOSNOOP(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_PCITPHNTENB(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_DCAID(i32) #1

declare dso_local i32 @V_CPL_RX_PHYS_DSGL_NOOFSGENTR(i32) #1

declare dso_local i8* @htobe16(i64) #1

declare dso_local i32 @htobe64(i64) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
