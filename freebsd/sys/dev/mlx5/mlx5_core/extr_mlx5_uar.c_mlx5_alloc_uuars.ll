; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_alloc_uuars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_alloc_uuars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_uuar_info = type { i32, %struct.mlx5_bf*, %struct.mlx5_bf*, %struct.mlx5_bf*, %struct.mlx5_bf*, i32, i32 }
%struct.mlx5_bf = type { i32, i32, i64, i32, i32, i32, i32, i64, i32*, i32, %struct.mlx5_bf* }

@NUM_DRIVER_UARS = common dso_local global i32 0, align 4
@MLX5_BF_REGS_PER_PAGE = common dso_local global i32 0, align 4
@NUM_LOW_LAT_UUARS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"allocated uar index 0x%x, mmaped at %p\0A\00", align 1
@log_bf_reg_size = common dso_local global i32 0, align 4
@MLX5_BF_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_uuars(%struct.mlx5_core_dev* %0, %struct.mlx5_uuar_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_uuar_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_bf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_uuar_info* %1, %struct.mlx5_uuar_info** %5, align 8
  %11 = load i32, i32* @NUM_DRIVER_UARS, align 4
  %12 = load i32, i32* @MLX5_BF_REGS_PER_PAGE, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @NUM_DRIVER_UARS, align 4
  %15 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @NUM_LOW_LAT_UUARS, align 4
  %18 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %20, i32 0, i32 5
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kcalloc(i32 %25, i32 64, i32 %26)
  %28 = bitcast i8* %27 to %struct.mlx5_bf*
  %29 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %29, i32 0, i32 1
  store %struct.mlx5_bf* %28, %struct.mlx5_bf** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 64, i32 %32)
  %34 = bitcast i8* %33 to %struct.mlx5_bf*
  %35 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %35, i32 0, i32 2
  store %struct.mlx5_bf* %34, %struct.mlx5_bf** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BITS_TO_LONGS(i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i32 %38, i32 64, i32 %39)
  %41 = bitcast i8* %40 to %struct.mlx5_bf*
  %42 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %42, i32 0, i32 3
  store %struct.mlx5_bf* %41, %struct.mlx5_bf** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kcalloc(i32 %44, i32 64, i32 %45)
  %47 = bitcast i8* %46 to %struct.mlx5_bf*
  %48 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %48, i32 0, i32 4
  store %struct.mlx5_bf* %47, %struct.mlx5_bf** %49, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %137, %2
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %140

56:                                               ; preds = %50
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %58, i32 0, i32 1
  %60 = load %struct.mlx5_bf*, %struct.mlx5_bf** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %60, i64 %62
  %64 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %63, i32 0, i32 2
  %65 = call i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev* %57, i64* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %213

69:                                               ; preds = %56
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_resource_start(i32 %72, i32 0)
  %74 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %74, i32 0, i32 1
  %76 = load %struct.mlx5_bf*, %struct.mlx5_bf** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %76, i64 %78
  %80 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = add nsw i32 %73, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @ioremap(i32 %86, i32 %87)
  %89 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %89, i32 0, i32 1
  %91 = load %struct.mlx5_bf*, %struct.mlx5_bf** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %91, i64 %93
  %95 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %94, i32 0, i32 3
  store i32 %88, i32* %95, align 8
  %96 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %96, i32 0, i32 1
  %98 = load %struct.mlx5_bf*, %struct.mlx5_bf** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %98, i64 %100
  %102 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %69
  %106 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %107 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %107, i32 0, i32 1
  %109 = load %struct.mlx5_bf*, %struct.mlx5_bf** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %109, i64 %111
  %113 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev* %106, i64 %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %213

118:                                              ; preds = %69
  %119 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %120 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %121 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %120, i32 0, i32 1
  %122 = load %struct.mlx5_bf*, %struct.mlx5_bf** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %122, i64 %124
  %126 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %129 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %128, i32 0, i32 1
  %130 = load %struct.mlx5_bf*, %struct.mlx5_bf** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %130, i64 %132
  %134 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %127, i32 %135)
  br label %137

