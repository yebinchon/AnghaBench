; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_create_cq_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_create_cq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_cq = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_ib_create_cq = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"addr 0x%llx, size %u, npages %d, page_shift %d, ncont %d\0A\00", align 1
@create_cq_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32* null, align 8
@log_page_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_udata*, %struct.ib_ucontext*, %struct.mlx5_ib_cq*, i32, i32**, i32*, i32*, i32*)* @create_cq_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cq_user(%struct.mlx5_ib_dev* %0, %struct.ib_udata* %1, %struct.ib_ucontext* %2, %struct.mlx5_ib_cq* %3, i32 %4, i32** %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.ib_udata*, align 8
  %13 = alloca %struct.ib_ucontext*, align 8
  %14 = alloca %struct.mlx5_ib_cq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.mlx5_ib_create_cq, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %11, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %12, align 8
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %13, align 8
  store %struct.mlx5_ib_cq* %3, %struct.mlx5_ib_cq** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32** %5, i32*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load %struct.ib_udata*, %struct.ib_udata** %12, align 8
  %29 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 4
  %33 = icmp ult i64 %32, 32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i64 24, i64 32
  store i64 %35, i64* %21, align 8
  %36 = load %struct.ib_udata*, %struct.ib_udata** %12, align 8
  %37 = load i64, i64* %21, align 8
  %38 = call i64 @ib_copy_from_udata(%struct.mlx5_ib_create_cq* %20, %struct.ib_udata* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %194

43:                                               ; preds = %9
  %44 = load i64, i64* %21, align 8
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %194

53:                                               ; preds = %46, %43
  %54 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 64
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 128
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %194

64:                                               ; preds = %57, %53
  %65 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %17, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ib_ucontext*, %struct.ib_ucontext** %13, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %71, %73
  %75 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %76 = call i32 @ib_umem_get(%struct.ib_ucontext* %68, i64 %70, i32 %74, i32 %75, i32 1)
  %77 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %64
  %87 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %27, align 4
  %92 = load i32, i32* %27, align 4
  store i32 %92, i32* %10, align 4
  br label %194

93:                                               ; preds = %64
  %94 = load %struct.ib_ucontext*, %struct.ib_ucontext** %13, align 8
  %95 = call %struct.TYPE_10__* @to_mucontext(%struct.ib_ucontext* %94)
  %96 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %98, i32 0, i32 1
  %100 = call i32 @mlx5_ib_db_map_user(%struct.TYPE_10__* %95, i32 %97, i32* %99)
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %27, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %187

104:                                              ; preds = %93
  %105 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %106 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @mlx5_ib_cont_pages(i32 %108, i64 %110, i32* %24, i32* %22, i32* %25, i32* null)
  %112 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = getelementptr inbounds %struct.mlx5_ib_create_cq, %struct.mlx5_ib_create_cq* %20, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %115, %117
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %25, align 4
  %122 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %112, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %114, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @create_cq_in, align 4
  %124 = call i32 @MLX5_ST_SZ_BYTES(i32 %123)
  %125 = load i32, i32* @create_cq_in, align 4
  %126 = load i32*, i32** %23, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MLX5_FLD_SZ_BYTES(i32 %125, i32 %128)
  %130 = load i32, i32* %25, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %124, %131
  %133 = load i32*, i32** %19, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32* @mlx5_vzalloc(i32 %135)
  %137 = load i32**, i32*** %16, align 8
  store i32* %136, i32** %137, align 8
  %138 = load i32**, i32*** %16, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %104
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %27, align 4
  br label %181

144:                                              ; preds = %104
  %145 = load i32, i32* @create_cq_in, align 4
  %146 = load i32**, i32*** %16, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = call i8* @MLX5_ADDR_OF(i32 %145, i32* %147, i32* %148)
  %150 = bitcast i8* %149 to i32*
  store i32* %150, i32** %23, align 8
  %151 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %152 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %153 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32*, i32** %23, align 8
  %158 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %151, i32 %155, i32 %156, i32* %157, i32 0)
  %159 = load i32, i32* @create_cq_in, align 4
  %160 = load i32**, i32*** %16, align 8
  %161 = load i32*, i32** %160, align 8
  %162 = load i32*, i32** @cq_context, align 8
  %163 = call i8* @MLX5_ADDR_OF(i32 %159, i32* %161, i32* %162)
  store i8* %163, i8** %26, align 8
  %164 = load i8*, i8** %26, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = load i32, i32* @log_page_size, align 4
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %170 = sub nsw i64 %168, %169
  %171 = call i32 @MLX5_SET(i8* %164, i8* %165, i32 %166, i64 %170)
  %172 = load %struct.ib_ucontext*, %struct.ib_ucontext** %13, align 8
  %173 = call %struct.TYPE_10__* @to_mucontext(%struct.ib_ucontext* %172)
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %18, align 8
  store i32 %179, i32* %180, align 4
  store i32 0, i32* %10, align 4
  br label %194

181:                                              ; preds = %141
  %182 = load %struct.ib_ucontext*, %struct.ib_ucontext** %13, align 8
  %183 = call %struct.TYPE_10__* @to_mucontext(%struct.ib_ucontext* %182)
  %184 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %185 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %184, i32 0, i32 1
  %186 = call i32 @mlx5_ib_db_unmap_user(%struct.TYPE_10__* %183, i32* %185)
  br label %187

187:                                              ; preds = %181, %103
  %188 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %14, align 8
  %189 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ib_umem_release(i32 %191)
  %193 = load i32, i32* %27, align 4
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %187, %144, %86, %61, %50, %40
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

declare dso_local i64 @ib_copy_from_udata(%struct.mlx5_ib_create_cq*, %struct.ib_udata*, i64) #1

declare dso_local i32 @ib_umem_get(%struct.ib_ucontext*, i64, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlx5_ib_db_map_user(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @mlx5_ib_cont_pages(i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @mlx5_ib_db_unmap_user(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
