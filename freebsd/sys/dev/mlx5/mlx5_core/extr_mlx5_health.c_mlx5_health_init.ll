; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_health_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_health_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i8*, i8*, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s-rec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-wdg\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-cmd\00", align 1
@health_care = common dso_local global i32 0, align 4
@health_watchdog = common dso_local global i32 0, align 4
@mlx5_trigger_cmd_completions = common dso_local global i32 0, align 4
@health_recover = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_health_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_core_health*, align 8
  %5 = alloca [64 x i8], align 16
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.mlx5_core_health* %8, %struct.mlx5_core_health** %4, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i8* @dev_name(i32* %13)
  %15 = call i32 @snprintf(i8* %9, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %17 = call i8* @create_singlethread_workqueue(i8* %16)
  %18 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %89

25:                                               ; preds = %1
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i8* @dev_name(i32* %30)
  %32 = call i32 @snprintf(i8* %26, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = call i8* @create_singlethread_workqueue(i8* %33)
  %35 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %84

42:                                               ; preds = %25
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i8* @dev_name(i32* %47)
  %49 = call i32 @snprintf(i8* %43, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %51 = call i8* @create_singlethread_workqueue(i8* %50)
  %52 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %54, i32 0, i32 7
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  br label %79

59:                                               ; preds = %42
  %60 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %60, i32 0, i32 6
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %63, i32 0, i32 5
  %65 = load i32, i32* @health_care, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %67, i32 0, i32 4
  %69 = load i32, i32* @health_watchdog, align 4
  %70 = call i32 @INIT_WORK(i32* %68, i32 %69)
  %71 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %71, i32 0, i32 3
  %73 = load i32, i32* @mlx5_trigger_cmd_completions, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  %75 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %75, i32 0, i32 2
  %77 = load i32, i32* @health_recover, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %92

79:                                               ; preds = %58
  %80 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @destroy_workqueue(i8* %82)
  br label %84

84:                                               ; preds = %79, %41
  %85 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %86 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @destroy_workqueue(i8* %87)
  br label %89

89:                                               ; preds = %84, %24
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %59
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
