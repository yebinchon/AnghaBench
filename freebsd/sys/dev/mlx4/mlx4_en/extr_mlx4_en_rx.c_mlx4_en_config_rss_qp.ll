; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_config_rss_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_config_rss_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_en_rx_ring = type { %struct.TYPE_10__, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_qp_context = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate qp context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate qp #%x\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_FCS_KEEP = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i32, %struct.mlx4_en_rx_ring*, i32*, %struct.mlx4_qp*)* @mlx4_en_config_rss_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_config_rss_qp(%struct.mlx4_en_priv* %0, i32 %1, %struct.mlx4_en_rx_ring* %2, i32* %3, %struct.mlx4_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_rx_ring*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx4_qp*, align 8
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca %struct.mlx4_qp_context*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_en_rx_ring* %2, %struct.mlx4_en_rx_ring** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.mlx4_qp* %4, %struct.mlx4_qp** %11, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_qp_context* @kmalloc(i32 8, i32 %18)
  store %struct.mlx4_qp_context* %19, %struct.mlx4_qp_context** %13, align 8
  %20 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %21 = icmp ne %struct.mlx4_qp_context* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %24 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %117

27:                                               ; preds = %5
  %28 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @mlx4_qp_alloc(%struct.TYPE_11__* %30, i32 %31, %struct.mlx4_qp* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %113

41:                                               ; preds = %27
  %42 = load i32, i32* @mlx4_en_sqp_event, align 4
  %43 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %44 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %46 = call i32 @memset(%struct.mlx4_qp_context* %45, i32 0, i32 8)
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %48 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %56 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %47, i32 %50, i32 4, i32 0, i32 0, i32 %51, i32 %54, i32 -1, %struct.mlx4_qp_context* %55)
  %57 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_be64(i32 %61)
  %63 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %64 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MLX4_DEV_CAP_FLAG_FCS_KEEP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %41
  %75 = call i32 @cpu_to_be32(i32 536870912)
  %76 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %77 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* @ETH_FCS_LEN, align 8
  %81 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %86

83:                                               ; preds = %41
  %84 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %94 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @mlx4_qp_to_ready(%struct.TYPE_11__* %89, i32* %92, %struct.mlx4_qp_context* %93, %struct.mlx4_qp* %94, i32* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %104 = call i32 @mlx4_qp_remove(%struct.TYPE_11__* %102, %struct.mlx4_qp* %103)
  %105 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %109 = call i32 @mlx4_qp_free(%struct.TYPE_11__* %107, %struct.mlx4_qp* %108)
  br label %110

110:                                              ; preds = %99, %86
  %111 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %112 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %111)
  br label %113

113:                                              ; preds = %110, %37
  %114 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %115 = call i32 @kfree(%struct.mlx4_qp_context* %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %22
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.mlx4_qp_context* @kmalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_qp_alloc(%struct.TYPE_11__*, i32, %struct.mlx4_qp*, i32) #1

declare dso_local i32 @memset(%struct.mlx4_qp_context*, i32, i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_qp_context*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_to_ready(%struct.TYPE_11__*, i32*, %struct.mlx4_qp_context*, %struct.mlx4_qp*, i32*) #1

declare dso_local i32 @mlx4_qp_remove(%struct.TYPE_11__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_qp_free(%struct.TYPE_11__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @kfree(%struct.mlx4_qp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
