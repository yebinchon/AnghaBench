; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_snd_tag_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_snd_tag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%union.if_snd_tag_alloc_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_snd_tag = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %union.if_snd_tag_alloc_params*, %struct.m_snd_tag**)* @mlx5e_snd_tag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_snd_tag_alloc(%struct.ifnet* %0, %union.if_snd_tag_alloc_params* %1, %struct.m_snd_tag** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.if_snd_tag_alloc_params*, align 8
  %7 = alloca %struct.m_snd_tag**, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %union.if_snd_tag_alloc_params* %1, %union.if_snd_tag_alloc_params** %6, align 8
  store %struct.m_snd_tag** %2, %struct.m_snd_tag*** %7, align 8
  %8 = load %union.if_snd_tag_alloc_params*, %union.if_snd_tag_alloc_params** %6, align 8
  %9 = bitcast %union.if_snd_tag_alloc_params* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %17 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = load %union.if_snd_tag_alloc_params*, %union.if_snd_tag_alloc_params** %6, align 8
  %15 = load %struct.m_snd_tag**, %struct.m_snd_tag*** %7, align 8
  %16 = call i32 @mlx5e_ul_snd_tag_alloc(%struct.ifnet* %13, %union.if_snd_tag_alloc_params* %14, %struct.m_snd_tag** %15)
  store i32 %16, i32* %4, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @mlx5e_ul_snd_tag_alloc(%struct.ifnet*, %union.if_snd_tag_alloc_params*, %struct.m_snd_tag**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
