; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_port_query_eth_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_port_query_eth_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_port_eth_proto = type { i8*, i8*, i8* }

@ptys_reg = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_PTYS_EN = common dso_local global i32 0, align 4
@eth_proto_capability = common dso_local global i32 0, align 4
@eth_proto_admin = common dso_local global i32 0, align 4
@eth_proto_oper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_port_query_eth_proto(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, %struct.mlx5e_port_eth_proto* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_port_eth_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx5e_port_eth_proto* %3, %struct.mlx5e_port_eth_proto** %9, align 8
  %14 = load i32, i32* @ptys_reg, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.mlx5e_port_eth_proto*, %struct.mlx5e_port_eth_proto** %9, align 8
  %20 = icmp ne %struct.mlx5e_port_eth_proto* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %26 = mul nuw i64 4, %16
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @MLX5_PTYS_EN, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev* %25, i32* %18, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load i32, i32* @ptys_reg, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @eth_proto_capability, align 4
  %39 = call i8* @MLX5_GET_ETH_PROTO(i32 %36, i32* %18, i32 %37, i32 %38)
  %40 = load %struct.mlx5e_port_eth_proto*, %struct.mlx5e_port_eth_proto** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5e_port_eth_proto, %struct.mlx5e_port_eth_proto* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @ptys_reg, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @eth_proto_admin, align 4
  %45 = call i8* @MLX5_GET_ETH_PROTO(i32 %42, i32* %18, i32 %43, i32 %44)
  %46 = load %struct.mlx5e_port_eth_proto*, %struct.mlx5e_port_eth_proto** %9, align 8
  %47 = getelementptr inbounds %struct.mlx5e_port_eth_proto, %struct.mlx5e_port_eth_proto* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @ptys_reg, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @eth_proto_oper, align 4
  %51 = call i8* @MLX5_GET_ETH_PROTO(i32 %48, i32* %18, i32 %49, i32 %50)
  %52 = load %struct.mlx5e_port_eth_proto*, %struct.mlx5e_port_eth_proto** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5e_port_eth_proto, %struct.mlx5e_port_eth_proto* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %35, %33, %21
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev*, i32*, i32, i32, i32) #1

declare dso_local i8* @MLX5_GET_ETH_PROTO(i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
