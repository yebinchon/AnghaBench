; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_user_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_user_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_pd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_rwq = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.mlx5_ib_create_wq = type { i32, i32, i64 }
%struct.mlx5_ib_ucontext = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"umem_get failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bad offset\0A\00", align 1
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@MLX5_WQ_FLAG_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"addr 0x%llx, size %zd, npages %d, page_shift %d, ncont %d, offset %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"map failed\0A\00", align 1
@MLX5_WQ_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_pd*, %struct.mlx5_ib_rwq*, %struct.mlx5_ib_create_wq*)* @create_user_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_user_rq(%struct.mlx5_ib_dev* %0, %struct.ib_pd* %1, %struct.mlx5_ib_rwq* %2, %struct.mlx5_ib_create_wq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.mlx5_ib_rwq*, align 8
  %9 = alloca %struct.mlx5_ib_create_wq*, align 8
  %10 = alloca %struct.mlx5_ib_ucontext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %7, align 8
  store %struct.mlx5_ib_rwq* %2, %struct.mlx5_ib_rwq** %8, align 8
  store %struct.mlx5_ib_create_wq* %3, %struct.mlx5_ib_create_wq** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %135

23:                                               ; preds = %4
  %24 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %25 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mlx5_ib_ucontext* @to_mucontext(i32 %28)
  store %struct.mlx5_ib_ucontext* %29, %struct.mlx5_ib_ucontext** %10, align 8
  %30 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %31 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ib_umem_get(i32 %34, i64 %37, i32 %40, i32 0, i32 0)
  %42 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %23
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %51 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %5, align 4
  br label %135

57:                                               ; preds = %23
  %58 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mlx5_ib_cont_pages(i32 %60, i64 %63, i32* %12, i32* %11, i32* %14, i32* null)
  %65 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %69, i32 0, i32 8
  %71 = call i32 @mlx5_ib_get_buf_offset(i64 %67, i32 %68, i32* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %76 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %129

77:                                               ; preds = %57
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %88, i32 0, i32 7
  store i64 %87, i64* %89, align 8
  %90 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MLX5_WQ_FLAG_SIGNATURE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %100 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %102 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %106 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %104, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %10, align 8
  %114 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %9, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %117, i32 0, i32 5
  %119 = call i32 @mlx5_ib_db_map_user(%struct.mlx5_ib_ucontext* %113, i32 %116, i32* %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %77
  %123 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %124 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %129

125:                                              ; preds = %77
  %126 = load i32, i32* @MLX5_WQ_USER, align 4
  %127 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %5, align 4
  br label %135

129:                                              ; preds = %122, %74
  %130 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %8, align 8
  %131 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ib_umem_release(i32 %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %125, %49, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(i32) #1

declare dso_local i32 @ib_umem_get(i32, i64, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlx5_ib_cont_pages(i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_get_buf_offset(i64, i32, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @mlx5_ib_db_map_user(%struct.mlx5_ib_ucontext*, i32, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
