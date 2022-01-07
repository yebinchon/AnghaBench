; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c___mlx4_qp_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c___mlx4_qp_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca %struct.mlx4_qp_table*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %8, align 8
  %13 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %13, i32 0, i32 0
  store %struct.mlx4_qp_table* %14, %struct.mlx4_qp_table** %9, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mlx4_table_get(%struct.mlx4_dev* %15, i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx4_table_get(%struct.mlx4_dev* %25, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %83

34:                                               ; preds = %24
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %36 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %36, i32 0, i32 2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlx4_table_get(%struct.mlx4_dev* %35, i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %77

44:                                               ; preds = %34
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %46 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %46, i32 0, i32 3
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlx4_table_get(%struct.mlx4_dev* %45, i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %71

54:                                               ; preds = %44
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %56 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %56, i32 0, i32 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mlx4_table_get(%struct.mlx4_dev* %55, i32* %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %91

65:                                               ; preds = %63
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %67 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %68 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %67, i32 0, i32 3
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mlx4_table_put(%struct.mlx4_dev* %66, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %73 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %74 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %73, i32 0, i32 2
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @mlx4_table_put(%struct.mlx4_dev* %72, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %43
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %79 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %80 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %79, i32 0, i32 1
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @mlx4_table_put(%struct.mlx4_dev* %78, i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %33
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %85 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %86 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @mlx4_table_put(%struct.mlx4_dev* %84, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %23
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %64
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
