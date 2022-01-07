; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_ul_snd_tag_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_ul_snd_tag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.mlx5e_channel*, %struct.TYPE_5__, i64 }
%struct.mlx5e_channel = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.m_snd_tag }
%struct.m_snd_tag = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.if_snd_tag_alloc_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %union.if_snd_tag_alloc_params*, %struct.m_snd_tag**)* @mlx5e_ul_snd_tag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ul_snd_tag_alloc(%struct.ifnet* %0, %union.if_snd_tag_alloc_params* %1, %struct.m_snd_tag** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.if_snd_tag_alloc_params*, align 8
  %7 = alloca %struct.m_snd_tag**, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5e_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %union.if_snd_tag_alloc_params* %1, %union.if_snd_tag_alloc_params** %6, align 8
  store %struct.m_snd_tag** %2, %struct.m_snd_tag*** %7, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %12, align 8
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %8, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %union.if_snd_tag_alloc_params*, %union.if_snd_tag_alloc_params** %6, align 8
  %20 = bitcast %union.if_snd_tag_alloc_params* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %18, %3
  %26 = phi i1 [ true, %3 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %union.if_snd_tag_alloc_params*, %union.if_snd_tag_alloc_params** %6, align 8
  %38 = bitcast %union.if_snd_tag_alloc_params* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %40, 128
  %42 = load i32, i32* %10, align 4
  %43 = srem i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %46, i64 %48
  store %struct.mlx5e_channel* %49, %struct.mlx5e_channel** %9, align 8
  %50 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %32
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %4, align 4
  br label %71

62:                                               ; preds = %32
  %63 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %64 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @m_snd_tag_ref(%struct.m_snd_tag* %65)
  %67 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %68 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.m_snd_tag**, %struct.m_snd_tag*** %7, align 8
  store %struct.m_snd_tag* %69, %struct.m_snd_tag** %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %62, %60, %30
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @m_snd_tag_ref(%struct.m_snd_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
