; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_pmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_pmtu_reg = type { i8*, i8*, i8*, i8* }

@pmtu_reg = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@admin_mtu = common dso_local global i32 0, align 4
@MLX5_REG_PMTU = common dso_local global i32 0, align 4
@max_mtu = common dso_local global i32 0, align 4
@oper_mtu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_access_pmtu(%struct.mlx5_core_dev* %0, %struct.mlx5_pmtu_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_pmtu_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_pmtu_reg* %1, %struct.mlx5_pmtu_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @pmtu_reg, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @mlx5_vzalloc(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %21
  %32 = load i32, i32* @pmtu_reg, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @local_port, align 4
  %35 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @MLX5_SET(i32 %32, i8* %33, i32 %34, i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32, i32* @pmtu_reg, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @admin_mtu, align 4
  %45 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @MLX5_SET(i32 %42, i8* %43, i32 %44, i8* %47)
  br label %49

49:                                               ; preds = %41, %31
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MLX5_REG_PMTU, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %50, i8* %51, i32 %52, i8* %53, i32 %54, i32 %55, i32 0, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %100

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %99, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @pmtu_reg, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @local_port, align 4
  %72 = call i8* @MLX5_GET(i32 %69, i8* %70, i32 %71)
  %73 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %76 = load i32, i32* @pmtu_reg, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* @max_mtu, align 4
  %79 = call i8* @MLX5_GET(i32 %76, i8* %77, i32 %78)
  %80 = call i8* @mtu_to_ib_mtu(%struct.mlx5_core_dev* %75, i8* %79)
  %81 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %82 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %84 = load i32, i32* @pmtu_reg, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @admin_mtu, align 4
  %87 = call i8* @MLX5_GET(i32 %84, i8* %85, i32 %86)
  %88 = call i8* @mtu_to_ib_mtu(%struct.mlx5_core_dev* %83, i8* %87)
  %89 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %90 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %92 = load i32, i32* @pmtu_reg, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* @oper_mtu, align 4
  %95 = call i8* @MLX5_GET(i32 %92, i8* %93, i32 %94)
  %96 = call i8* @mtu_to_ib_mtu(%struct.mlx5_core_dev* %91, i8* %95)
  %97 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %6, align 8
  %98 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %68, %65
  br label %100

100:                                              ; preds = %99, %64
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @kvfree(i8* %101)
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @kvfree(i8* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %26, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i8*) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

declare dso_local i8* @mtu_to_ib_mtu(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
