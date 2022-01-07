; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_create_args = type { %struct.vattr*, %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.vattr = type { i64, i32 }
%struct.componentname = type { i32, i32, %struct.ucred*, %struct.thread* }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vnode = type { i32 }
%struct.fuse_data = type { i32 }
%struct.fuse_create_in = type { i32, i32, i32, i32 }
%struct.fuse_entry_out = type { i32, i32, i32, i32, i32, i32 }
%struct.fuse_open_out = type { i32, i32, i32, i32, i32, i32 }
%struct.fuse_dispatcher = type { i32, %struct.fuse_release_in*, %struct.fuse_open_out* }
%struct.fuse_release_in = type { i32, i32, i32, i32 }
%struct.mount = type { i32 }
%struct.fuse_open_in = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FUSE_CREATE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@FUSE_OPEN = common dso_local global i32 0, align 4
@FUSE_RELEASE = common dso_local global i32 0, align 4
@fuse_internal_forget_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fuse_vnop_create\00", align 1
@FUFH_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_create_args*)* @fuse_vnop_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_create(%struct.vop_create_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_create_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.fuse_data*, align 8
  %11 = alloca %struct.fuse_create_in*, align 8
  %12 = alloca %struct.fuse_entry_out*, align 8
  %13 = alloca %struct.fuse_open_out*, align 8
  %14 = alloca %struct.fuse_dispatcher, align 8
  %15 = alloca %struct.fuse_dispatcher, align 8
  %16 = alloca %struct.fuse_dispatcher*, align 8
  %17 = alloca %struct.fuse_dispatcher*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mount*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.fuse_open_in*, align 8
  %26 = alloca %struct.fuse_release_in*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.vop_create_args* %0, %struct.vop_create_args** %3, align 8
  %29 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %29, i32 0, i32 3
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %4, align 8
  %32 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %32, i32 0, i32 2
  %34 = load %struct.vnode**, %struct.vnode*** %33, align 8
  store %struct.vnode** %34, %struct.vnode*** %5, align 8
  %35 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %35, i32 0, i32 1
  %37 = load %struct.componentname*, %struct.componentname** %36, align 8
  store %struct.componentname* %37, %struct.componentname** %6, align 8
  %38 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %38, i32 0, i32 0
  %40 = load %struct.vattr*, %struct.vattr** %39, align 8
  store %struct.vattr* %40, %struct.vattr** %7, align 8
  %41 = load %struct.componentname*, %struct.componentname** %6, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 3
  %43 = load %struct.thread*, %struct.thread** %42, align 8
  store %struct.thread* %43, %struct.thread** %8, align 8
  %44 = load %struct.componentname*, %struct.componentname** %6, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 2
  %46 = load %struct.ucred*, %struct.ucred** %45, align 8
  store %struct.ucred* %46, %struct.ucred** %9, align 8
  store %struct.fuse_dispatcher* %14, %struct.fuse_dispatcher** %16, align 8
  store %struct.fuse_dispatcher* null, %struct.fuse_dispatcher** %17, align 8
  %47 = load %struct.vnode*, %struct.vnode** %4, align 8
  %48 = call %struct.mount* @vnode_mount(%struct.vnode* %47)
  store %struct.mount* %48, %struct.mount** %19, align 8
  %49 = load %struct.mount*, %struct.mount** %19, align 8
  %50 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %49)
  store %struct.fuse_data* %50, %struct.fuse_data** %10, align 8
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = call %struct.TYPE_6__* @VTOFUD(%struct.vnode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %20, align 4
  %55 = load %struct.vattr*, %struct.vattr** %7, align 8
  %56 = getelementptr inbounds %struct.vattr, %struct.vattr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vattr*, %struct.vattr** %7, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MAKEIMODE(i64 %57, i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load %struct.vnode*, %struct.vnode** %4, align 8
  %63 = call i64 @fuse_isdeadfs(%struct.vnode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %1
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %356

67:                                               ; preds = %1
  %68 = load %struct.vattr*, %struct.vattr** %7, align 8
  %69 = getelementptr inbounds %struct.vattr, %struct.vattr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VSOCK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %76 = load %struct.componentname*, %struct.componentname** %6, align 8
  %77 = load %struct.vattr*, %struct.vattr** %7, align 8
  %78 = call i32 @fuse_internal_mknod(%struct.vnode* %74, %struct.vnode** %75, %struct.componentname* %76, %struct.vattr* %77)
  store i32 %78, i32* %2, align 4
  br label %356

79:                                               ; preds = %67
  %80 = load i32, i32* @O_RDWR, align 4
  store i32 %80, i32* %23, align 4
  %81 = call i32 @bzero(%struct.fuse_dispatcher* %14, i32 24)
  %82 = load %struct.vattr*, %struct.vattr** %7, align 8
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VREG, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %2, align 4
  br label %356

89:                                               ; preds = %79
  %90 = load %struct.mount*, %struct.mount** %19, align 8
  %91 = load i32, i32* @FUSE_CREATE, align 4
  %92 = call i32 @fsess_isimpl(%struct.mount* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.vattr*, %struct.vattr** %7, align 8
  %96 = getelementptr inbounds %struct.vattr, %struct.vattr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VSOCK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94, %89
  %101 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %102 = load %struct.componentname*, %struct.componentname** %6, align 8
  %103 = load %struct.vnode*, %struct.vnode** %4, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load %struct.thread*, %struct.thread** %8, align 8
  %106 = load %struct.ucred*, %struct.ucred** %9, align 8
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @fdisp_make_mknod_for_fallback(%struct.fuse_dispatcher* %101, %struct.componentname* %102, %struct.vnode* %103, i32 %104, %struct.thread* %105, %struct.ucred* %106, i32 %107, i32* %22)
  br label %179

109:                                              ; preds = %94
  %110 = load i32, i32* @FUSE_CREATE, align 4
  store i32 %110, i32* %22, align 4
  %111 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %112 = load %struct.componentname*, %struct.componentname** %6, align 8
  %113 = getelementptr inbounds %struct.componentname, %struct.componentname* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 16, %115
  %117 = add i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i32 @fdisp_init(%struct.fuse_dispatcher* %111, i32 %118)
  %120 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %121 = load i32, i32* %22, align 4
  %122 = load %struct.vnode*, %struct.vnode** %4, align 8
  %123 = call %struct.mount* @vnode_mount(%struct.vnode* %122)
  %124 = load i32, i32* %20, align 4
  %125 = load %struct.thread*, %struct.thread** %8, align 8
  %126 = load %struct.ucred*, %struct.ucred** %9, align 8
  %127 = call i32 @fdisp_make(%struct.fuse_dispatcher* %120, i32 %121, %struct.mount* %123, i32 %124, %struct.thread* %125, %struct.ucred* %126)
  %128 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %129 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %128, i32 0, i32 1
  %130 = load %struct.fuse_release_in*, %struct.fuse_release_in** %129, align 8
  %131 = bitcast %struct.fuse_release_in* %130 to %struct.fuse_create_in*
  store %struct.fuse_create_in* %131, %struct.fuse_create_in** %11, align 8
  %132 = load i32, i32* %21, align 4
  %133 = load %struct.fuse_create_in*, %struct.fuse_create_in** %11, align 8
  %134 = getelementptr inbounds %struct.fuse_create_in, %struct.fuse_create_in* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @O_CREAT, align 4
  %136 = load i32, i32* %23, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.fuse_create_in*, %struct.fuse_create_in** %11, align 8
  %139 = getelementptr inbounds %struct.fuse_create_in, %struct.fuse_create_in* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.fuse_data*, %struct.fuse_data** %10, align 8
  %141 = call i64 @fuse_libabi_geq(%struct.fuse_data* %140, i32 7, i32 12)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %109
  store i64 16, i64* %24, align 8
  %144 = load %struct.thread*, %struct.thread** %8, align 8
  %145 = getelementptr inbounds %struct.thread, %struct.thread* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.fuse_create_in*, %struct.fuse_create_in** %11, align 8
  %152 = getelementptr inbounds %struct.fuse_create_in, %struct.fuse_create_in* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %154

153:                                              ; preds = %109
  store i64 16, i64* %24, align 8
  br label %154

154:                                              ; preds = %153, %143
  %155 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %156 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %155, i32 0, i32 1
  %157 = load %struct.fuse_release_in*, %struct.fuse_release_in** %156, align 8
  %158 = bitcast %struct.fuse_release_in* %157 to i8*
  %159 = load i64, i64* %24, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load %struct.componentname*, %struct.componentname** %6, align 8
  %162 = getelementptr inbounds %struct.componentname, %struct.componentname* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.componentname*, %struct.componentname** %6, align 8
  %165 = getelementptr inbounds %struct.componentname, %struct.componentname* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memcpy(i8* %160, i32 %163, i32 %166)
  %168 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %169 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %168, i32 0, i32 1
  %170 = load %struct.fuse_release_in*, %struct.fuse_release_in** %169, align 8
  %171 = bitcast %struct.fuse_release_in* %170 to i8*
  %172 = load i64, i64* %24, align 8
  %173 = load %struct.componentname*, %struct.componentname** %6, align 8
  %174 = getelementptr inbounds %struct.componentname, %struct.componentname* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = add i64 %172, %176
  %178 = getelementptr inbounds i8, i8* %171, i64 %177
  store i8 0, i8* %178, align 1
  br label %179

179:                                              ; preds = %154, %100
  %180 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %181 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %213

184:                                              ; preds = %179
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @ENOSYS, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %184
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* @FUSE_CREATE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %188
  %193 = load %struct.mount*, %struct.mount** %19, align 8
  %194 = load i32, i32* @FUSE_CREATE, align 4
  %195 = call i32 @fsess_set_notimpl(%struct.mount* %193, i32 %194)
  %196 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %197 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %196)
  %198 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %199 = load %struct.componentname*, %struct.componentname** %6, align 8
  %200 = load %struct.vnode*, %struct.vnode** %4, align 8
  %201 = load i32, i32* %20, align 4
  %202 = load %struct.thread*, %struct.thread** %8, align 8
  %203 = load %struct.ucred*, %struct.ucred** %9, align 8
  %204 = load i32, i32* %21, align 4
  %205 = call i32 @fdisp_make_mknod_for_fallback(%struct.fuse_dispatcher* %198, %struct.componentname* %199, %struct.vnode* %200, i32 %201, %struct.thread* %202, %struct.ucred* %203, i32 %204, i32* %22)
  %206 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %207 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %206)
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %192, %188, %184
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %346

212:                                              ; preds = %208
  br label %213

213:                                              ; preds = %212, %179
  %214 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %215 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %214, i32 0, i32 2
  %216 = load %struct.fuse_open_out*, %struct.fuse_open_out** %215, align 8
  %217 = bitcast %struct.fuse_open_out* %216 to %struct.fuse_entry_out*
  store %struct.fuse_entry_out* %217, %struct.fuse_entry_out** %12, align 8
  %218 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %219 = bitcast %struct.fuse_entry_out* %218 to %struct.fuse_open_out*
  %220 = load %struct.vattr*, %struct.vattr** %7, align 8
  %221 = getelementptr inbounds %struct.vattr, %struct.vattr* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @fuse_internal_checkentry(%struct.fuse_open_out* %219, i64 %222)
  store i32 %223, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  br label %346

226:                                              ; preds = %213
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* @FUSE_CREATE, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %232 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %231, i64 1
  %233 = bitcast %struct.fuse_entry_out* %232 to %struct.fuse_open_out*
  store %struct.fuse_open_out* %233, %struct.fuse_open_out** %13, align 8
  br label %263

234:                                              ; preds = %226
  store %struct.fuse_dispatcher* %15, %struct.fuse_dispatcher** %17, align 8
  %235 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %236 = call i32 @fdisp_init(%struct.fuse_dispatcher* %235, i32 16)
  %237 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %238 = load i32, i32* @FUSE_OPEN, align 4
  %239 = load %struct.vnode*, %struct.vnode** %4, align 8
  %240 = call %struct.mount* @vnode_mount(%struct.vnode* %239)
  %241 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %242 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.thread*, %struct.thread** %8, align 8
  %245 = load %struct.ucred*, %struct.ucred** %9, align 8
  %246 = call i32 @fdisp_make(%struct.fuse_dispatcher* %237, i32 %238, %struct.mount* %240, i32 %243, %struct.thread* %244, %struct.ucred* %245)
  %247 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %248 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %247, i32 0, i32 1
  %249 = load %struct.fuse_release_in*, %struct.fuse_release_in** %248, align 8
  %250 = bitcast %struct.fuse_release_in* %249 to %struct.fuse_open_in*
  store %struct.fuse_open_in* %250, %struct.fuse_open_in** %25, align 8
  %251 = load i32, i32* %23, align 4
  %252 = load %struct.fuse_open_in*, %struct.fuse_open_in** %25, align 8
  %253 = getelementptr inbounds %struct.fuse_open_in, %struct.fuse_open_in* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 4
  %254 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %255 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %254)
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %234
  br label %346

259:                                              ; preds = %234
  %260 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %261 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %260, i32 0, i32 2
  %262 = load %struct.fuse_open_out*, %struct.fuse_open_out** %261, align 8
  store %struct.fuse_open_out* %262, %struct.fuse_open_out** %13, align 8
  br label %263

263:                                              ; preds = %259, %230
  %264 = load %struct.mount*, %struct.mount** %19, align 8
  %265 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %266 = bitcast %struct.fuse_entry_out* %265 to %struct.fuse_open_out*
  %267 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %268 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.vnode*, %struct.vnode** %4, align 8
  %271 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %272 = load %struct.componentname*, %struct.componentname** %6, align 8
  %273 = load %struct.vattr*, %struct.vattr** %7, align 8
  %274 = getelementptr inbounds %struct.vattr, %struct.vattr* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @fuse_vnode_get(%struct.mount* %264, %struct.fuse_open_out* %266, i32 %269, %struct.vnode* %270, %struct.vnode** %271, %struct.componentname* %272, i64 %275)
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %18, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %313

279:                                              ; preds = %263
  %280 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %281 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %27, align 4
  %283 = load %struct.fuse_open_out*, %struct.fuse_open_out** %13, align 8
  %284 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %28, align 4
  %286 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %287 = call i32 @fdisp_init(%struct.fuse_dispatcher* %286, i32 16)
  %288 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %289 = load i32, i32* @FUSE_RELEASE, align 4
  %290 = load %struct.mount*, %struct.mount** %19, align 8
  %291 = load i32, i32* %27, align 4
  %292 = load %struct.thread*, %struct.thread** %8, align 8
  %293 = load %struct.ucred*, %struct.ucred** %9, align 8
  %294 = call i32 @fdisp_make(%struct.fuse_dispatcher* %288, i32 %289, %struct.mount* %290, i32 %291, %struct.thread* %292, %struct.ucred* %293)
  %295 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %296 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %295, i32 0, i32 1
  %297 = load %struct.fuse_release_in*, %struct.fuse_release_in** %296, align 8
  store %struct.fuse_release_in* %297, %struct.fuse_release_in** %26, align 8
  %298 = load i32, i32* %28, align 4
  %299 = load %struct.fuse_release_in*, %struct.fuse_release_in** %26, align 8
  %300 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %23, align 4
  %302 = load %struct.fuse_release_in*, %struct.fuse_release_in** %26, align 8
  %303 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  %304 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %305 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @fuse_internal_forget_callback, align 4
  %308 = call i32 @fuse_insert_callback(i32 %306, i32 %307)
  %309 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %310 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @fuse_insert_message(i32 %311, i32 0)
  br label %346

313:                                              ; preds = %263
  %314 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %315 = load %struct.vnode*, %struct.vnode** %314, align 8
  %316 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %315, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %317 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %318 = load %struct.vnode*, %struct.vnode** %317, align 8
  %319 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %320 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %319, i32 0, i32 3
  %321 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %322 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %12, align 8
  %325 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @fuse_internal_cache_attrs(%struct.vnode* %318, i32* %320, i32 %323, i32 %326, i32* null)
  %328 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %329 = load %struct.vnode*, %struct.vnode** %328, align 8
  %330 = load i32, i32* @FUFH_RDWR, align 4
  %331 = load %struct.thread*, %struct.thread** %8, align 8
  %332 = load %struct.ucred*, %struct.ucred** %9, align 8
  %333 = load %struct.fuse_open_out*, %struct.fuse_open_out** %13, align 8
  %334 = call i32 @fuse_filehandle_init(%struct.vnode* %329, i32 %330, i32* null, %struct.thread* %331, %struct.ucred* %332, %struct.fuse_open_out* %333)
  %335 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %336 = load %struct.vnode*, %struct.vnode** %335, align 8
  %337 = load %struct.fuse_open_out*, %struct.fuse_open_out** %13, align 8
  %338 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.thread*, %struct.thread** %8, align 8
  %341 = call i32 @fuse_vnode_open(%struct.vnode* %336, i32 %339, %struct.thread* %340)
  %342 = load %struct.vnode*, %struct.vnode** %4, align 8
  %343 = call i32 @fuse_vnode_clear_attr_cache(%struct.vnode* %342)
  %344 = load %struct.vnode*, %struct.vnode** %4, align 8
  %345 = call i32 @cache_purge_negative(%struct.vnode* %344)
  br label %346

346:                                              ; preds = %313, %279, %258, %225, %211
  %347 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %348 = icmp ne %struct.fuse_dispatcher* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %17, align 8
  %351 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %350)
  br label %352

