; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.mlx5e_sq = type { i32 }

@CSUM_SND_TAG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mlx5e_sq*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CSUM_SND_TAG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = icmp eq %struct.ifnet* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call %struct.mlx5e_sq* @mlx5e_select_queue_by_send_tag(%struct.ifnet* %26, %struct.mbuf* %27)
  store %struct.mlx5e_sq* %28, %struct.mlx5e_sq** %6, align 8
  %29 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %30 = icmp eq %struct.mlx5e_sq* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %37

35:                                               ; preds = %15
  br label %51

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = call %struct.mlx5e_sq* @mlx5e_select_queue(%struct.ifnet* %38, %struct.mbuf* %39)
  store %struct.mlx5e_sq* %40, %struct.mlx5e_sq** %6, align 8
  %41 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %42 = icmp eq %struct.mlx5e_sq* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %48 = call i32 @m_freem(%struct.mbuf* %47)
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %52, i32 0, i32 0
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = call i32 @mlx5e_xmit_locked(%struct.ifnet* %55, %struct.mlx5e_sq* %56, %struct.mbuf* %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %46
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.mlx5e_sq* @mlx5e_select_queue_by_send_tag(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx5e_sq* @mlx5e_select_queue(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mlx5e_xmit_locked(%struct.ifnet*, %struct.mlx5e_sq*, %struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
