; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_unbond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_unbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to unbond device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to unbond device for multifunction (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Device is unbonded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_unbond(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %12 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %16 = call i32 @mlx4_do_bond(%struct.mlx4_dev* %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mlx4_err(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %25 = call i64 @mlx4_is_master(%struct.mlx4_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %29 = call i32 @mlx4_mf_unbond(%struct.mlx4_dev* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mlx4_warn(%struct.mlx4_dev* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %47 = call i32 @mlx4_dbg(%struct.mlx4_dev* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_do_bond(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_mf_unbond(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
