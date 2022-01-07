; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_sge_prod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_sge_prod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i64, i64, i32, i32* }
%union.eth_sgl_or_raw_data = type { i32* }

@DBG_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fp[%02d] fp_cqe->sgl[%d] = %d\0A\00", align 1
@BIT_VEC64_ELEM_SHIFT = common dso_local global i64 0, align 8
@BIT_VEC64_ELEM_ONE_MASK = common dso_local global i32 0, align 4
@BIT_VEC64_ELEM_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"fp[%02d] fp->last_max_sge=%d fp->rx_sge_prod=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, i64, %union.eth_sgl_or_raw_data*)* @bxe_update_sge_prod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_update_sge_prod(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, i64 %2, %union.eth_sgl_or_raw_data* %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.bxe_fastpath*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.eth_sgl_or_raw_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %6, align 8
  store i64 %2, i64* %7, align 8
  store %union.eth_sgl_or_raw_data* %3, %union.eth_sgl_or_raw_data** %8, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %138

17:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %24 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %union.eth_sgl_or_raw_data*, %union.eth_sgl_or_raw_data** %8, align 8
  %27 = bitcast %union.eth_sgl_or_raw_data* %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16toh(i32 %31)
  %33 = call i64 @RX_SGE(i64 %32)
  %34 = call i32 @BIT_VEC64_CLEAR_BIT(i32* %25, i64 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %13, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %40 = load i32, i32* @DBG_LRO, align 4
  %41 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %42 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 1
  %46 = load %union.eth_sgl_or_raw_data*, %union.eth_sgl_or_raw_data** %8, align 8
  %47 = bitcast %union.eth_sgl_or_raw_data* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16toh(i32 %52)
  %54 = call i32 @BLOGD(%struct.bxe_softc* %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %45, i64 %53)
  %55 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %56 = load %union.eth_sgl_or_raw_data*, %union.eth_sgl_or_raw_data** %8, align 8
  %57 = bitcast %union.eth_sgl_or_raw_data* %56 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le16toh(i32 %62)
  %64 = call i32 @bxe_update_last_max_sge(%struct.bxe_fastpath* %55, i64 %63)
  %65 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %66 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @RX_SGE(i64 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @BIT_VEC64_ELEM_SHIFT, align 8
  %71 = lshr i64 %69, %70
  store i64 %71, i64* %10, align 8
  %72 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %73 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @RX_SGE(i64 %74)
  %76 = load i64, i64* @BIT_VEC64_ELEM_SHIFT, align 8
  %77 = lshr i64 %75, %76
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 1
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %38
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %82, %38
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %111, %85
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %93 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @__predict_true(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %114

101:                                              ; preds = %91
  %102 = load i32, i32* @BIT_VEC64_ELEM_ONE_MASK, align 4
  %103 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %104 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load i64, i64* @BIT_VEC64_ELEM_SZ, align 8
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @RX_SGE_NEXT_MASK_ELEM(i64 %112)
  store i64 %113, i64* %13, align 8
  br label %87

114:                                              ; preds = %100, %87
  %115 = load i64, i64* %12, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %120 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %124 = call i32 @bxe_clear_sge_mask_next_elems(%struct.bxe_fastpath* %123)
  br label %125

125:                                              ; preds = %117, %114
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %127 = load i32, i32* @DBG_LRO, align 4
  %128 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %129 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %132 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %135 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @BLOGD(%struct.bxe_softc* %126, i32 %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %130, i64 %133, i64 %136)
  br label %138

138:                                              ; preds = %125, %16
  ret void
}

declare dso_local i32 @BIT_VEC64_CLEAR_BIT(i32*, i64) #1

declare dso_local i64 @RX_SGE(i64) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @bxe_update_last_max_sge(%struct.bxe_fastpath*, i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @RX_SGE_NEXT_MASK_ELEM(i64) #1

declare dso_local i32 @bxe_clear_sge_mask_next_elems(%struct.bxe_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
