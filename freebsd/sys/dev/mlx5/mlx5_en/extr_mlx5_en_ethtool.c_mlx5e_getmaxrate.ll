; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_getmaxrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_getmaxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32* }
%struct.mlx5_core_dev = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX5E_100MB = common dso_local global i32 0, align 4
@MLX5E_1GB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"non-supported BW unit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_getmaxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_getmaxrate(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %3, align 8
  %12 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %19)
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = call i32 @mlx5_query_port_tc_rate_limit(%struct.mlx5_core_dev* %21, i32* %18, i32* %15)
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %88

27:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %84, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %30)
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %15, i64 %35
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %74 [
    i32 130, label %38
    i32 128, label %52
    i32 129, label %66
  ]

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %18, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MLX5E_100MB, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %44, i32* %51, align 4
  br label %83

52:                                               ; preds = %33
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %18, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX5E_1GB, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %58, i32* %65, align 4
  br label %83

66:                                               ; preds = %33
  %67 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %68 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  br label %83

74:                                               ; preds = %33
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 -1, i32* %81, align 4
  %82 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %74, %66, %52, %38
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %28

87:                                               ; preds = %28
  br label %88

88:                                               ; preds = %87, %26
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %90 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #2

declare dso_local i32 @mlx5_query_port_tc_rate_limit(%struct.mlx5_core_dev*, i32*, i32*) #2

declare dso_local i32 @mlx5_max_tc(%struct.mlx5_core_dev*) #2

declare dso_local i32 @WARN_ONCE(i32, i8*) #2

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
