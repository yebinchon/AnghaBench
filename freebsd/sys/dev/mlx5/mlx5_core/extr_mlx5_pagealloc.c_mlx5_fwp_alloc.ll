; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_page = type { i32, i64, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SIZE = common dso_local global i32 0, align 4
@mlx5_fwp_load_mem_cb = common dso_local global i32 0, align 4
@MLX5_LOAD_ST_NONE = common dso_local global i64 0, align 8
@MLX5_LOAD_ST_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fw_page* @mlx5_fwp_alloc(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fw_page*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fw_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.mlx5_fw_page* @kzalloc(i32 32, i32 %14)
  store %struct.mlx5_fw_page* %15, %struct.mlx5_fw_page** %8, align 8
  %16 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %17 = icmp ne %struct.mlx5_fw_page* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %20 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %20, i32 0, i32 4
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %21, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  store %struct.mlx5_fw_page* %23, %struct.mlx5_fw_page** %4, align 8
  br label %201

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.mlx5_fw_page* null, %struct.mlx5_fw_page** %4, align 8
  br label %201

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 32, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.mlx5_fw_page* @kzalloc(i32 %34, i32 %35)
  store %struct.mlx5_fw_page* %36, %struct.mlx5_fw_page** %8, align 8
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @sx_xlock(i32* %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %151, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %154

45:                                               ; preds = %41
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %47 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %47, i64 %49
  %51 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %50, i32 0, i32 4
  store %struct.mlx5_core_dev* %46, %struct.mlx5_core_dev** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub i32 %52, %53
  %55 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %55, i64 %57
  %59 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %64, i64 %66
  %68 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %67, i32 0, i32 3
  %69 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %70 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %72, i64 %74
  %76 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %75, i32 0, i32 2
  %77 = call i32 @bus_dmamem_alloc(i32 %63, i32* %68, i32 %71, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %45
  br label %160

81:                                               ; preds = %45
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %83 = call i32 @MLX5_DMA_LOCK(%struct.mlx5_core_dev* %82)
  %84 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %88, i64 %90
  %92 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %94, i64 %96
  %98 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %101 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %101, i64 %103
  %105 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %106 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @bus_dmamap_load(i32 %87, i32 %93, i32 %99, i32 %100, i32* @mlx5_fwp_load_mem_cb, %struct.mlx5_fw_page* %104, i32 %107)
  br label %109

109:                                              ; preds = %118, %81
  %110 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %110, i64 %112
  %114 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MLX5_LOAD_ST_NONE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %120 = call i32 @MLX5_DMA_WAIT(%struct.mlx5_core_dev* %119)
  br label %109

121:                                              ; preds = %109
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %123 = call i32 @MLX5_DMA_UNLOCK(%struct.mlx5_core_dev* %122)
  %124 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %124, i64 %126
  %128 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MLX5_LOAD_ST_SUCCESS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %121
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %137, i64 %139
  %141 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %143, i64 %145
  %147 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bus_dmamem_free(i32 %136, i32 %142, i32 %148)
  br label %160

150:                                              ; preds = %121
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %41

154:                                              ; preds = %41
  %155 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %156 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = call i32 @sx_xunlock(i32* %157)
  %159 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  store %struct.mlx5_fw_page* %159, %struct.mlx5_fw_page** %4, align 8
  br label %201

160:                                              ; preds = %132, %80
  br label %161

161:                                              ; preds = %165, %160
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, -1
  store i32 %163, i32* %9, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %167 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %170, i64 %172
  %174 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @bus_dmamap_unload(i32 %169, i32 %175)
  %177 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %178 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %181, i64 %183
  %185 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %187, i64 %189
  %191 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @bus_dmamem_free(i32 %180, i32 %186, i32 %192)
  br label %161

194:                                              ; preds = %161
  %195 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %196 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = call i32 @sx_xunlock(i32* %197)
  %199 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %200 = call i32 @kfree(%struct.mlx5_fw_page* %199)
  store %struct.mlx5_fw_page* null, %struct.mlx5_fw_page** %4, align 8
  br label %201

201:                                              ; preds = %194, %154, %29, %22
  %202 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %4, align 8
  ret %struct.mlx5_fw_page* %202
}

declare dso_local %struct.mlx5_fw_page* @kzalloc(i32, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @MLX5_DMA_LOCK(%struct.mlx5_core_dev*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32*, %struct.mlx5_fw_page*, i32) #1

declare dso_local i32 @MLX5_DMA_WAIT(%struct.mlx5_core_dev*) #1

declare dso_local i32 @MLX5_DMA_UNLOCK(%struct.mlx5_core_dev*) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fw_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
