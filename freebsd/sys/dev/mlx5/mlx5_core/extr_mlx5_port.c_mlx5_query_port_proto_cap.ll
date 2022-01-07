; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_proto_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_proto_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@ptys_reg = common dso_local global i32 0, align 4
@MLX5_PTYS_EN = common dso_local global i32 0, align 4
@eth_proto_capability = common dso_local global i32 0, align 4
@ib_proto_capability = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_port_proto_cap(%struct.mlx5_core_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ptys_reg, align 4
  %13 = call i32 @MLX5_ST_SZ_DW(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %18 = mul nuw i64 4, %14
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev* %17, i32* %16, i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MLX5_PTYS_EN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @ptys_reg, align 4
  %32 = load i32, i32* @eth_proto_capability, align 4
  %33 = call i32 @MLX5_GET(i32 %31, i32* %16, i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @ptys_reg, align 4
  %37 = load i32, i32* @ib_proto_capability, align 4
  %38 = call i32 @MLX5_GET(i32 %36, i32* %16, i32 %37)
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
