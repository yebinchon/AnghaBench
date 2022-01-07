; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_q_prep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_q_prep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.bxe_fastpath = type { i32, i32 }
%struct.ecore_queue_init_params = type { i64, i32**, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ECORE_Q_FLG_HC = common dso_local global i32 0, align 4
@ECORE_Q_FLG_HC_EN = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@HC_INDEX_ETH_FIRST_TX_CQ_CONS = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fp %d setting queue params max cos to %d\0A\00", align 1
@FIRST_TX_COS_INDEX = common dso_local global i64 0, align 8
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.ecore_queue_init_params*)* @bxe_pf_q_prep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_pf_q_prep_init(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, %struct.ecore_queue_init_params* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.bxe_fastpath*, align 8
  %6 = alloca %struct.ecore_queue_init_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %5, align 8
  store %struct.ecore_queue_init_params* %2, %struct.ecore_queue_init_params** %6, align 8
  %10 = load i32, i32* @ECORE_Q_FLG_HC, align 4
  %11 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = call i32 @bxe_set_bit(i32 %10, i32* %13)
  %15 = load i32, i32* @ECORE_Q_FLG_HC, align 4
  %16 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = call i32 @bxe_set_bit(i32 %15, i32* %18)
  %20 = load i32, i32* @ECORE_Q_FLG_HC_EN, align 4
  %21 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = call i32 @bxe_set_bit(i32 %20, i32* %23)
  %25 = load i32, i32* @ECORE_Q_FLG_HC_EN, align 4
  %26 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = call i32 @bxe_set_bit(i32 %25, i32* %28)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 1000000, %37
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 0, %39 ]
  %42 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 1000000, %52
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %49
  %56 = phi i32 [ %53, %49 ], [ 0, %54 ]
  %57 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %61 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %62, i32* %68, align 8
  %69 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %70 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @HC_INDEX_ETH_FIRST_TX_CQ_CONS, align 4
  %74 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %75 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %78 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %83 = load i32, i32* @DBG_LOAD, align 4
  %84 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %85 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %88 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @BLOGD(%struct.bxe_softc* %82, i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %89)
  %91 = load i64, i64* @FIRST_TX_COS_INDEX, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %128, %55
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %92
  %99 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %100 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %8, align 4
  %104 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %105 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sub nsw i32 %106, %109
  store i32 %110, i32* %9, align 4
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %112 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %111, i32 0, i32 3
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  store i32* %122, i32** %127, align 8
  br label %128

128:                                              ; preds = %98
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %7, align 8
  br label %92

131:                                              ; preds = %92
  ret void
}

declare dso_local i32 @bxe_set_bit(i32, i32*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
