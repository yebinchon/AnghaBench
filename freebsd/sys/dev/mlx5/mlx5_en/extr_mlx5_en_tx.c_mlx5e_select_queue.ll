; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_select_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32 }
%struct.ifnet = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.mlx5e_sq* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@M_VLANTAG = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@MBUF_HASHFLAG_L3 = common dso_local global i32 0, align 4
@MBUF_HASHFLAG_L4 = common dso_local global i32 0, align 4
@mlx5e_hash_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_sq* (%struct.ifnet*, %struct.mbuf*)* @mlx5e_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_sq* @mlx5e_select_queue(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_sq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %11, align 8
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %6, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M_VLANTAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 13
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %19
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %44)
  %46 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %52, 128
  %54 = load i32, i32* %8, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %65, i64 %67
  store %struct.mlx5e_sq* %68, %struct.mlx5e_sq** %7, align 8
  %69 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %7, align 8
  %70 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @READ_ONCE(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %7, align 8
  store %struct.mlx5e_sq* %78, %struct.mlx5e_sq** %3, align 8
  br label %80

79:                                               ; preds = %57
  store %struct.mlx5e_sq* null, %struct.mlx5e_sq** %3, align 8
  br label %80

80:                                               ; preds = %79, %77
  %81 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  ret %struct.mlx5e_sq* %81
}

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
