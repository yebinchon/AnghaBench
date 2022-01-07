; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_vmexit_task_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_vmexit_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_exit = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vm_task_switch }
%struct.vm_task_switch = type { i32, i32, i32, i32, %struct.vm_guest_paging, i64 }
%struct.vm_guest_paging = type { i64, i64 }
%struct.seg_desc = type { i32, i32, i64 }
%struct.tss32 = type { i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.iovec = type { i32 }

@CPU_MODE_PROTECTED = common dso_local global i64 0, align 8
@SDT_SYS386BSY = common dso_local global i32 0, align 4
@SDT_SYS386TSS = common dso_local global i32 0, align 4
@SDT_SYS286BSY = common dso_local global i32 0, align 4
@SDT_SYS286TSS = common dso_local global i32 0, align 4
@IDT_TS = common dso_local global i32 0, align 4
@IDT_NP = common dso_local global i32 0, align 4
@TSR_IRET = common dso_local global i32 0, align 4
@IDT_GP = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@TSR_JMP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Task switch to 16-bit TSS not supported\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_TS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@TSR_IDT_GATE = common dso_local global i64 0, align 8
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmexit_task_switch(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.vm_exit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.seg_desc, align 8
  %9 = alloca %struct.tss32, align 4
  %10 = alloca %struct.tss32, align 4
  %11 = alloca %struct.vm_task_switch*, align 8
  %12 = alloca %struct.vm_guest_paging*, align 8
  %13 = alloca %struct.vm_guest_paging, align 8
  %14 = alloca %struct.user_segment_descriptor, align 4
  %15 = alloca %struct.user_segment_descriptor, align 4
  %16 = alloca [2 x %struct.iovec], align 4
  %17 = alloca [2 x %struct.iovec], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.seg_desc, align 8
  %34 = alloca %struct.seg_desc, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %6, align 8
  store i32* %2, i32** %7, align 8
  %35 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %36 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.vm_task_switch* %37, %struct.vm_task_switch** %11, align 8
  %38 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %39 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %31, align 4
  %41 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %42 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %24, align 4
  %46 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %47 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %30, align 4
  %51 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %52 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %53, i32 0, i32 4
  store %struct.vm_guest_paging* %54, %struct.vm_guest_paging** %12, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %29, align 4
  %57 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %12, align 8
  %58 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CPU_MODE_PROTECTED, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %65 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %68 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %20, align 8
  %71 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %12, align 8
  %72 = bitcast %struct.vm_guest_paging* %13 to i8*
  %73 = bitcast %struct.vm_guest_paging* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  %74 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %13, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %76 = load i32, i32* %29, align 4
  %77 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %78 = load i32, i32* %31, align 4
  %79 = call i32 @read_tss_descriptor(%struct.vmctx* %75, i32 %76, %struct.vm_task_switch* %77, i32 %78, %struct.user_segment_descriptor* %14, i32* %25)
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @CHKERR(i32 %80, i32 %81)
  %83 = call { i64, i64 } @usd_to_seg_desc(%struct.user_segment_descriptor* %14)
  %84 = bitcast %struct.seg_desc* %33 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = extractvalue { i64, i64 } %83, 0
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = extractvalue { i64, i64 } %83, 1
  store i64 %88, i64* %87, align 8
  %89 = bitcast %struct.seg_desc* %8 to i8*
  %90 = bitcast %struct.seg_desc* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  %91 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %8, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @SEG_DESC_TYPE(i64 %92)
  store i32 %93, i32* %27, align 4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* @SDT_SYS386BSY, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %3
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* @SDT_SYS386TSS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* @SDT_SYS286BSY, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* @SDT_SYS286TSS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* @IDT_TS, align 4
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i32 @sel_exception(%struct.vmctx* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %443

116:                                              ; preds = %105, %101, %97, %3
  %117 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %8, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @SEG_DESC_PRESENT(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* @IDT_NP, align 4
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @sel_exception(%struct.vmctx* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %443

128:                                              ; preds = %116
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* @SDT_SYS386BSY, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* @SDT_SYS386TSS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %128
  store i32 103, i32* %26, align 4
  br label %148

137:                                              ; preds = %132
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* @SDT_SYS286BSY, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* @SDT_SYS286TSS, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %137
  store i32 43, i32* %26, align 4
  br label %147

146:                                              ; preds = %141
  store i32 0, i32* %26, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i32, i32* %26, align 4
  %150 = icmp sgt i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %8, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %26, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %159 = load i32, i32* %29, align 4
  %160 = load i32, i32* @IDT_TS, align 4
  %161 = load i32, i32* %31, align 4
  %162 = load i32, i32* %24, align 4
  %163 = call i32 @sel_exception(%struct.vmctx* %158, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %443

164:                                              ; preds = %148
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* @TSR_IRET, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* %27, align 4
  %170 = call i64 @TSS_BUSY(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* @IDT_TS, align 4
  %176 = load i32, i32* %31, align 4
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @sel_exception(%struct.vmctx* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  br label %443

179:                                              ; preds = %168, %164
  %180 = load i32, i32* %30, align 4
  %181 = load i32, i32* @TSR_IRET, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load i32, i32* %27, align 4
  %185 = call i64 @TSS_BUSY(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %189 = load i32, i32* %29, align 4
  %190 = load i32, i32* @IDT_GP, align 4
  %191 = load i32, i32* %31, align 4
  %192 = load i32, i32* %24, align 4
  %193 = call i32 @sel_exception(%struct.vmctx* %188, i32 %189, i32 %190, i32 %191, i32 %192)
  br label %443

194:                                              ; preds = %183, %179
  %195 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %196 = load i32, i32* %29, align 4
  %197 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %8, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %26, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* @PROT_READ, align 4
  %202 = load i32, i32* @PROT_WRITE, align 4
  %203 = or i32 %201, %202
  %204 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %205 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %206 = call i32 @nitems(%struct.iovec* %205)
  %207 = call i32 @vm_copy_setup(%struct.vmctx* %195, i32 %196, %struct.vm_guest_paging* %13, i32 %198, i32 %200, i32 %203, %struct.iovec* %204, i32 %206, i32* %25)
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %23, align 4
  %209 = load i32, i32* %25, align 4
  %210 = call i32 @CHKERR(i32 %208, i32 %209)
  %211 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %212 = load i32, i32* %29, align 4
  %213 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %214, 1
  %216 = call i32 @vm_copyin(%struct.vmctx* %211, i32 %212, %struct.iovec* %213, %struct.tss32* %10, i32 %215)
  %217 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %218 = load i32, i32* %29, align 4
  %219 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %220 = call i32 @GETREG(%struct.vmctx* %217, i32 %218, i32 %219)
  store i32 %220, i32* %32, align 4
  %221 = load i32, i32* %32, align 4
  %222 = call i64 @ISLDT(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %194
  %225 = load i32, i32* %32, align 4
  %226 = call i64 @IDXSEL(i32 %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %224, %194
  %229 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %230 = load i32, i32* %29, align 4
  %231 = load i32, i32* @IDT_TS, align 4
  %232 = load i32, i32* %32, align 4
  %233 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %234 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @sel_exception(%struct.vmctx* %229, i32 %230, i32 %231, i32 %232, i32 %235)
  br label %443

237:                                              ; preds = %224
  %238 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %239 = load i32, i32* %29, align 4
  %240 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %241 = call i32 @vm_get_desc(%struct.vmctx* %238, i32 %239, i32 %240, i32* %19, i64* %21, i64* %22)
  store i32 %241, i32* %23, align 4
  %242 = load i32, i32* %23, align 4
  %243 = icmp eq i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load i64, i64* %22, align 8
  %247 = call i32 @SEG_DESC_UNUSABLE(i64 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %237
  %250 = load i64, i64* %22, align 8
  %251 = call i64 @SEG_DESC_PRESENT(i64 %250)
  %252 = icmp ne i64 %251, 0
  br label %253

253:                                              ; preds = %249, %237
  %254 = phi i1 [ false, %237 ], [ %252, %249 ]
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i64, i64* %22, align 8
  %258 = call i32 @SEG_DESC_TYPE(i64 %257)
  store i32 %258, i32* %28, align 4
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* @SDT_SYS386BSY, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %253
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* @SDT_SYS286BSY, align 4
  %265 = icmp eq i32 %263, %264
  br label %266

266:                                              ; preds = %262, %253
  %267 = phi i1 [ true, %253 ], [ %265, %262 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %271 = load i32, i32* %29, align 4
  %272 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %273 = load i32, i32* %32, align 4
  %274 = call i32 @read_tss_descriptor(%struct.vmctx* %270, i32 %271, %struct.vm_task_switch* %272, i32 %273, %struct.user_segment_descriptor* %15, i32* %25)
  store i32 %274, i32* %23, align 4
  %275 = load i32, i32* %23, align 4
  %276 = load i32, i32* %25, align 4
  %277 = call i32 @CHKERR(i32 %275, i32 %276)
  %278 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %279 = load i32, i32* %29, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %26, align 4
  %282 = add nsw i32 %281, 1
  %283 = load i32, i32* @PROT_READ, align 4
  %284 = load i32, i32* @PROT_WRITE, align 4
  %285 = or i32 %283, %284
  %286 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %17, i64 0, i64 0
  %287 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %17, i64 0, i64 0
  %288 = call i32 @nitems(%struct.iovec* %287)
  %289 = call i32 @vm_copy_setup(%struct.vmctx* %278, i32 %279, %struct.vm_guest_paging* %13, i32 %280, i32 %282, i32 %285, %struct.iovec* %286, i32 %288, i32* %25)
  store i32 %289, i32* %23, align 4
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* %25, align 4
  %292 = call i32 @CHKERR(i32 %290, i32 %291)
  %293 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %294 = load i32, i32* %29, align 4
  %295 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %17, i64 0, i64 0
  %296 = load i32, i32* %26, align 4
  %297 = add nsw i32 %296, 1
  %298 = call i32 @vm_copyin(%struct.vmctx* %293, i32 %294, %struct.iovec* %295, %struct.tss32* %9, i32 %297)
  %299 = load i32, i32* %30, align 4
  %300 = load i32, i32* @TSR_IRET, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %306, label %302

302:                                              ; preds = %266
  %303 = load i32, i32* %30, align 4
  %304 = load i32, i32* @TSR_JMP, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %317

306:                                              ; preds = %302, %266
  %307 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, -3
  store i32 %309, i32* %307, align 4
  %310 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %311 = load i32, i32* %29, align 4
  %312 = load i32, i32* %32, align 4
  %313 = call i32 @desc_table_write(%struct.vmctx* %310, i32 %311, %struct.vm_guest_paging* %13, i32 %312, %struct.user_segment_descriptor* %15, i32* %25)
  store i32 %313, i32* %23, align 4
  %314 = load i32, i32* %23, align 4
  %315 = load i32, i32* %25, align 4
  %316 = call i32 @CHKERR(i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %306, %302
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* @SDT_SYS286BSY, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* @SDT_SYS286TSS, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %321, %317
  %326 = load i32, i32* @stderr, align 4
  %327 = call i32 @fprintf(i32 %326, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %328 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %328, i32* %4, align 4
  br label %445

329:                                              ; preds = %321
  %330 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %331 = load i32, i32* %29, align 4
  %332 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %333 = load i64, i64* %20, align 8
  %334 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %17, i64 0, i64 0
  %335 = call i32 @tss32_save(%struct.vmctx* %330, i32 %331, %struct.vm_task_switch* %332, i64 %333, %struct.tss32* %9, %struct.iovec* %334)
  %336 = load i32, i32* %30, align 4
  %337 = load i32, i32* @TSR_IRET, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %350

339:                                              ; preds = %329
  %340 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %14, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, 2
  store i32 %342, i32* %340, align 4
  %343 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %344 = load i32, i32* %29, align 4
  %345 = load i32, i32* %31, align 4
  %346 = call i32 @desc_table_write(%struct.vmctx* %343, i32 %344, %struct.vm_guest_paging* %13, i32 %345, %struct.user_segment_descriptor* %14, i32* %25)
  store i32 %346, i32* %23, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %25, align 4
  %349 = call i32 @CHKERR(i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %339, %329
  %351 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %352 = load i32, i32* %29, align 4
  %353 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %354 = load i32, i32* %31, align 4
  %355 = call i32 @SETREG(%struct.vmctx* %351, i32 %352, i32 %353, i32 %354)
  %356 = call { i64, i64 } @usd_to_seg_desc(%struct.user_segment_descriptor* %14)
  %357 = bitcast %struct.seg_desc* %34 to { i64, i64 }*
  %358 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 0
  %359 = extractvalue { i64, i64 } %356, 0
  store i64 %359, i64* %358, align 8
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 1
  %361 = extractvalue { i64, i64 } %356, 1
  store i64 %361, i64* %360, align 8
  %362 = bitcast %struct.seg_desc* %8 to i8*
  %363 = bitcast %struct.seg_desc* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %362, i8* align 8 %363, i64 16, i1 false)
  %364 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %365 = load i32, i32* %29, align 4
  %366 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %367 = call i32 @update_seg_desc(%struct.vmctx* %364, i32 %365, i32 %366, %struct.seg_desc* %8)
  %368 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %369 = load i32, i32* %29, align 4
  %370 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %371 = call i32 @GETREG(%struct.vmctx* %368, i32 %369, i32 %370)
  store i32 %371, i32* %18, align 4
  %372 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %373 = load i32, i32* %29, align 4
  %374 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %375 = load i32, i32* %18, align 4
  %376 = load i32, i32* @CR0_TS, align 4
  %377 = or i32 %375, %376
  %378 = call i32 @SETREG(%struct.vmctx* %372, i32 %373, i32 %374, i32 %377)
  %379 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %380 = load i32, i32* %29, align 4
  %381 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %382 = getelementptr inbounds %struct.tss32, %struct.tss32* %10, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @vm_set_register(%struct.vmctx* %379, i32 %380, i32 %381, i32 %383)
  store i32 %384, i32* %23, align 4
  %385 = load i32, i32* %23, align 4
  %386 = icmp eq i32 %385, 0
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %390 = load i32, i32* %29, align 4
  %391 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %392 = load i32, i32* %32, align 4
  %393 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %394 = call i32 @tss32_restore(%struct.vmctx* %389, i32 %390, %struct.vm_task_switch* %391, i32 %392, %struct.tss32* %10, %struct.iovec* %393, i32* %25)
  store i32 %394, i32* %23, align 4
  %395 = load i32, i32* %23, align 4
  %396 = load i32, i32* %25, align 4
  %397 = call i32 @CHKERR(i32 %395, i32 %396)
  %398 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %399 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %398, i32 0, i32 5
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %427

402:                                              ; preds = %350
  %403 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %404 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @assert(i32 %405)
  %407 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %408 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = load i64, i64* @TSR_IDT_GATE, align 8
  %412 = icmp eq i64 %410, %411
  %413 = zext i1 %412 to i32
  %414 = call i32 @assert(i32 %413)
  %415 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %416 = load i32, i32* %29, align 4
  %417 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %418 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %417, i32 0, i32 4
  %419 = load i32, i32* %27, align 4
  %420 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %421 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @push_errcode(%struct.vmctx* %415, i32 %416, %struct.vm_guest_paging* %418, i32 %419, i32 %422, i32* %25)
  store i32 %423, i32* %23, align 4
  %424 = load i32, i32* %23, align 4
  %425 = load i32, i32* %25, align 4
  %426 = call i32 @CHKERR(i32 %424, i32 %425)
  br label %427

427:                                              ; preds = %402, %350
  %428 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %429 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = load i64, i64* @TSR_IDT_GATE, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %442

434:                                              ; preds = %427
  %435 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %436 = load i32, i32* %29, align 4
  %437 = call i32 @vm_set_intinfo(%struct.vmctx* %435, i32 %436, i32 0)
  store i32 %437, i32* %23, align 4
  %438 = load i32, i32* %23, align 4
  %439 = icmp eq i32 %438, 0
  %440 = zext i1 %439 to i32
  %441 = call i32 @assert(i32 %440)
  br label %442

442:                                              ; preds = %434, %427
  br label %443

443:                                              ; preds = %442, %228, %187, %172, %157, %121, %109
  %444 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %444, i32* %4, align 4
  br label %445

445:                                              ; preds = %443, %325
  %446 = load i32, i32* %4, align 4
  ret i32 %446
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_tss_descriptor(%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @CHKERR(i32, i32) #1

declare dso_local { i64, i64 } @usd_to_seg_desc(%struct.user_segment_descriptor*) #1

declare dso_local i32 @SEG_DESC_TYPE(i64) #1

declare dso_local i32 @sel_exception(%struct.vmctx*, i32, i32, i32, i32) #1

declare dso_local i64 @SEG_DESC_PRESENT(i64) #1

declare dso_local i64 @TSS_BUSY(i32) #1

declare dso_local i32 @vm_copy_setup(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, i32, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @vm_copyin(%struct.vmctx*, i32, %struct.iovec*, %struct.tss32*, i32) #1

declare dso_local i32 @GETREG(%struct.vmctx*, i32, i32) #1

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i64 @IDXSEL(i32) #1

declare dso_local i32 @vm_get_desc(%struct.vmctx*, i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @SEG_DESC_UNUSABLE(i64) #1

declare dso_local i32 @desc_table_write(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tss32_save(%struct.vmctx*, i32, %struct.vm_task_switch*, i64, %struct.tss32*, %struct.iovec*) #1

declare dso_local i32 @SETREG(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @update_seg_desc(%struct.vmctx*, i32, i32, %struct.seg_desc*) #1

declare dso_local i32 @vm_set_register(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @tss32_restore(%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.tss32*, %struct.iovec*, i32*) #1

declare dso_local i32 @push_errcode(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, i32, i32*) #1

declare dso_local i32 @vm_set_intinfo(%struct.vmctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
