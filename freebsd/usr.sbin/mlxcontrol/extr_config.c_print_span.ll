; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_span.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_sys_drv_span = type { i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"0x%08x-0x%08x %uMB on\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" disk%02d%02d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_sys_drv_span*, i32)* @print_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_span(%struct.mlx_sys_drv_span* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx_sys_drv_span*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx_sys_drv_span* %0, %struct.mlx_sys_drv_span** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %7 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %10 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %13 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2048
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %15, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %43, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %27 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = load %struct.mlx_sys_drv_span*, %struct.mlx_sys_drv_span** %3, align 8
  %35 = getelementptr inbounds %struct.mlx_sys_drv_span, %struct.mlx_sys_drv_span* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

46:                                               ; preds = %21
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
