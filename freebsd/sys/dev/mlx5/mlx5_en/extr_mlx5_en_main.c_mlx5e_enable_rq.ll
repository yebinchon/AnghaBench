; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_11__, %struct.mlx5e_channel* }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5e_channel = type { %struct.TYPE_9__, %struct.mlx5e_priv* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rq_param = type { i32 }

@create_rq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@cqn = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global i32 0, align 4
@counter_set_id = common dso_local global i32 0, align 4
@log_wq_pg_sz = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@pas = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_rq_param*)* @mlx5e_enable_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_enable_rq(%struct.mlx5e_rq* %0, %struct.mlx5e_rq_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_rq_param*, align 8
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %5, align 8
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %14, i32 0, i32 2
  %16 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %15, align 8
  store %struct.mlx5e_channel* %16, %struct.mlx5e_channel** %6, align 8
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %17, i32 0, i32 1
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %18, align 8
  store %struct.mlx5e_priv* %19, %struct.mlx5e_priv** %7, align 8
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %21, align 8
  store %struct.mlx5_core_dev* %22, %struct.mlx5_core_dev** %8, align 8
  %23 = load i8*, i8** @create_rq_in, align 8
  %24 = call i32 @MLX5_ST_SZ_BYTES(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 %25, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i8* @mlx5_vzalloc(i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %126

42:                                               ; preds = %2
  %43 = load i8*, i8** @create_rq_in, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** @ctx, align 8
  %46 = call i8* @MLX5_ADDR_OF(i8* %43, i8* %44, i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i8* @MLX5_ADDR_OF(i8* %47, i8* %48, i8* %49)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i8* %51, i32 %54, i32 4)
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @cqn, align 4
  %59 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @MLX5_SET(i8* %56, i8* %57, i32 %58, i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @state, align 4
  %69 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %70 = call i32 @MLX5_SET(i8* %66, i8* %67, i32 %68, i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @flush_in_error_en, align 4
  %74 = call i32 @MLX5_SET(i8* %71, i8* %72, i32 %73, i32 1)
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %42
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @counter_set_id, align 4
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @MLX5_SET(i8* %80, i8* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %79, %42
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @log_wq_pg_sz, align 4
  %91 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @MLX5_SET(i8* %88, i8* %89, i32 %90, i32 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* @dbr_addr, align 4
  %102 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MLX5_SET64(i8* %99, i8* %100, i32 %101, i32 %106)
  %108 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** @pas, align 8
  %114 = call i8* @MLX5_ADDR_OF(i8* %111, i8* %112, i8* %113)
  %115 = bitcast i8* %114 to i32*
  %116 = call i32 @mlx5_fill_page_array(%struct.TYPE_12__* %110, i32* %115)
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %121 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %120, i32 0, i32 0
  %122 = call i32 @mlx5_core_create_rq(%struct.mlx5_core_dev* %117, i8* %118, i32 %119, i32* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @kvfree(i8* %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %87, %39
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_array(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @mlx5_core_create_rq(%struct.mlx5_core_dev*, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