352:                                              ; preds = %349, %346
  %353 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %16, align 8
  %354 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %353)
  %355 = load i32, i32* %18, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %352, %87, %73, %65
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local %struct.TYPE_6__* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @MAKEIMODE(i64, i32) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_mknod(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.vattr*) #1

declare dso_local i32 @bzero(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fsess_isimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_make_mknod_for_fallback(%struct.fuse_dispatcher*, %struct.componentname*, %struct.vnode*, i32, %struct.thread*, %struct.ucred*, i32, i32*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, %struct.mount*, i32, %struct.thread*, %struct.ucred*) #1

declare dso_local i64 @fuse_libabi_geq(%struct.fuse_data*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fsess_set_notimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_internal_checkentry(%struct.fuse_open_out*, i64) #1

declare dso_local i32 @fuse_vnode_get(%struct.mount*, %struct.fuse_open_out*, i32, %struct.vnode*, %struct.vnode**, %struct.componentname*, i64) #1

declare dso_local i32 @fuse_insert_callback(i32, i32) #1

declare dso_local i32 @fuse_insert_message(i32, i32) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @fuse_internal_cache_attrs(%struct.vnode*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fuse_filehandle_init(%struct.vnode*, i32, i32*, %struct.thread*, %struct.ucred*, %struct.fuse_open_out*) #1

declare dso_local i32 @fuse_vnode_open(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @fuse_vnode_clear_attr_cache(%struct.vnode*) #1

declare dso_local i32 @cache_purge_negative(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
