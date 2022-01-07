; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_bond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_bond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to bond device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"bond for multifunction failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Device is bonded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bond(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %4, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %11 = call i32 @mlx4_is_bonded(%struct.mlx4_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %1
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %15 = call i32 @mlx4_do_bond(%struct.mlx4_dev* %14, i32 1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %27 = call i64 @mlx4_is_master(%struct.mlx4_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %31 = call i32 @mlx4_mf_bond(%struct.mlx4_dev* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %36 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %38 = call i32 @mlx4_do_bond(%struct.mlx4_dev* %37, i32 0)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %25, %22
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %49 = call i32 @mlx4_dbg(%struct.mlx4_dev* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_do_bond(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_mf_bond(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