137:                                              ; preds = %118
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %50

140:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %209, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %212

145:                                              ; preds = %141
  %146 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %147 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %146, i32 0, i32 2
  %148 = load %struct.mlx5_bf*, %struct.mlx5_bf** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %148, i64 %150
  store %struct.mlx5_bf* %151, %struct.mlx5_bf** %7, align 8
  %152 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %153 = load i32, i32* @log_bf_reg_size, align 4
  %154 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %152, i32 %153)
  %155 = shl i32 1, %154
  %156 = sdiv i32 %155, 2
  %157 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %158 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %160 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %159, i32 0, i32 1
  %161 = load %struct.mlx5_bf*, %struct.mlx5_bf** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @MLX5_BF_REGS_PER_PAGE, align 4
  %164 = sdiv i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %161, i64 %165
  %167 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %168 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %167, i32 0, i32 10
  store %struct.mlx5_bf* %166, %struct.mlx5_bf** %168, align 8
  %169 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %169, i32 0, i32 1
  %171 = load %struct.mlx5_bf*, %struct.mlx5_bf** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @MLX5_BF_REGS_PER_PAGE, align 4
  %174 = sdiv i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %171, i64 %175
  %177 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %180 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 8
  %181 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %182 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %181, i32 0, i32 8
  store i32* null, i32** %182, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @MLX5_BF_REGS_PER_PAGE, align 4
  %185 = srem i32 %183, %184
  %186 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %187 = load i32, i32* @log_bf_reg_size, align 4
  %188 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %186, i32 %187)
  %189 = shl i32 1, %188
  %190 = mul nsw i32 %185, %189
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @MLX5_BF_OFFSET, align 8
  %193 = add nsw i64 %191, %192
  %194 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %195 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %194, i32 0, i32 7
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @need_uuar_lock(i32 %196)
  %198 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %199 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  %200 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %201 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %200, i32 0, i32 5
  %202 = call i32 @spin_lock_init(i32* %201)
  %203 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %204 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %203, i32 0, i32 4
  %205 = call i32 @spin_lock_init(i32* %204)
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.mlx5_bf*, %struct.mlx5_bf** %7, align 8
  %208 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %145
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %141

212:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %260

213:                                              ; preds = %105, %68
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %239, %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %216
  %220 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %221 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %220, i32 0, i32 1
  %222 = load %struct.mlx5_bf*, %struct.mlx5_bf** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %222, i64 %224
  %226 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @iounmap(i32 %227)
  %229 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %230 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %231 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %230, i32 0, i32 1
  %232 = load %struct.mlx5_bf*, %struct.mlx5_bf** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %232, i64 %234
  %236 = getelementptr inbounds %struct.mlx5_bf, %struct.mlx5_bf* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev* %229, i64 %237)
  br label %239

239:                                              ; preds = %219
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %10, align 4
  br label %216

242:                                              ; preds = %216
  %243 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %244 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %243, i32 0, i32 4
  %245 = load %struct.mlx5_bf*, %struct.mlx5_bf** %244, align 8
  %246 = call i32 @kfree(%struct.mlx5_bf* %245)
  %247 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %248 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %247, i32 0, i32 3
  %249 = load %struct.mlx5_bf*, %struct.mlx5_bf** %248, align 8
  %250 = call i32 @kfree(%struct.mlx5_bf* %249)
  %251 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %252 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %251, i32 0, i32 2
  %253 = load %struct.mlx5_bf*, %struct.mlx5_bf** %252, align 8
  %254 = call i32 @kfree(%struct.mlx5_bf* %253)
  %255 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %256 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %255, i32 0, i32 1
  %257 = load %struct.mlx5_bf*, %struct.mlx5_bf** %256, align 8
  %258 = call i32 @kfree(%struct.mlx5_bf* %257)
  %259 = load i32, i32* %9, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %242, %212
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev*, i64*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev*, i64) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i64, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @need_uuar_lock(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_bf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
