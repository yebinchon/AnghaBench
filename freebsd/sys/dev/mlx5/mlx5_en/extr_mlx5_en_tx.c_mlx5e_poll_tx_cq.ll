; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_poll_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_poll_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_cqe64 = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_sq*, i32)* @mlx5e_poll_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_poll_tx_cq(%struct.mlx5e_sq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %118, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %119

16:                                               ; preds = %13
  %17 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %17, i32 0, i32 2
  %19 = call %struct.mlx5_cqe64* @mlx5e_get_cqe(%struct.TYPE_8__* %18)
  store %struct.mlx5_cqe64* %19, %struct.mlx5_cqe64** %6, align 8
  %20 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %21 = icmp ne %struct.mlx5_cqe64* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %119

23:                                               ; preds = %16
  %24 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @mlx5_cqwq_pop(i32* %26)
  %28 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %115, %23
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %118

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %42, %46
  store i64 %47, i64* %9, align 8
  %48 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  store %struct.mbuf* %54, %struct.mbuf** %7, align 8
  %55 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %41
  %64 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %63
  br label %105

79:                                               ; preds = %41
  %80 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %81 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %84 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %83, i32 0, i32 3
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %91 = call i32 @bus_dmamap_sync(i32 %82, i32 %89, i32 %90)
  %92 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %96 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bus_dmamap_unload(i32 %94, i32 %101)
  %103 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %104 = call i32 @m_freem(%struct.mbuf* %103)
  br label %105

105:                                              ; preds = %79, %78
  %106 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %107 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %105
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %35

118:                                              ; preds = %35
  br label %13

119:                                              ; preds = %22, %13
  %120 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %121 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i32 @mlx5_cqwq_update_db_record(i32* %122)
  %124 = call i32 (...) @atomic_thread_fence_rel()
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %127 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  ret void
}

declare dso_local %struct.mlx5_cqe64* @mlx5e_get_cqe(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx5_cqwq_pop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mlx5_cqwq_update_db_record(i32*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
