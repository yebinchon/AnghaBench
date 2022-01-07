; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_get_tt_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_get_tt_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_eth_addr_info = type { i32 }

@MLX5E_TT_IPV4_TCP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6_TCP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_UDP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6_UDP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4 = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6 = common dso_local global i32 0, align 4
@MLX5E_TT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_eth_addr_info*, i32)* @mlx5e_get_tt_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_tt_vec(%struct.mlx5e_eth_addr_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_eth_addr_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_eth_addr_info* %0, %struct.mlx5e_eth_addr_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %66 [
    i32 131, label %8
    i32 132, label %51
  ]

8:                                                ; preds = %2
  %9 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlx5e_get_eth_addr_type(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %47 [
    i32 128, label %14
    i32 130, label %35
    i32 129, label %41
  ]

14:                                               ; preds = %8
  %15 = load i32, i32* @MLX5E_TT_IPV4_TCP, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @MLX5E_TT_IPV6_TCP, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @MLX5E_TT_ANY, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  store i32 %34, i32* %6, align 4
  br label %50

35:                                               ; preds = %8
  %36 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  store i32 %40, i32* %6, align 4
  br label %50

41:                                               ; preds = %8
  %42 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %8
  %48 = load i32, i32* @MLX5E_TT_ANY, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %41, %35, %14
  br label %87

51:                                               ; preds = %2
  %52 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @MLX5E_TT_ANY, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  store i32 %65, i32* %6, align 4
  br label %87

66:                                               ; preds = %2
  %67 = load i32, i32* @MLX5E_TT_IPV4_TCP, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* @MLX5E_TT_IPV6_TCP, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %73 = shl i32 1, %72
  %74 = or i32 %71, %73
  %75 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %76 = shl i32 1, %75
  %77 = or i32 %74, %76
  %78 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %79 = shl i32 1, %78
  %80 = or i32 %77, %79
  %81 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %82 = shl i32 1, %81
  %83 = or i32 %80, %82
  %84 = load i32, i32* @MLX5E_TT_ANY, align 4
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %66, %51, %50
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @mlx5e_get_eth_addr_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
