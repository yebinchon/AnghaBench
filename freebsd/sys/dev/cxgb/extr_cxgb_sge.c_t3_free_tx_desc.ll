; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sge_qset = type { i32, %struct.sge_txq* }
%struct.sge_txq = type { i32, i32, i32, %struct.tx_sw_desc*, i32, i32 }
%struct.tx_sw_desc = type { i32, i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TX_SW_DESC_MAPPED = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_free_tx_desc(%struct.sge_qset* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_sw_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_txq*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %12 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %11, i32 0, i32 1
  %13 = load %struct.sge_txq*, %struct.sge_txq** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i64 %15
  store %struct.sge_txq* %16, %struct.sge_txq** %10, align 8
  %17 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %25 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %24, i32 0, i32 3
  %26 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %26, i64 %28
  store %struct.tx_sw_desc* %29, %struct.tx_sw_desc** %7, align 8
  %30 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %30, i32 0, i32 0
  %32 = load i32, i32* @MA_OWNED, align 4
  %33 = call i32 @mtx_assert(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %113, %3
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %34
  %39 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %40 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %39, i32 0, i32 3
  %41 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %41, i64 %46
  %48 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @prefetch(i32* %49)
  %51 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %52 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %51, i32 0, i32 3
  %53 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 2
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %53, i64 %58
  %60 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @prefetch(i32* %61)
  %63 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %64 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %38
  %68 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %69 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TX_SW_DESC_MAPPED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %76 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %79 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dmamap_unload(i32 %77, i32 %80)
  %82 = load i32, i32* @TX_SW_DESC_MAPPED, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %85 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %74, %67
  %89 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %90 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @m_freem_list(i32* %91)
  %93 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %94 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %100

95:                                               ; preds = %38
  %96 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %97 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %102 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %101, i32 1
  store %struct.tx_sw_desc* %102, %struct.tx_sw_desc** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %106 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  %110 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %111 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %110, i32 0, i32 3
  %112 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %111, align 8
  store %struct.tx_sw_desc* %112, %struct.tx_sw_desc** %7, align 8
  br label %113

113:                                              ; preds = %109, %100
  br label %34

114:                                              ; preds = %34
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %117 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
