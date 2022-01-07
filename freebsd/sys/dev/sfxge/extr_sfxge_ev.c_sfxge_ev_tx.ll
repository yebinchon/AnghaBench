; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i64, %struct.sfxge_txq** }
%struct.sfxge_txq = type { i64, i64, i32, i32, i32, i64, %struct.sfxge_txq* }

@.str = private unnamed_addr constant [12 x i8] c"txq == NULL\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"evq->index != txq->evq_index\00", align 1
@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@SFXGE_TX_BATCH = common dso_local global i64 0, align 8
@SFXGE_EV_BATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @sfxge_ev_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_tx(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfxge_evq*, align 8
  %8 = alloca %struct.sfxge_txq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %12, %struct.sfxge_evq** %7, align 8
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %14 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %13)
  %15 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.sfxge_txq* @sfxge_get_txq_by_label(%struct.sfxge_evq* %15, i32 %16)
  store %struct.sfxge_txq* %17, %struct.sfxge_txq** %8, align 8
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %19 = icmp ne %struct.sfxge_txq* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %23 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %26 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %32 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_false(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %116

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %48 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %51 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %58, %59
  br label %69

61:                                               ; preds = %40
  %62 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %63 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %66, %67
  br label %69

69:                                               ; preds = %61, %57
  %70 = phi i32 [ %60, %57 ], [ %68, %61 ]
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %73 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %77 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %81 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %80, i32 0, i32 6
  %82 = load %struct.sfxge_txq*, %struct.sfxge_txq** %81, align 8
  %83 = icmp eq %struct.sfxge_txq* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %69
  %85 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %86 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %85, i32 0, i32 2
  %87 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %86, align 8
  %88 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %89 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %88, i32 0, i32 6
  %90 = icmp ne %struct.sfxge_txq** %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %93 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %94 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %93, i32 0, i32 2
  %95 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %94, align 8
  store %struct.sfxge_txq* %92, %struct.sfxge_txq** %95, align 8
  %96 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %97 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %96, i32 0, i32 6
  %98 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %99 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %98, i32 0, i32 2
  store %struct.sfxge_txq** %97, %struct.sfxge_txq*** %99, align 8
  br label %100

100:                                              ; preds = %91, %84, %69
  %101 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %102 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %106 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i64, i64* @SFXGE_TX_BATCH, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %113 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %114 = call i32 @sfxge_tx_qcomplete(%struct.sfxge_txq* %112, %struct.sfxge_evq* %113)
  br label %115

115:                                              ; preds = %111, %100
  br label %116

116:                                              ; preds = %115, %39
  %117 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %118 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SFXGE_EV_BATCH, align 8
  %121 = icmp sge i64 %119, %120
  %122 = zext i1 %121 to i32
  ret i32 %122
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local %struct.sfxge_txq* @sfxge_get_txq_by_label(%struct.sfxge_evq*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @sfxge_tx_qcomplete(%struct.sfxge_txq*, %struct.sfxge_evq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
