; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.i386_frame = type { i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"--- 16-bit%s, cs:eip = %#x:%#x, ss:esp = %#x:%#x, ebp = %#x, tf = %p ---\0A\00", align 1
@PSL_VM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" (vm86)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kdb_frame = common dso_local global %struct.trapframe* null, align 8
@db_pager_quit = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@C_DB_SYM_NULL = common dso_local global i32* null, align 8
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"fork_trampoline\00", align 1
@MAXNARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.trapframe*, %struct.i386_frame*, i64, i64, i32)* @db_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_backtrace(%struct.thread* %0, %struct.trapframe* %1, %struct.i386_frame* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.i386_frame*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i386_frame*, align 8
  %15 = alloca [16 x i8*], align 16
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.trapframe* %1, %struct.trapframe** %9, align 8
  store %struct.i386_frame* %2, %struct.i386_frame** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i8** null, i8*** %16, align 8
  %24 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %25 = call i32 @db_segsize(%struct.trapframe* %24)
  %26 = icmp eq i32 %25, 16
  br i1 %26, label %27, label %71

27:                                               ; preds = %6
  %28 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PSL_VM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %43 = call i64 @TF_HAS_STACKREGS(%struct.trapframe* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  br label %51

49:                                               ; preds = %27
  %50 = call i32 (...) @rss()
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %48, %45 ], [ %50, %49 ]
  %53 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %54 = call i64 @TF_HAS_STACKREGS(%struct.trapframe* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %62 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %61, i32 0, i32 1
  %63 = ptrtoint i64* %62 to i64
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ]
  %66 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %70 = call i32 @db_printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38, i32 %41, i32 %52, i64 %65, i64 %68, %struct.trapframe* %69)
  store i32 0, i32* %7, align 4
  br label %273

71:                                               ; preds = %6
  %72 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %73 = icmp eq %struct.i386_frame* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %250

