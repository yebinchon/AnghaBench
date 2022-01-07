; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.thread = type { i32 }
%struct.t4_reg = type { i32, i32, i32 }
%struct.t4_regdump = type { i32, i32 }
%struct.t4_filter = type { i32 }
%struct.t4_sge_context = type { i32 }
%struct.t4_data = type { i32 }
%struct.t4_mem_range = type { i32 }
%struct.t4_i2c_data = type { i32 }
%struct.t4_sched_params = type { i32 }
%struct.t4_sched_queue = type { i32 }
%struct.t4_tracer = type { i32 }
%struct.t4_bootrom = type { i32 }
%struct.t4_cudbg_dump = type { i32 }
%struct.t4_offload_policy = type { i32 }

@PRIV_DRIVER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @t4_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca %struct.t4_reg*, align 8
  %15 = alloca %struct.t4_reg*, align 8
  %16 = alloca %struct.t4_regdump*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %13, align 8
  %22 = load %struct.thread*, %struct.thread** %11, align 8
  %23 = load i32, i32* @PRIV_DRIVER, align 4
  %24 = call i32 @priv_check(%struct.thread* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %277

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  switch i64 %30, label %273 [
    i64 146, label %31
    i64 132, label %79
    i64 135, label %138
    i64 144, label %176
    i64 130, label %181
    i64 145, label %187
    i64 131, label %192
    i64 147, label %197
    i64 141, label %202
    i64 136, label %207
    i64 142, label %212
    i64 143, label %217
    i64 149, label %222
    i64 134, label %228
    i64 133, label %233
    i64 140, label %238
    i64 128, label %243
    i64 137, label %248
    i64 139, label %253
    i64 138, label %258
    i64 148, label %263
    i64 129, label %268
  ]

31:                                               ; preds = %29
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to %struct.t4_reg*
  store %struct.t4_reg* %33, %struct.t4_reg** %14, align 8
  %34 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %35 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %41 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.adapter*, %struct.adapter** %13, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %31
  %48 = load i32, i32* @EFAULT, align 4
  store i32 %48, i32* %6, align 4
  br label %277

49:                                               ; preds = %39
  %50 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %51 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.adapter*, %struct.adapter** %13, align 8
  %56 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %57 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %58)
  %60 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %61 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %78

62:                                               ; preds = %49
  %63 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %64 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.adapter*, %struct.adapter** %13, align 8
  %69 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %70 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @t4_read_reg64(%struct.adapter* %68, i32 %71)
  %73 = load %struct.t4_reg*, %struct.t4_reg** %14, align 8
  %74 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %277

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %54
  br label %275

79:                                               ; preds = %29
  %80 = load i64, i64* %9, align 8
  %81 = inttoptr i64 %80 to %struct.t4_reg*
  store %struct.t4_reg* %81, %struct.t4_reg** %15, align 8
  %82 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %83 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %89 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.adapter*, %struct.adapter** %13, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87, %79
  %96 = load i32, i32* @EFAULT, align 4
  store i32 %96, i32* %6, align 4
  br label %277

97:                                               ; preds = %87
  %98 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %99 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %104 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, -4294967296
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %6, align 4
  br label %277

111:                                              ; preds = %102
  %112 = load %struct.adapter*, %struct.adapter** %13, align 8
  %113 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %114 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %117 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @t4_write_reg(%struct.adapter* %112, i32 %115, i32 %118)
  br label %137

120:                                              ; preds = %97
  %121 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %122 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 8
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.adapter*, %struct.adapter** %13, align 8
  %127 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %128 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.t4_reg*, %struct.t4_reg** %15, align 8
  %131 = getelementptr inbounds %struct.t4_reg, %struct.t4_reg* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @t4_write_reg64(%struct.adapter* %126, i32 %129, i32 %132)
  br label %136

134:                                              ; preds = %120
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %6, align 4
  br label %277

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %111
  br label %275

138:                                              ; preds = %29
  %139 = load i64, i64* %9, align 8
  %140 = inttoptr i64 %139 to %struct.t4_regdump*
  store %struct.t4_regdump* %140, %struct.t4_regdump** %16, align 8
  %141 = load %struct.adapter*, %struct.adapter** %13, align 8
  %142 = call i32 @t4_get_regs_len(%struct.adapter* %141)
  store i32 %142, i32* %17, align 4
  %143 = load %struct.t4_regdump*, %struct.t4_regdump** %16, align 8
  %144 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.t4_regdump*, %struct.t4_regdump** %16, align 8
  %151 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @ENOBUFS, align 4
  store i32 %152, i32* %6, align 4
  br label %277

