; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_xmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_xmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mlx5e_sq = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MLX5E_CEV_STATE_INITIAL = common dso_local global i64 0, align 8
@MLX5E_CEV_STATE_HOLD_NOPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mlx5e_sq*, %struct.mbuf*)* @mlx5e_xmit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_locked(%struct.ifnet* %0, %struct.mlx5e_sq* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mlx5e_sq*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mlx5e_sq* %1, %struct.mlx5e_sq** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @READ_ONCE(i32 %18)
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  %29 = load i32, i32* @ENETDOWN, align 4
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %21
  %31 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %32 = call i64 @mlx5e_sq_xmit(%struct.mlx5e_sq* %31, %struct.mbuf** %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  %37 = load i32, i32* @ENOBUFS, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %49 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mlx5e_tx_notify_hw(%struct.mlx5e_sq* %48, i32 %52, i32 0)
  %54 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %38
  %58 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MLX5E_CEV_STATE_INITIAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 1
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ false, %57 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %75 = call i32 @mlx5e_sq_cev_timeout(%struct.mlx5e_sq* %74)
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* @MLX5E_CEV_STATE_HOLD_NOPS, align 8
  %78 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @mlx5e_sq_xmit(%struct.mlx5e_sq*, %struct.mbuf**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx5e_tx_notify_hw(%struct.mlx5e_sq*, i32, i32) #1

declare dso_local i32 @mlx5e_sq_cev_timeout(%struct.mlx5e_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
