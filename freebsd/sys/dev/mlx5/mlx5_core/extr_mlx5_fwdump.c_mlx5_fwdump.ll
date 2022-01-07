; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i32*, %struct.mlx5_crspace_regmap* }
%struct.mlx5_crspace_regmap = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Issuing FW dump\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Only one FW dump can be captured aborting FW dump\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MLX5_VSC_DOMAIN_PROTECTED_CRSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fwdump(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_crspace_regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  store i32 %17, i32* %6, align 4
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %25 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EEXIST, align 4
  store i32 %26, i32* %6, align 4
  br label %92

27:                                               ; preds = %18
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %29 = call i32 @mlx5_vsc_lock(%struct.mlx5_core_dev* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %92

33:                                               ; preds = %27
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %35 = load i32, i32* @MLX5_VSC_DOMAIN_PROTECTED_CRSPACE, align 4
  %36 = call i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %89

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %41, i32 0, i32 3
  %43 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %42, align 8
  store %struct.mlx5_crspace_regmap* %43, %struct.mlx5_crspace_regmap** %3, align 8
  br label %44

44:                                               ; preds = %83, %40
  %45 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %50
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %59 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @mlx5_vsc_read(%struct.mlx5_core_dev* %58, i64 %65, i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %89

76:                                               ; preds = %57
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %50

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %3, align 8
  %85 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %84, i32 1
  store %struct.mlx5_crspace_regmap* %85, %struct.mlx5_crspace_regmap** %3, align 8
  br label %44

86:                                               ; preds = %44
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %75, %39
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %91 = call i32 @mlx5_vsc_unlock(%struct.mlx5_core_dev* %90)
  br label %92

92:                                               ; preds = %89, %32, %23, %16
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %94 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %93, i32 0, i32 1
  %95 = call i32 @mtx_unlock(i32* %94)
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_vsc_lock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_vsc_read(%struct.mlx5_core_dev*, i64, i32*) #1

declare dso_local i32 @mlx5_vsc_unlock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
