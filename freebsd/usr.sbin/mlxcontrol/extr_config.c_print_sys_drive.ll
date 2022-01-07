; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_sys_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_sys_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx_sys_drv* }
%struct.mlx_sys_drv = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"drive%02d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"RAID0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RAID1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RAID3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RAID5\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"RAID6\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"JBOD\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"RAID?\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" write%s\0A\00", align 1
@MLX_SYS_DRV_WRITEBACK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"through\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"  span%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf_config*, i32)* @print_sys_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sys_drive(%struct.conf_config* %0, i32 %1) #0 {
  %3 = alloca %struct.conf_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx_sys_drv*, align 8
  %6 = alloca i32, align 4
  store %struct.conf_config* %0, %struct.conf_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.conf_config*, %struct.conf_config** %3, align 8
  %8 = getelementptr inbounds %struct.conf_config, %struct.conf_config* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %10, i64 %12
  store %struct.mlx_sys_drv* %13, %struct.mlx_sys_drv** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 15
  switch i32 %19, label %32 [
    i32 132, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
    i32 133, label %30
  ]

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %34

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %34

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %34

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %34

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %34

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30, %28, %26, %24, %22, %20
  %35 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %5, align 8
  %36 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MLX_SYS_DRV_WRITEBACK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %63, %34
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %51)
  %53 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %5, align 8
  %54 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.mlx_sys_drv*, %struct.mlx_sys_drv** %5, align 8
  %60 = getelementptr inbounds %struct.mlx_sys_drv, %struct.mlx_sys_drv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @print_span(i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %44

66:                                               ; preds = %44
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_span(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