75:                                               ; preds = %71
  %76 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  %77 = icmp ne %struct.trapframe* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  %86 = call i64 @TF_HAS_STACKREGS(%struct.trapframe* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i64 1
  %91 = ptrtoint %struct.trapframe* %90 to i32
  store i32 %91, i32* %21, align 4
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  %94 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %93, i32 0, i32 1
  %95 = ptrtoint i64* %94 to i32
  store i32 %95, i32* %21, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %21, align 4
  %98 = call i64 @db_get_value(i32 %97, i32 4, i32 0)
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %96, %78, %75
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1024, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %99
  store i32 1, i32* %23, align 4
  br label %104

104:                                              ; preds = %271, %242, %143, %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %13, align 4
  %107 = icmp ne i32 %105, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @db_pager_quit, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %114, label %272

114:                                              ; preds = %112
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* @DB_STGY_ANY, align 4
  %117 = call i32* @db_search_symbol(i64 %115, i32 %116, i64* %19)
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @db_symbol_values(i32* %118, i8** %17, i32* null)
  %120 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  store %struct.i386_frame* %120, %struct.i386_frame** %14, align 8
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %216

123:                                              ; preds = %114
  store i32 0, i32* %23, align 4
  %124 = load i32*, i32** %20, align 8
  %125 = load i32*, i32** @C_DB_SYM_NULL, align 8
  %126 = icmp eq i32* %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i64, i64* %12, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i8*, i8** %17, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @db_print_stack_entry(i8* %131, i32 0, i8** null, i32* null, i64 %132, %struct.i386_frame* null)
  %134 = load i64, i64* %12, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @db_get_value(i32 %135, i32 4, i32 0)
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i32, i32* @DB_STGY_PROC, align 4
  %139 = call i32* @db_search_symbol(i64 %137, i32 %138, i64* %19)
  %140 = load i32*, i32** @C_DB_SYM_NULL, align 8
  %141 = icmp eq i32* %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %272

143:                                              ; preds = %130
  br label %104

144:                                              ; preds = %127, %123
  %145 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %146 = icmp ne %struct.trapframe* %145, null
  br i1 %146, label %147, label %204

147:                                              ; preds = %144
  %148 = load i64, i64* %11, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i64 @db_get_value(i32 %149, i32 4, i32 0)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = and i32 %152, 16777215
  %154 = icmp eq i32 %153, 15042901
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %157 = call i32 @get_esp(%struct.trapframe* %156)
  %158 = sub nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = bitcast i8* %160 to %struct.i386_frame*
  store %struct.i386_frame* %161, %struct.i386_frame** %14, align 8
  br label %203

162:                                              ; preds = %147
  %163 = load i32, i32* %21, align 4
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 58761
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %168 = call i32 @get_esp(%struct.trapframe* %167)
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = bitcast i8* %170 to %struct.i386_frame*
  store %struct.i386_frame* %171, %struct.i386_frame** %14, align 8
  %172 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %173 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  store %struct.i386_frame* %177, %struct.i386_frame** %10, align 8
  br label %178

178:                                              ; preds = %176, %166
  br label %202

179:                                              ; preds = %162
  %180 = load i32, i32* %21, align 4
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, 195
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %185 = call i32 @get_esp(%struct.trapframe* %184)
  %186 = sub nsw i32 %185, 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = bitcast i8* %188 to %struct.i386_frame*
  store %struct.i386_frame* %189, %struct.i386_frame** %14, align 8
  br label %201

190:                                              ; preds = %179
  %191 = load i64, i64* %19, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %195 = call i32 @get_esp(%struct.trapframe* %194)
  %196 = sub nsw i32 %195, 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = bitcast i8* %198 to %struct.i386_frame*
  store %struct.i386_frame* %199, %struct.i386_frame** %14, align 8
  br label %200

200:                                              ; preds = %193, %190
  br label %201

201:                                              ; preds = %200, %183
  br label %202

202:                                              ; preds = %201, %178
  br label %203

203:                                              ; preds = %202, %155
  br label %214

204:                                              ; preds = %144
  %205 = load i8*, i8** %17, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i8*, i8** %17, align 8
  %210 = load i64, i64* %11, align 8
  %211 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %212 = call i32 @db_print_stack_entry(i8* %209, i32 0, i8** null, i32* null, i64 %210, %struct.i386_frame* %211)
  br label %272

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213, %203
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215, %114
  %217 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %218 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %217, i32 0, i32 0
  store i32* %218, i32** %18, align 8
  store i32 16, i32* %22, align 4
  %219 = load i32*, i32** %20, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i32*, i32** %20, align 8
  %223 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 0
  %224 = call i64 @db_sym_numargs(i32* %222, i32* %22, i8** %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 0
  store i8** %227, i8*** %16, align 8
  br label %231

228:                                              ; preds = %221, %216
  %229 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %230 = call i32 @db_numargs(%struct.i386_frame* %229)
  store i32 %230, i32* %22, align 4
  br label %231

231:                                              ; preds = %228, %226
  %232 = load i8*, i8** %17, align 8
  %233 = load i32, i32* %22, align 4
  %234 = load i8**, i8*** %16, align 8
  %235 = load i32*, i32** %18, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %238 = call i32 @db_print_stack_entry(i8* %232, i32 %233, i8** %234, i32* %235, i64 %236, %struct.i386_frame* %237)
  %239 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %240 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %241 = icmp ne %struct.i386_frame* %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %231
  %243 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %244 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %243, i32 0, i32 1
  %245 = ptrtoint i32* %244 to i32
  %246 = call i64 @db_get_value(i32 %245, i32 4, i32 0)
  store i64 %246, i64* %11, align 8
  br label %104

247:                                              ; preds = %231
  %248 = load %struct.thread*, %struct.thread** %8, align 8
  %249 = call i32 @db_nextframe(%struct.i386_frame** %10, i64* %11, %struct.thread* %248)
  br label %250

250:                                              ; preds = %247, %74
  %251 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %252 = icmp eq %struct.i386_frame* %251, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %250
  %254 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %255 = load %struct.i386_frame*, %struct.i386_frame** %14, align 8
  %256 = icmp ule %struct.i386_frame* %254, %255
  br i1 %256, label %257, label %271

257:                                              ; preds = %253, %250
  %258 = load i64, i64* %11, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load i64, i64* %11, align 8
  %262 = load i32, i32* @DB_STGY_ANY, align 4
  %263 = call i32* @db_search_symbol(i64 %261, i32 %262, i64* %19)
  store i32* %263, i32** %20, align 8
  %264 = load i32*, i32** %20, align 8
  %265 = call i32 @db_symbol_values(i32* %264, i8** %17, i32* null)
  %266 = load i8*, i8** %17, align 8
  %267 = load i64, i64* %11, align 8
  %268 = load %struct.i386_frame*, %struct.i386_frame** %10, align 8
  %269 = call i32 @db_print_stack_entry(i8* %266, i32 0, i8** null, i32* null, i64 %267, %struct.i386_frame* %268)
  br label %270

270:                                              ; preds = %260, %257
  br label %272

271:                                              ; preds = %253
  br label %104

272:                                              ; preds = %270, %208, %142, %112
  store i32 0, i32* %7, align 4
  br label %273

273:                                              ; preds = %272, %64
  %274 = load i32, i32* %7, align 4
  ret i32 %274
}

declare dso_local i32 @db_segsize(%struct.trapframe*) #1

declare dso_local i32 @db_printf(i8*, i8*, i32, i32, i32, i64, i64, %struct.trapframe*) #1

declare dso_local i64 @TF_HAS_STACKREGS(%struct.trapframe*) #1

declare dso_local i32 @rss(...) #1

declare dso_local i64 @db_get_value(i32, i32, i32) #1

declare dso_local i32* @db_search_symbol(i64, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i32*, i8**, i32*) #1

declare dso_local i32 @db_print_stack_entry(i8*, i32, i8**, i32*, i64, %struct.i386_frame*) #1

declare dso_local i32 @get_esp(%struct.trapframe*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @db_sym_numargs(i32*, i32*, i8**) #1

declare dso_local i32 @db_numargs(%struct.i386_frame*) #1

declare dso_local i32 @db_nextframe(%struct.i386_frame**, i64*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
