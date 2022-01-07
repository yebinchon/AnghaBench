; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { i32, %struct.TYPE_4__, %struct.mlx5_ib_dev*, %struct.ib_umem* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_mr = type { i32 }
%struct.ib_umem = type { i32 }
%struct.TYPE_3__ = type { i32 }

@pg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@create_mkey_in = common dso_local global i8* null, align 8
@klm_pas_mtt = common dso_local global i32 0, align 4
@MLX5_IB_MTT_PRESENT = common dso_local global i32 0, align 4
@pg_access = common dso_local global %struct.ib_pd* null, align 8
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode = common dso_local global %struct.ib_pd* null, align 8
@MLX5_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@a = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@rw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@rr = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@lw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@lr = common dso_local global %struct.ib_pd* null, align 8
@start_addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@bsf_octword_size = common dso_local global %struct.ib_pd* null, align 8
@translations_octword_size = common dso_local global %struct.ib_pd* null, align 8
@log_page_size = common dso_local global %struct.ib_pd* null, align 8
@qpn = common dso_local global %struct.ib_pd* null, align 8
@translations_octword_actual_size = common dso_local global %struct.ib_pd* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"create mkey failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mkey = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_mr* (%struct.ib_mr*, %struct.ib_pd*, i32, i32, %struct.ib_umem*, i32, i32, i32)* @reg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr* %0, %struct.ib_pd* %1, i32 %2, i32 %3, %struct.ib_umem* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_umem*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.mlx5_ib_mr*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.ib_umem* %4, %struct.ib_umem** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %27 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mlx5_ib_dev* @to_mdev(i32 %28)
  store %struct.mlx5_ib_dev* %29, %struct.mlx5_ib_dev** %18, align 8
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @pg, align 4
  %34 = call i32 @MLX5_CAP_GEN(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %25, align 4
  %39 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %40 = icmp ne %struct.ib_mr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %8
  %42 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %43 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %42)
  br label %47

44:                                               ; preds = %8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.mlx5_ib_mr* @kzalloc(i32 24, i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi %struct.mlx5_ib_mr* [ %43, %41 ], [ %46, %44 ]
  store %struct.mlx5_ib_mr* %48, %struct.mlx5_ib_mr** %19, align 8
  %49 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %50 = icmp ne %struct.mlx5_ib_mr* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %53)
  store %struct.mlx5_ib_mr* %54, %struct.mlx5_ib_mr** %9, align 8
  br label %250

55:                                               ; preds = %47
  %56 = load i8*, i8** @create_mkey_in, align 8
  %57 = call i32 @MLX5_ST_SZ_BYTES(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = mul i64 %63, 2
  %65 = add i64 %58, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = call i8* @mlx5_vzalloc(i32 %67)
  store i8* %68, i8** %23, align 8
  %69 = load i8*, i8** %23, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %24, align 4
  br label %241

74:                                               ; preds = %55
  %75 = load i8*, i8** @create_mkey_in, align 8
  %76 = load i8*, i8** %23, align 8
  %77 = load i32, i32* @klm_pas_mtt, align 4
  %78 = call i8* @MLX5_ADDR_OF(i8* %75, i8* %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** %20, align 8
  %80 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %81 = load %struct.ib_umem*, %struct.ib_umem** %14, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %25, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @MLX5_IB_MTT_PRESENT, align 4
  br label %89

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %80, %struct.ib_umem* %81, i32 %82, i32* %83, i32 %90)
  %92 = load i8*, i8** @create_mkey_in, align 8
  %93 = load i8*, i8** %23, align 8
  %94 = load %struct.ib_pd*, %struct.ib_pd** @pg_access, align 8
  %95 = load i32, i32* %25, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @MLX5_SET(i8* %92, i8* %93, %struct.ib_pd* %94, i32 %99)
  %101 = load i8*, i8** @create_mkey_in, align 8
  %102 = load i8*, i8** %23, align 8
  %103 = load i32, i32* @memory_key_mkey_entry, align 4
  %104 = call i8* @MLX5_ADDR_OF(i8* %101, i8* %102, i32 %103)
  store i8* %104, i8** %21, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = load %struct.ib_pd*, %struct.ib_pd** @access_mode, align 8
  %108 = load i32, i32* @MLX5_ACCESS_MODE_MTT, align 4
  %109 = call i32 @MLX5_SET(i8* %105, i8* %106, %struct.ib_pd* %107, i32 %108)
  %110 = load i8*, i8** %21, align 8
  %111 = load i8*, i8** %21, align 8
  %112 = load %struct.ib_pd*, %struct.ib_pd** @a, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @MLX5_SET(i8* %110, i8* %111, %struct.ib_pd* %112, i32 %119)
  %121 = load i8*, i8** %21, align 8
  %122 = load i8*, i8** %21, align 8
  %123 = load %struct.ib_pd*, %struct.ib_pd** @rw, align 8
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @MLX5_SET(i8* %121, i8* %122, %struct.ib_pd* %123, i32 %130)
  %132 = load i8*, i8** %21, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = load %struct.ib_pd*, %struct.ib_pd** @rr, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @MLX5_SET(i8* %132, i8* %133, %struct.ib_pd* %134, i32 %141)
  %143 = load i8*, i8** %21, align 8
  %144 = load i8*, i8** %21, align 8
  %145 = load %struct.ib_pd*, %struct.ib_pd** @lw, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @MLX5_SET(i8* %143, i8* %144, %struct.ib_pd* %145, i32 %152)
  %154 = load i8*, i8** %21, align 8
  %155 = load i8*, i8** %21, align 8
  %156 = load %struct.ib_pd*, %struct.ib_pd** @lr, align 8
  %157 = call i32 @MLX5_SET(i8* %154, i8* %155, %struct.ib_pd* %156, i32 1)
  %158 = load i8*, i8** %21, align 8
  %159 = load i8*, i8** %21, align 8
  %160 = load i32, i32* @start_addr, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @MLX5_SET64(i8* %158, i8* %159, i32 %160, i32 %161)
  %163 = load i8*, i8** %21, align 8
  %164 = load i8*, i8** %21, align 8
  %165 = load i32, i32* @len, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @MLX5_SET64(i8* %163, i8* %164, i32 %165, i32 %166)
  %168 = load i8*, i8** %21, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %171 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %172 = call %struct.TYPE_3__* @to_mpd(%struct.ib_pd* %171)
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @MLX5_SET(i8* %168, i8* %169, %struct.ib_pd* %170, i32 %174)
  %176 = load i8*, i8** %21, align 8
  %177 = load i8*, i8** %21, align 8
  %178 = load %struct.ib_pd*, %struct.ib_pd** @bsf_octword_size, align 8
  %179 = call i32 @MLX5_SET(i8* %176, i8* %177, %struct.ib_pd* %178, i32 0)
  %180 = load i8*, i8** %21, align 8
  %181 = load i8*, i8** %21, align 8
  %182 = load %struct.ib_pd*, %struct.ib_pd** @translations_octword_size, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %16, align 4
  %186 = shl i32 1, %185
  %187 = call i32 @get_octo_len(i32 %183, i32 %184, i32 %186)
  %188 = call i32 @MLX5_SET(i8* %180, i8* %181, %struct.ib_pd* %182, i32 %187)
  %189 = load i8*, i8** %21, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = load %struct.ib_pd*, %struct.ib_pd** @log_page_size, align 8
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @MLX5_SET(i8* %189, i8* %190, %struct.ib_pd* %191, i32 %192)
  %194 = load i8*, i8** %21, align 8
  %195 = load i8*, i8** %21, align 8
  %196 = load %struct.ib_pd*, %struct.ib_pd** @qpn, align 8
  %197 = call i32 @MLX5_SET(i8* %194, i8* %195, %struct.ib_pd* %196, i32 16777215)
  %198 = load i8*, i8** @create_mkey_in, align 8
  %199 = load i8*, i8** %23, align 8
  %200 = load %struct.ib_pd*, %struct.ib_pd** @translations_octword_actual_size, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %16, align 4
  %204 = shl i32 1, %203
  %205 = call i32 @get_octo_len(i32 %201, i32 %202, i32 %204)
  %206 = call i32 @MLX5_SET(i8* %198, i8* %199, %struct.ib_pd* %200, i32 %205)
  %207 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %208 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %211 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %210, i32 0, i32 1
  %212 = load i8*, i8** %23, align 8
  %213 = load i32, i32* %22, align 4
  %214 = call i32 @mlx5_core_create_mkey(i32 %209, %struct.TYPE_4__* %211, i8* %212, i32 %213)
  store i32 %214, i32* %24, align 4
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %89
  %218 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %219 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %238

220:                                              ; preds = %89
  %221 = load %struct.ib_umem*, %struct.ib_umem** %14, align 8
  %222 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %223 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %222, i32 0, i32 3
  store %struct.ib_umem* %221, %struct.ib_umem** %223, align 8
  %224 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %225 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %226 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %225, i32 0, i32 2
  store %struct.mlx5_ib_dev* %224, %struct.mlx5_ib_dev** %226, align 8
  %227 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %228 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load i8*, i8** %23, align 8
  %230 = call i32 @kvfree(i8* %229)
  %231 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %232 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %233 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %231, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %235)
  %237 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  store %struct.mlx5_ib_mr* %237, %struct.mlx5_ib_mr** %9, align 8
  br label %250

238:                                              ; preds = %217
  %239 = load i8*, i8** %23, align 8
  %240 = call i32 @kvfree(i8* %239)
  br label %241

241:                                              ; preds = %238, %71
  %242 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %243 = icmp ne %struct.ib_mr* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %246 = call i32 @kfree(%struct.mlx5_ib_mr* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %24, align 4
  %249 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %248)
  store %struct.mlx5_ib_mr* %249, %struct.mlx5_ib_mr** %9, align 8
  br label %250

250:                                              ; preds = %247, %220, %51
  %251 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  ret %struct.mlx5_ib_mr* %251
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, %struct.ib_umem*, i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @get_octo_len(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
