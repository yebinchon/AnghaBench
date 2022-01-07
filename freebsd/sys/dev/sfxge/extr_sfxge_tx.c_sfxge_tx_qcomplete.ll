; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i32, i32, i32, i32, i64, i32, %struct.sfxge_tx_mapping* }
%struct.sfxge_tx_mapping = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.sfxge_evq = type { i32 }

@TX_BUF_UNMAP = common dso_local global i32 0, align 4
@TX_BUF_MBUF = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_tx_qcomplete(%struct.sfxge_txq* %0, %struct.sfxge_evq* %1) #0 {
  %3 = alloca %struct.sfxge_txq*, align 8
  %4 = alloca %struct.sfxge_evq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_tx_mapping*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %3, align 8
  store %struct.sfxge_evq* %1, %struct.sfxge_evq** %4, align 8
  %10 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %11 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %10)
  %12 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %76, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %25 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %22, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %29 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %28, i32 0, i32 7
  %30 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %30, i64 %32
  store %struct.sfxge_tx_mapping* %33, %struct.sfxge_tx_mapping** %6, align 8
  %34 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %35 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TX_BUF_UNMAP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %21
  %41 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %42 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %45 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bus_dmamap_unload(i32 %43, i32 %46)
  %48 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %49 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TX_BUF_MBUF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %56 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  store %struct.mbuf* %58, %struct.mbuf** %8, align 8
  br label %59

59:                                               ; preds = %62, %54
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = call %struct.mbuf* @m_free(%struct.mbuf* %60)
  store %struct.mbuf* %61, %struct.mbuf** %8, align 8
  br label %62

62:                                               ; preds = %59
  %63 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %64 = icmp ne %struct.mbuf* %63, null
  br i1 %64, label %59, label %65

65:                                               ; preds = %62
  br label %73

66:                                               ; preds = %40
  %67 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %68 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @M_SFXGE, align 4
  %72 = call i32 @free(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %65
  %74 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %6, align 8
  %75 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %21
  br label %15

77:                                               ; preds = %15
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %80 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = call i32 (...) @mb()
  %82 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %83 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %77
  %87 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %88 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %91 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub i32 %89, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %96 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @SFXGE_TXQ_UNBLOCK_LEVEL(i32 %97)
  %99 = icmp ule i32 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.sfxge_txq*, %struct.sfxge_txq** %3, align 8
  %102 = call i32 @sfxge_tx_qunblock(%struct.sfxge_txq* %101)
  br label %103

103:                                              ; preds = %100, %86
  br label %104

104:                                              ; preds = %103, %77
  ret void
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @SFXGE_TXQ_UNBLOCK_LEVEL(i32) #1

declare dso_local i32 @sfxge_tx_qunblock(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
