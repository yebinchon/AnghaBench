; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.mlx5_core_cq }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mlx5_core_cq = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_cq_param = type { i32 }

@create_cq_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32 0, align 4
@pas = common dso_local global i32 0, align 4
@c_eqn = common dso_local global i32 0, align 4
@uar_page = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_cq*, %struct.mlx5e_cq_param*, i32)* @mlx5e_enable_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_enable_cq(%struct.mlx5e_cq* %0, %struct.mlx5e_cq_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_cq*, align 8
  %6 = alloca %struct.mlx5e_cq_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_cq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %5, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %15, i32 0, i32 2
  store %struct.mlx5_core_cq* %16, %struct.mlx5_core_cq** %8, align 8
  %17 = load i32, i32* @create_cq_in, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 %19, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @mlx5_vzalloc(i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %119

36:                                               ; preds = %3
  %37 = load i32, i32* @create_cq_in, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @cq_context, align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %37, i8* %38, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i8* %41, i32 %44, i32 4)
  %46 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* @create_cq_in, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @pas, align 4
  %52 = call i8* @MLX5_ADDR_OF(i32 %49, i8* %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = call i32 @mlx5_fill_page_array(%struct.TYPE_10__* %48, i32* %53)
  %55 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlx5_vector2eqn(i32 %59, i32 %60, i32* %13, i32* %12)
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @c_eqn, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @MLX5_SET(i8* %62, i8* %63, i32 %64, i32 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @uar_page, align 4
  %70 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MLX5_SET(i8* %67, i8* %68, i32 %69, i32 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* @log_page_size, align 4
  %79 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @MLX5_SET(i8* %76, i8* %77, i32 %78, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @dbr_addr, align 4
  %90 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @MLX5_SET64(i8* %87, i8* %88, i32 %89, i32 %94)
  %96 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @mlx5_core_create_cq(i32 %100, %struct.mlx5_core_cq* %101, i8* %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @kvfree(i8* %105)
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %36
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  br label %119

111:                                              ; preds = %36
  %112 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %113 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %5, align 8
  %114 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = call i32 @MLX5_GET_DOORBELL_LOCK(i32* %116)
  %118 = call i32 @mlx5e_cq_arm(%struct.mlx5e_cq* %112, i32 %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %111, %109, %33
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_array(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mlx5_vector2eqn(i32, i32, i32*, i32*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_cq(i32, %struct.mlx5_core_cq*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5e_cq_arm(%struct.mlx5e_cq*, i32) #1

declare dso_local i32 @MLX5_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
