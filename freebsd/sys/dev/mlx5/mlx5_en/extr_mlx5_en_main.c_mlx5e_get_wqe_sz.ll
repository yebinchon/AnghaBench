; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_get_wqe_sz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_get_wqe_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@MJUM16BYTES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i64 0, align 8
@MJUMPAGESIZE = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@MLX5E_MAX_RX_BYTES = common dso_local global i32 0, align 4
@MLX5E_MAX_BUSDMA_RX_SEGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i64*, i64*)* @mlx5e_get_wqe_sz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_wqe_sz(%struct.mlx5e_priv* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @MLX5E_SW2MB_MTU(i32 %25)
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i64 [ %19, %15 ], [ %26, %20 ]
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @MJUM16BYTES, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @MJUM9BYTES, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @MJUM16BYTES, align 8
  store i64 %40, i64* %8, align 8
  br label %57

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @MJUMPAGESIZE, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @MJUM9BYTES, align 8
  store i64 %46, i64* %8, align 8
  br label %56

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @MCLBYTES, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @MJUMPAGESIZE, align 8
  store i64 %52, i64* %8, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @MCLBYTES, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @MLX5E_MAX_RX_BYTES, align 4
  %60 = call i64 @howmany(i64 %58, i32 %59)
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %68, %57
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i32 @powerof2(i64 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %61

71:                                               ; preds = %61
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @MLX5E_MAX_BUSDMA_RX_SEGS, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = load i64*, i64** %6, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %75, %32
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @MLX5E_SW2MB_MTU(i32) #1

declare dso_local i64 @howmany(i64, i32) #1

declare dso_local i32 @powerof2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
