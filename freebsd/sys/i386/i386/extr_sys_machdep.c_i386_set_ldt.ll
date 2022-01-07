; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_set_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_set_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mdproc }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i64, i64 }
%struct.i386_ldt_args = type { i32, i32, i64 }
%union.descriptor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@NLDT = common dso_local global i32 0, align 4
@MAX_LD = common dso_local global i64 0, align 8
@dt_lock = common dso_local global i32 0, align 4
@LDT_AUTO_ALLOC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SEL_UPL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_set_ldt(%struct.thread* %0, %struct.i386_ldt_args* %1, %union.descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.i386_ldt_args*, align 8
  %7 = alloca %union.descriptor*, align 8
  %8 = alloca %struct.mdproc*, align 8
  %9 = alloca %struct.proc_ldt*, align 8
  %10 = alloca %union.descriptor*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.i386_ldt_args* %1, %struct.i386_ldt_args** %6, align 8
  store %union.descriptor* %2, %union.descriptor** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.mdproc* %17, %struct.mdproc** %8, align 8
  %18 = load %union.descriptor*, %union.descriptor** %7, align 8
  %19 = icmp eq %union.descriptor* %18, null
  br i1 %19, label %20, label %98

20:                                               ; preds = %3
  %21 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %22 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %27 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @NLDT, align 4
  %32 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %33 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @MAX_LD, align 8
  %35 = load i32, i32* @NLDT, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %40 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %25, %20
  %42 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %43 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %44 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %43, i32 0, i32 0
  %45 = load %struct.proc_ldt*, %struct.proc_ldt** %44, align 8
  store %struct.proc_ldt* %45, %struct.proc_ldt** %9, align 8
  %46 = icmp eq %struct.proc_ldt* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %49 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %53 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47, %41
  %57 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  store i32 0, i32* %4, align 4
  br label %316

58:                                               ; preds = %47
  %59 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %60 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %63 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %69 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %74 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %72, %58
  %77 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %78 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %93, %76
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %87 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i32 @atomic_store_rel_64(i32* %91, i32 0)
  br label %93

93:                                               ; preds = %85
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %81

96:                                               ; preds = %81
  %97 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  store i32 0, i32* %4, align 4
  br label %316

98:                                               ; preds = %3
  %99 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %100 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @LDT_AUTO_ALLOC, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %107 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %132

110:                                              ; preds = %105, %98
  %111 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %112 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %115 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %11, align 8
  %119 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %120 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @MAX_LD, align 8
  %124 = icmp uge i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %110
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @MAX_LD, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %110
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %4, align 4
  br label %316

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %105
  store i64 0, i64* %12, align 8
  br label %133

133:                                              ; preds = %182, %132
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %136 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ult i64 %134, %138
  br i1 %139, label %140, label %185

140:                                              ; preds = %133
  %141 = load %union.descriptor*, %union.descriptor** %7, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %union.descriptor, %union.descriptor* %141, i64 %142
  store %union.descriptor* %143, %union.descriptor** %10, align 8
  %144 = load %union.descriptor*, %union.descriptor** %10, align 8
  %145 = bitcast %union.descriptor* %144 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %164 [
    i32 132, label %148
    i32 139, label %152
    i32 133, label %152
    i32 143, label %152
    i32 128, label %152
    i32 141, label %152
    i32 140, label %152
    i32 131, label %152
    i32 134, label %152
    i32 130, label %152
    i32 138, label %152
    i32 129, label %152
    i32 136, label %152
    i32 135, label %152
    i32 142, label %152
    i32 137, label %152
    i32 156, label %154
    i32 157, label %154
    i32 152, label %154
    i32 153, label %154
    i32 151, label %163
    i32 150, label %163
    i32 147, label %163
    i32 146, label %163
    i32 149, label %163
    i32 148, label %163
    i32 145, label %163
    i32 144, label %163
    i32 159, label %163
    i32 158, label %163
    i32 155, label %163
    i32 154, label %163
  ]

148:                                              ; preds = %140
  %149 = load %union.descriptor*, %union.descriptor** %10, align 8
  %150 = bitcast %union.descriptor* %149 to %struct.TYPE_4__*
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  br label %166

152:                                              ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  %153 = load i32, i32* @EACCES, align 4
  store i32 %153, i32* %4, align 4
  br label %316

154:                                              ; preds = %140, %140, %140, %140
  %155 = load %union.descriptor*, %union.descriptor** %10, align 8
  %156 = bitcast %union.descriptor* %155 to %struct.TYPE_4__*
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @EACCES, align 4
  store i32 %161, i32* %4, align 4
  br label %316

162:                                              ; preds = %154
  br label %166

163:                                              ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  br label %166

164:                                              ; preds = %140
  %165 = load i32, i32* @EINVAL, align 4
  store i32 %165, i32* %4, align 4
  br label %316

166:                                              ; preds = %163, %162, %148
  %167 = load %union.descriptor*, %union.descriptor** %10, align 8
  %168 = bitcast %union.descriptor* %167 to %struct.TYPE_4__*
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %union.descriptor*, %union.descriptor** %10, align 8
  %174 = bitcast %union.descriptor* %173 to %struct.TYPE_4__*
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SEL_UPL, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @EACCES, align 4
  store i32 %180, i32* %4, align 4
  br label %316

181:                                              ; preds = %172, %166
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %12, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %12, align 8
  br label %133

185:                                              ; preds = %133
  %186 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %187 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @LDT_AUTO_ALLOC, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %275

192:                                              ; preds = %185
  %193 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %194 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %275

197:                                              ; preds = %192
  %198 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %199 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %200 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %199, i32 0, i32 0
  %201 = load %struct.proc_ldt*, %struct.proc_ldt** %200, align 8
  store %struct.proc_ldt* %201, %struct.proc_ldt** %9, align 8
  %202 = icmp eq %struct.proc_ldt* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.thread*, %struct.thread** %5, align 8
  %205 = load i32, i32* @NLDT, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = call i32 @i386_ldt_grow(%struct.thread* %204, i64 %207)
  store i32 %208, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %4, align 4
  br label %316

213:                                              ; preds = %203
  %214 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %215 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %214, i32 0, i32 0
  %216 = load %struct.proc_ldt*, %struct.proc_ldt** %215, align 8
  store %struct.proc_ldt* %216, %struct.proc_ldt** %9, align 8
  br label %217

217:                                              ; preds = %213, %197
  br label %218

218:                                              ; preds = %264, %217
  %219 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %220 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to %union.descriptor*
  %223 = load i32, i32* @NLDT, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %union.descriptor, %union.descriptor* %222, i64 %224
  store %union.descriptor* %225, %union.descriptor** %10, align 8
  %226 = load i32, i32* @NLDT, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %12, align 8
  br label %228

228:                                              ; preds = %244, %218
  %229 = load i64, i64* %12, align 8
  %230 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %231 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ult i64 %229, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %228
  %235 = load %union.descriptor*, %union.descriptor** %10, align 8
  %236 = bitcast %union.descriptor* %235 to %struct.TYPE_4__*
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 132
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %247

241:                                              ; preds = %234
  %242 = load %union.descriptor*, %union.descriptor** %10, align 8
  %243 = getelementptr inbounds %union.descriptor, %union.descriptor* %242, i32 1
  store %union.descriptor* %243, %union.descriptor** %10, align 8
  br label %244

244:                                              ; preds = %241
  %245 = load i64, i64* %12, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %12, align 8
  br label %228

247:                                              ; preds = %240, %228
  %248 = load i64, i64* %12, align 8
  %249 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %250 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp uge i64 %248, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %247
  %254 = load %struct.thread*, %struct.thread** %5, align 8
  %255 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %256 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, 1
  %259 = call i32 @i386_ldt_grow(%struct.thread* %254, i64 %258)
  store i32 %259, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %263 = load i32, i32* %13, align 4
  store i32 %263, i32* %4, align 4
  br label %316

264:                                              ; preds = %253
  br label %218

265:                                              ; preds = %247
  %266 = load i64, i64* %12, align 8
  %267 = trunc i64 %266 to i32
  %268 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %269 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.thread*, %struct.thread** %5, align 8
  %271 = load i64, i64* %12, align 8
  %272 = load %union.descriptor*, %union.descriptor** %7, align 8
  %273 = call i32 @i386_set_ldt_data(%struct.thread* %270, i64 %271, i32 1, %union.descriptor* %272)
  store i32 %273, i32* %13, align 4
  %274 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %302

275:                                              ; preds = %192, %185
  %276 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %277 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %280 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %278, %281
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %11, align 8
  %284 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %285 = load %struct.thread*, %struct.thread** %5, align 8
  %286 = load i64, i64* %11, align 8
  %287 = call i32 @i386_ldt_grow(%struct.thread* %285, i64 %286)
  store i32 %287, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %275
  %290 = load %struct.thread*, %struct.thread** %5, align 8
  %291 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %292 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %296 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %union.descriptor*, %union.descriptor** %7, align 8
  %299 = call i32 @i386_set_ldt_data(%struct.thread* %290, i64 %294, i32 %297, %union.descriptor* %298)
  store i32 %299, i32* %13, align 4
  br label %300

300:                                              ; preds = %289, %275
  %301 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %302

302:                                              ; preds = %300, %265
  %303 = load i32, i32* %13, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %307 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = load %struct.thread*, %struct.thread** %5, align 8
  %311 = getelementptr inbounds %struct.thread, %struct.thread* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 0
  store i64 %309, i64* %313, align 8
  br label %314

314:                                              ; preds = %305, %302
  %315 = load i32, i32* %13, align 4
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %314, %261, %210, %179, %164, %160, %152, %129, %96, %56
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @atomic_store_rel_64(i32*, i32) #1

declare dso_local i32 @i386_ldt_grow(%struct.thread*, i64) #1

declare dso_local i32 @i386_set_ldt_data(%struct.thread*, i64, i32, %union.descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
