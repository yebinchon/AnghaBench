; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_lib/extr_mlx5_gid.c_mlx5_core_reserve_gids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_lib/extr_mlx5_gid.c_mlx5_core_reserve_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@MLX5_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot reserve GIDs when interfaces are up\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"GID table exhausted attempting to reserve %d more GIDs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_MAX_RESERVED_GIDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to reserve %d more GIDs\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Reserved %u GIDs starting at %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_reserve_gids(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %16
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* @MLX5_MAX_RESERVED_GIDS, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %30
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub i32 %53, %48
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %56
  store i64 %62, i64* %60, align 8
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %68, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %47, %41, %24, %11
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
