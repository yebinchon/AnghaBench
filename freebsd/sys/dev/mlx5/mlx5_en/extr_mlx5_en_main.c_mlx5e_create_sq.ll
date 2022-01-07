; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_8__, %struct.mlx5_core_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_sq_param = type { i32, i8* }
%struct.mlx5e_sq = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.mlx5e_priv*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }

@wq = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MLX5E_MAX_TX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@MLX5E_MAX_TX_MBUF_FRAGS = common dso_local global i32 0, align 4
@MLX5E_MAX_TX_MBUF_SIZE = common dso_local global i32 0, align 4
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@log_bf_reg_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"txstat%dtc%d\00", align 1
@mlx5e_sq_stats_desc = common dso_local global i32 0, align 4
@MLX5E_SQ_STATS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, i32, %struct.mlx5e_sq_param*, %struct.mlx5e_sq*)* @mlx5e_create_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_sq(%struct.mlx5e_channel* %0, i32 %1, %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_sq_param*, align 8
  %9 = alloca %struct.mlx5e_sq*, align 8
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %8, align 8
  store %struct.mlx5e_sq* %3, %struct.mlx5e_sq** %9, align 8
  %16 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %16, i32 0, i32 1
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %10, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 3
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %11, align 8
  %22 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* @wq, align 4
  %28 = call i8* @MLX5_ADDR_OF(i8* %25, i8* %26, i32 %27)
  store i8* %28, i8** %14, align 8
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_get_dma_tag(i32 %34)
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %38 = load i32, i32* @MLX5E_MAX_TX_PAYLOAD_SIZE, align 4
  %39 = load i32, i32* @MLX5E_MAX_TX_MBUF_FRAGS, align 4
  %40 = load i32, i32* @MLX5E_MAX_TX_MBUF_SIZE, align 4
  %41 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %41, i32 0, i32 2
  %43 = call i32 @bus_dma_tag_create(i32 %35, i32 1, i32 0, i32 %36, i32 %37, i32* null, i32* null, i32 %38, i32 %39, i32 %40, i32 0, i32* null, i32* null, i32* %42)
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %146

47:                                               ; preds = %4
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %49 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %49, i32 0, i32 3
  %51 = call i32 @mlx5_alloc_map_uar(%struct.mlx5_core_dev* %48, i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %141

55:                                               ; preds = %47
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %57 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %57, i32 0, i32 0
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %60, i32 0, i32 9
  %62 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %63 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %62, i32 0, i32 4
  %64 = call i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %56, i32* %58, i8* %59, %struct.TYPE_10__* %61, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %136

68:                                               ; preds = %55
  %69 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %70 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @MLX5_SND_DBR, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %79 = load i32, i32* @log_bf_reg_size, align 4
  %80 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %78, i32 %79)
  %81 = shl i32 1, %80
  %82 = sdiv i32 %81, 2
  %83 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %84 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %86 = call i32 @mlx5e_alloc_sq_db(%struct.mlx5e_sq* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %132

90:                                               ; preds = %68
  %91 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %92 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cpu_to_be32(i32 %94)
  %96 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %97 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %99 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %102 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %104 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %105 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %104, i32 0, i32 6
  store %struct.mlx5e_priv* %103, %struct.mlx5e_priv** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %110 = call i32 @mlx5e_update_sq_inline(%struct.mlx5e_sq* %109)
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %112 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %113 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @snprintf(i8* %111, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %121 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SYSCTL_CHILDREN(i32 %122)
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %125 = load i32, i32* @mlx5e_sq_stats_desc, align 4
  %126 = load i32, i32* @MLX5E_SQ_STATS_NUM, align 4
  %127 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %128 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mlx5e_create_stats(i32* %119, i32 %123, i8* %124, i32 %125, i32 %126, i32 %130)
  store i32 0, i32* %5, align 4
  br label %148

132:                                              ; preds = %89
  %133 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %133, i32 0, i32 4
  %135 = call i32 @mlx5_wq_destroy(i32* %134)
  br label %136

136:                                              ; preds = %132, %67
  %137 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %138 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %139 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %138, i32 0, i32 3
  %140 = call i32 @mlx5_unmap_free_uar(%struct.mlx5_core_dev* %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %54
  %142 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %143 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bus_dma_tag_destroy(i32 %144)
  br label %146

146:                                              ; preds = %141, %46
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %90
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mlx5_alloc_map_uar(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev*, i32*, i8*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_alloc_sq_db(%struct.mlx5e_sq*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5e_update_sq_inline(%struct.mlx5e_sq*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_create_stats(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

declare dso_local i32 @mlx5_unmap_free_uar(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
