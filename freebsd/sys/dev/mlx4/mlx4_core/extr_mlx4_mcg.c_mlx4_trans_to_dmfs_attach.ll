; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_trans_to_dmfs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_trans_to_dmfs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.mlx4_net_trans_rule = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@MLX4_DOMAIN_NIC = common dso_local global i32 0, align 4
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_Q_FIFO = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_ETH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_trans_to_dmfs_attach(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca %struct.mlx4_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mlx4_spec_list, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_net_trans_rule, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = bitcast %struct.mlx4_spec_list* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load i32, i32* @MLX4_MAC_MASK, align 4
  %21 = shl i32 %20, 16
  %22 = call i32 @cpu_to_be64(i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 4
  %28 = load i32, i32* @MLX4_DOMAIN_NIC, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 5
  %30 = load i32, i32* @MLX4_FS_REGULAR, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 6
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 7
  %33 = load i32, i32* @MLX4_NET_TRANS_Q_FIFO, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* %14, align 4
  switch i32 %47, label %74 [
    i32 129, label %48
    i32 128, label %63
  ]

48:                                               ; preds = %7
  %49 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_ETH, align 4
  %50 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %53, i32* %55, i32 %56)
  %58 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %60, i32* %17, i32 %61)
  br label %77

63:                                               ; preds = %7
  %64 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IB, align 4
  %65 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @memcpy(i32 %68, i32* %69, i32 16)
  %71 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @memset(i32* %72, i32 255, i32 16)
  br label %77

74:                                               ; preds = %7
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %84

77:                                               ; preds = %63, %48
  %78 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 0
  %79 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %18, i32 0, i32 1
  %80 = call i32 @list_add_tail(i32* %78, i32* %79)
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @mlx4_flow_attach(%struct.mlx4_dev* %81, %struct.mlx4_net_trans_rule* %18, i32* %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_be64(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @mlx4_flow_attach(%struct.mlx4_dev*, %struct.mlx4_net_trans_rule*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