153:                                              ; preds = %138
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.t4_regdump*, %struct.t4_regdump** %16, align 8
  %156 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @M_CXGBE, align 4
  %159 = load i32, i32* @M_WAITOK, align 4
  %160 = load i32, i32* @M_ZERO, align 4
  %161 = or i32 %159, %160
  %162 = call i32* @malloc(i32 %157, i32 %158, i32 %161)
  store i32* %162, i32** %18, align 8
  %163 = load %struct.adapter*, %struct.adapter** %13, align 8
  %164 = load %struct.t4_regdump*, %struct.t4_regdump** %16, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @get_regs(%struct.adapter* %163, %struct.t4_regdump* %164, i32* %165)
  %167 = load i32*, i32** %18, align 8
  %168 = load %struct.t4_regdump*, %struct.t4_regdump** %16, align 8
  %169 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @copyout(i32* %167, i32 %170, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32*, i32** %18, align 8
  %174 = load i32, i32* @M_CXGBE, align 4
  %175 = call i32 @free(i32* %173, i32 %174)
  br label %275

176:                                              ; preds = %29
  %177 = load %struct.adapter*, %struct.adapter** %13, align 8
  %178 = load i64, i64* %9, align 8
  %179 = inttoptr i64 %178 to i32*
  %180 = call i32 @get_filter_mode(%struct.adapter* %177, i32* %179)
  store i32 %180, i32* %12, align 4
  br label %275

181:                                              ; preds = %29
  %182 = load %struct.adapter*, %struct.adapter** %13, align 8
  %183 = load i64, i64* %9, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @set_filter_mode(%struct.adapter* %182, i32 %185)
  store i32 %186, i32* %12, align 4
  br label %275

187:                                              ; preds = %29
  %188 = load %struct.adapter*, %struct.adapter** %13, align 8
  %189 = load i64, i64* %9, align 8
  %190 = inttoptr i64 %189 to %struct.t4_filter*
  %191 = call i32 @get_filter(%struct.adapter* %188, %struct.t4_filter* %190)
  store i32 %191, i32* %12, align 4
  br label %275

192:                                              ; preds = %29
  %193 = load %struct.adapter*, %struct.adapter** %13, align 8
  %194 = load i64, i64* %9, align 8
  %195 = inttoptr i64 %194 to %struct.t4_filter*
  %196 = call i32 @set_filter(%struct.adapter* %193, %struct.t4_filter* %195)
  store i32 %196, i32* %12, align 4
  br label %275

197:                                              ; preds = %29
  %198 = load %struct.adapter*, %struct.adapter** %13, align 8
  %199 = load i64, i64* %9, align 8
  %200 = inttoptr i64 %199 to %struct.t4_filter*
  %201 = call i32 @del_filter(%struct.adapter* %198, %struct.t4_filter* %200)
  store i32 %201, i32* %12, align 4
  br label %275

202:                                              ; preds = %29
  %203 = load %struct.adapter*, %struct.adapter** %13, align 8
  %204 = load i64, i64* %9, align 8
  %205 = inttoptr i64 %204 to %struct.t4_sge_context*
  %206 = call i32 @get_sge_context(%struct.adapter* %203, %struct.t4_sge_context* %205)
  store i32 %206, i32* %12, align 4
  br label %275

207:                                              ; preds = %29
  %208 = load %struct.adapter*, %struct.adapter** %13, align 8
  %209 = load i64, i64* %9, align 8
  %210 = inttoptr i64 %209 to %struct.t4_data*
  %211 = call i32 @load_fw(%struct.adapter* %208, %struct.t4_data* %210)
  store i32 %211, i32* %12, align 4
  br label %275

212:                                              ; preds = %29
  %213 = load %struct.adapter*, %struct.adapter** %13, align 8
  %214 = load i64, i64* %9, align 8
  %215 = inttoptr i64 %214 to %struct.t4_mem_range*
  %216 = call i32 @read_card_mem(%struct.adapter* %213, i32 2, %struct.t4_mem_range* %215)
  store i32 %216, i32* %12, align 4
  br label %275

217:                                              ; preds = %29
  %218 = load %struct.adapter*, %struct.adapter** %13, align 8
  %219 = load i64, i64* %9, align 8
  %220 = inttoptr i64 %219 to %struct.t4_i2c_data*
  %221 = call i32 @read_i2c(%struct.adapter* %218, %struct.t4_i2c_data* %220)
  store i32 %221, i32* %12, align 4
  br label %275

222:                                              ; preds = %29
  %223 = load %struct.adapter*, %struct.adapter** %13, align 8
  %224 = load i64, i64* %9, align 8
  %225 = inttoptr i64 %224 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @clear_stats(%struct.adapter* %223, i32 %226)
  store i32 %227, i32* %12, align 4
  br label %275

228:                                              ; preds = %29
  %229 = load %struct.adapter*, %struct.adapter** %13, align 8
  %230 = load i64, i64* %9, align 8
  %231 = inttoptr i64 %230 to %struct.t4_sched_params*
  %232 = call i32 @t4_set_sched_class(%struct.adapter* %229, %struct.t4_sched_params* %231)
  store i32 %232, i32* %12, align 4
  br label %275

233:                                              ; preds = %29
  %234 = load %struct.adapter*, %struct.adapter** %13, align 8
  %235 = load i64, i64* %9, align 8
  %236 = inttoptr i64 %235 to %struct.t4_sched_queue*
  %237 = call i32 @t4_set_sched_queue(%struct.adapter* %234, %struct.t4_sched_queue* %236)
  store i32 %237, i32* %12, align 4
  br label %275

238:                                              ; preds = %29
  %239 = load %struct.adapter*, %struct.adapter** %13, align 8
  %240 = load i64, i64* %9, align 8
  %241 = inttoptr i64 %240 to %struct.t4_tracer*
  %242 = call i32 @t4_get_tracer(%struct.adapter* %239, %struct.t4_tracer* %241)
  store i32 %242, i32* %12, align 4
  br label %275

243:                                              ; preds = %29
  %244 = load %struct.adapter*, %struct.adapter** %13, align 8
  %245 = load i64, i64* %9, align 8
  %246 = inttoptr i64 %245 to %struct.t4_tracer*
  %247 = call i32 @t4_set_tracer(%struct.adapter* %244, %struct.t4_tracer* %246)
  store i32 %247, i32* %12, align 4
  br label %275

248:                                              ; preds = %29
  %249 = load %struct.adapter*, %struct.adapter** %13, align 8
  %250 = load i64, i64* %9, align 8
  %251 = inttoptr i64 %250 to %struct.t4_data*
  %252 = call i32 @load_cfg(%struct.adapter* %249, %struct.t4_data* %251)
  store i32 %252, i32* %12, align 4
  br label %275

253:                                              ; preds = %29
  %254 = load %struct.adapter*, %struct.adapter** %13, align 8
  %255 = load i64, i64* %9, align 8
  %256 = inttoptr i64 %255 to %struct.t4_bootrom*
  %257 = call i32 @load_boot(%struct.adapter* %254, %struct.t4_bootrom* %256)
  store i32 %257, i32* %12, align 4
  br label %275

258:                                              ; preds = %29
  %259 = load %struct.adapter*, %struct.adapter** %13, align 8
  %260 = load i64, i64* %9, align 8
  %261 = inttoptr i64 %260 to %struct.t4_data*
  %262 = call i32 @load_bootcfg(%struct.adapter* %259, %struct.t4_data* %261)
  store i32 %262, i32* %12, align 4
  br label %275

263:                                              ; preds = %29
  %264 = load %struct.adapter*, %struct.adapter** %13, align 8
  %265 = load i64, i64* %9, align 8
  %266 = inttoptr i64 %265 to %struct.t4_cudbg_dump*
  %267 = call i32 @cudbg_dump(%struct.adapter* %264, %struct.t4_cudbg_dump* %266)
  store i32 %267, i32* %12, align 4
  br label %275

268:                                              ; preds = %29
  %269 = load %struct.adapter*, %struct.adapter** %13, align 8
  %270 = load i64, i64* %9, align 8
  %271 = inttoptr i64 %270 to %struct.t4_offload_policy*
  %272 = call i32 @set_offload_policy(%struct.adapter* %269, %struct.t4_offload_policy* %271)
  store i32 %272, i32* %12, align 4
  br label %275

273:                                              ; preds = %29
  %274 = load i32, i32* @ENOTTY, align 4
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %273, %268, %263, %258, %253, %248, %243, %238, %233, %228, %222, %217, %212, %207, %202, %197, %192, %187, %181, %176, %153, %137, %78
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %275, %148, %134, %109, %95, %75, %47, %27
  %278 = load i32, i32* %6, align 4
  ret i32 %278
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_reg64(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_get_regs_len(%struct.adapter*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @get_regs(%struct.adapter*, %struct.t4_regdump*, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @get_filter_mode(%struct.adapter*, i32*) #1

declare dso_local i32 @set_filter_mode(%struct.adapter*, i32) #1

declare dso_local i32 @get_filter(%struct.adapter*, %struct.t4_filter*) #1

declare dso_local i32 @set_filter(%struct.adapter*, %struct.t4_filter*) #1

declare dso_local i32 @del_filter(%struct.adapter*, %struct.t4_filter*) #1

declare dso_local i32 @get_sge_context(%struct.adapter*, %struct.t4_sge_context*) #1

declare dso_local i32 @load_fw(%struct.adapter*, %struct.t4_data*) #1

declare dso_local i32 @read_card_mem(%struct.adapter*, i32, %struct.t4_mem_range*) #1

declare dso_local i32 @read_i2c(%struct.adapter*, %struct.t4_i2c_data*) #1

declare dso_local i32 @clear_stats(%struct.adapter*, i32) #1

declare dso_local i32 @t4_set_sched_class(%struct.adapter*, %struct.t4_sched_params*) #1

declare dso_local i32 @t4_set_sched_queue(%struct.adapter*, %struct.t4_sched_queue*) #1

declare dso_local i32 @t4_get_tracer(%struct.adapter*, %struct.t4_tracer*) #1

declare dso_local i32 @t4_set_tracer(%struct.adapter*, %struct.t4_tracer*) #1

declare dso_local i32 @load_cfg(%struct.adapter*, %struct.t4_data*) #1

declare dso_local i32 @load_boot(%struct.adapter*, %struct.t4_bootrom*) #1

declare dso_local i32 @load_bootcfg(%struct.adapter*, %struct.t4_data*) #1

declare dso_local i32 @cudbg_dump(%struct.adapter*, %struct.t4_cudbg_dump*) #1

declare dso_local i32 @set_offload_policy(%struct.adapter*, %struct.t4_offload_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
