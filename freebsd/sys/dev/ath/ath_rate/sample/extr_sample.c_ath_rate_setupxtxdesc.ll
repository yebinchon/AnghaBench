; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_setupxtxdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_setupxtxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ath_node = type { i32 }
%struct.ath_desc = type { i32 }
%struct.sample_node = type { %struct.txschedule* }
%struct.txschedule = type { i64, i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_setupxtxdesc(%struct.ath_softc* %0, %struct.ath_node* %1, %struct.ath_desc* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_node*, align 8
  %8 = alloca %struct.ath_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sample_node*, align 8
  %12 = alloca %struct.txschedule*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_node* %1, %struct.ath_node** %7, align 8
  store %struct.ath_desc* %2, %struct.ath_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %20 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %21 = call %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node* %20)
  store %struct.sample_node* %21, %struct.sample_node** %11, align 8
  %22 = load %struct.sample_node*, %struct.sample_node** %11, align 8
  %23 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %22, i32 0, i32 0
  %24 = load %struct.txschedule*, %struct.txschedule** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %24, i64 %25
  store %struct.txschedule* %26, %struct.txschedule** %12, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %13, align 8
  %30 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %31 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  br label %51

50:                                               ; preds = %5
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i64 [ %49, %42 ], [ 0, %50 ]
  %53 = or i64 %39, %52
  store i64 %53, i64* %15, align 8
  %54 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %55 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %16, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  br label %75

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %66
  %76 = phi i64 [ %73, %66 ], [ 0, %74 ]
  %77 = or i64 %63, %76
  store i64 %77, i64* %17, align 8
  %78 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %79 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %18, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %75
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  br label %99

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %90
  %100 = phi i64 [ %97, %90 ], [ 0, %98 ]
  %101 = or i64 %87, %100
  store i64 %101, i64* %19, align 8
  %102 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %103 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %108 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %112 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %19, align 8
  %115 = load %struct.txschedule*, %struct.txschedule** %12, align 8
  %116 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ath_hal_setupxtxdesc(i32 %104, %struct.ath_desc* %105, i64 %106, i32 %109, i64 %110, i32 %113, i64 %114, i32 %117)
  ret void
}

declare dso_local %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node*) #1

declare dso_local i32 @ath_hal_setupxtxdesc(i32, %struct.ath_desc*, i64, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
