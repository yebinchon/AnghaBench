; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_write_directbackend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_write_directbackend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i64, i32, i32 }
%struct.ucred = type { i32 }
%struct.fuse_filehandle = type { i32, i32, i32 }
%struct.fuse_vnode_data = type { i32 }
%struct.fuse_data = type { i32 }
%struct.fuse_write_in = type { i32, i64, i8*, i32, i32 }
%struct.fuse_write_out = type { i32 }
%struct.fuse_dispatcher = type { i64, %struct.fuse_write_in*, i64 }

@FOPEN_DIRECT_IO = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@FUSE_WRITE_CACHE = common dso_local global i8* null, align 8
@IO_APPEND = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@FUSE_COMPAT_WRITE_IN_SIZE = common dso_local global i64 0, align 8
@FUSE_WRITE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@FN_SIZECHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"WARNING: misbehaving FUSE filesystem wrote more data than we provided it\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"WARNING: misbehaving FUSE filesystem: short writes are only allowed with direct_io\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"FUSE dispatcher reallocated despite no increase in size?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*, %struct.ucred*, %struct.fuse_filehandle*, i32, i32, i32)* @fuse_write_directbackend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_write_directbackend(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2, %struct.fuse_filehandle* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.fuse_filehandle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fuse_vnode_data*, align 8
  %17 = alloca %struct.fuse_data*, align 8
  %18 = alloca %struct.fuse_write_in*, align 8
  %19 = alloca %struct.fuse_write_out*, align 8
  %20 = alloca %struct.fuse_dispatcher, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store %struct.uio* %1, %struct.uio** %10, align 8
  store %struct.ucred* %2, %struct.ucred** %11, align 8
  store %struct.fuse_filehandle* %3, %struct.fuse_filehandle** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %31 = load %struct.vnode*, %struct.vnode** %9, align 8
  %32 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %31)
  store %struct.fuse_vnode_data* %32, %struct.fuse_vnode_data** %16, align 8
  store i32 0, i32* %25, align 4
  %33 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %12, align 8
  %34 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FOPEN_DIRECT_IO, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %38 = load %struct.vnode*, %struct.vnode** %9, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.fuse_data* @fuse_get_mpdata(i32 %40)
  store %struct.fuse_data* %41, %struct.fuse_data** %17, align 8
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %7
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @IO_DIRECT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.vnode*, %struct.vnode** %9, align 8
  %51 = call i32 @vnode_mount(%struct.vnode* %50)
  %52 = call i32 @fsess_opt_datacache(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.vnode*, %struct.vnode** %9, align 8
  %56 = call i32 @vnode_mount(%struct.vnode* %55)
  %57 = call i32 @fsess_opt_writeback(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %49, %44
  br label %62

60:                                               ; preds = %54, %7
  %61 = load i8*, i8** @FUSE_WRITE_CACHE, align 8
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i8* [ null, %59 ], [ %61, %60 ]
  store i8* %63, i8** %28, align 8
  %64 = load %struct.uio*, %struct.uio** %10, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %332

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @IO_APPEND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.uio*, %struct.uio** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @uio_setoffset(%struct.uio* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.vnode*, %struct.vnode** %9, align 8
  %80 = load %struct.uio*, %struct.uio** %10, align 8
  %81 = load %struct.uio*, %struct.uio** %10, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @vn_rlimit_fsize(%struct.vnode* %79, %struct.uio* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @EFBIG, align 4
  store i32 %87, i32* %8, align 4
  br label %332

88:                                               ; preds = %78
  %89 = call i32 @fdisp_init(%struct.fuse_dispatcher* %20, i32 0)
  br label %90

90:                                               ; preds = %322, %88
  %91 = load %struct.uio*, %struct.uio** %10, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %323

95:                                               ; preds = %90
  %96 = load %struct.fuse_data*, %struct.fuse_data** %17, align 8
  %97 = call i64 @fuse_libabi_geq(%struct.fuse_data* %96, i32 7, i32 9)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i64 32, i64* %29, align 8
  br label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @FUSE_COMPAT_WRITE_IN_SIZE, align 8
  store i64 %101, i64* %29, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = load %struct.uio*, %struct.uio** %10, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.fuse_data*, %struct.fuse_data** %17, align 8
  %107 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @MIN(i64 %105, i32 %108)
  store i64 %109, i64* %21, align 8
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %21, align 8
  %112 = add i64 %110, %111
  %113 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* @FUSE_WRITE, align 4
  %115 = load %struct.vnode*, %struct.vnode** %9, align 8
  %116 = load %struct.uio*, %struct.uio** %10, align 8
  %117 = getelementptr inbounds %struct.uio, %struct.uio* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ucred*, %struct.ucred** %11, align 8
  %120 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %20, i32 %114, %struct.vnode* %115, i32 %118, %struct.ucred* %119)
  %121 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 1
  %122 = load %struct.fuse_write_in*, %struct.fuse_write_in** %121, align 8
  store %struct.fuse_write_in* %122, %struct.fuse_write_in** %18, align 8
  %123 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %12, align 8
  %124 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %127 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.uio*, %struct.uio** %10, align 8
  %129 = getelementptr inbounds %struct.uio, %struct.uio* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %132 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %135 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** %28, align 8
  %137 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %138 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.fuse_data*, %struct.fuse_data** %17, align 8
  %140 = call i64 @fuse_libabi_geq(%struct.fuse_data* %139, i32 7, i32 9)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %102
  %143 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %12, align 8
  %144 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fufh_type_2_fflags(i32 %145)
  %147 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %148 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %102
  %150 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 1
  %151 = load %struct.fuse_write_in*, %struct.fuse_write_in** %150, align 8
  %152 = bitcast %struct.fuse_write_in* %151 to i8*
  %153 = load i64, i64* %29, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %22, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load %struct.uio*, %struct.uio** %10, align 8
  %158 = call i32 @uiomove(i8* %155, i64 %156, %struct.uio* %157)
  store i32 %158, i32* %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %323

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %275, %161
  %163 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %20)
  store i32 %163, i32* %25, align 4
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* @ERESTART, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* @EINTR, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* @EWOULDBLOCK, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %198

175:                                              ; preds = %171, %167, %162
  %176 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %177 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.uio*, %struct.uio** %10, align 8
  %180 = getelementptr inbounds %struct.uio, %struct.uio* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %184 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.uio*, %struct.uio** %10, align 8
  %187 = getelementptr inbounds %struct.uio, %struct.uio* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = sub i64 %189, %185
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 8
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* @ERESTART, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %175
  %196 = load i32, i32* @EINTR, align 4
  store i32 %196, i32* %25, align 4
  br label %197

197:                                              ; preds = %195, %175
  br label %323

198:                                              ; preds = %171
  %199 = load i32, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %323

202:                                              ; preds = %198
  store i32 1, i32* %27, align 4
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to %struct.fuse_write_out*
  store %struct.fuse_write_out* %207, %struct.fuse_write_out** %19, align 8
  %208 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %209 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.fuse_write_out*, %struct.fuse_write_out** %19, align 8
  %212 = getelementptr inbounds %struct.fuse_write_out, %struct.fuse_write_out* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = sub i64 %210, %214
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %24, align 4
  %217 = load %struct.uio*, %struct.uio** %10, align 8
  %218 = getelementptr inbounds %struct.uio, %struct.uio* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %23, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %24, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32, i32* %13, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %204
  %228 = load %struct.vnode*, %struct.vnode** %9, align 8
  %229 = load i32, i32* %23, align 4
  %230 = call i32 @fuse_vnode_setsize(%struct.vnode* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %204
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %24, align 4
  %234 = sub nsw i32 %232, %233
  %235 = load i32, i32* %13, align 4
  %236 = icmp sge i32 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load i32, i32* @FN_SIZECHANGE, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %16, align 8
  %241 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %237, %231
  %245 = load i32, i32* %24, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %249 = load i32, i32* @EINVAL, align 4
  store i32 %249, i32* %25, align 4
  br label %323

250:                                              ; preds = %244
  %251 = load i32, i32* %24, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %321

253:                                              ; preds = %250
  %254 = load i32, i32* %26, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = call i32 @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %253
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* @IO_DIRECT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %258
  %264 = load i32, i32* %24, align 4
  %265 = sext i32 %264 to i64
  %266 = load %struct.uio*, %struct.uio** %10, align 8
  %267 = getelementptr inbounds %struct.uio, %struct.uio* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  %270 = load i32, i32* %24, align 4
  %271 = load %struct.uio*, %struct.uio** %10, align 8
  %272 = getelementptr inbounds %struct.uio, %struct.uio* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %323

275:                                              ; preds = %258
  %276 = load i64, i64* %29, align 8
  %277 = load i32, i32* %24, align 4
  %278 = sext i32 %277 to i64
  %279 = add i64 %276, %278
  %280 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 0
  store i64 %279, i64* %280, align 8
  %281 = load i32, i32* @FUSE_WRITE, align 4
  %282 = load %struct.vnode*, %struct.vnode** %9, align 8
  %283 = load %struct.uio*, %struct.uio** %10, align 8
  %284 = getelementptr inbounds %struct.uio, %struct.uio* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ucred*, %struct.ucred** %11, align 8
  %287 = call i32 @fdisp_refresh_vp(%struct.fuse_dispatcher* %20, i32 %281, %struct.vnode* %282, i32 %285, %struct.ucred* %286)
  %288 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 1
  %289 = load %struct.fuse_write_in*, %struct.fuse_write_in** %288, align 8
  store %struct.fuse_write_in* %289, %struct.fuse_write_in** %18, align 8
  %290 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %291 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %20, i32 0, i32 1
  %292 = load %struct.fuse_write_in*, %struct.fuse_write_in** %291, align 8
  %293 = icmp eq %struct.fuse_write_in* %290, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @MPASS2(i32 %294, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %296 = load i8*, i8** %22, align 8
  %297 = load %struct.fuse_write_out*, %struct.fuse_write_out** %19, align 8
  %298 = getelementptr inbounds %struct.fuse_write_out, %struct.fuse_write_out* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %296, i64 %300
  store i8* %301, i8** %30, align 8
  %302 = load i8*, i8** %22, align 8
  %303 = load i8*, i8** %30, align 8
  %304 = load i32, i32* %24, align 4
  %305 = call i32 @memmove(i8* %302, i8* %303, i32 %304)
  %306 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %12, align 8
  %307 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %310 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %23, align 4
  %312 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %313 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %24, align 4
  %315 = sext i32 %314 to i64
  %316 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %317 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %316, i32 0, i32 1
  store i64 %315, i64* %317, align 8
  %318 = load i8*, i8** %28, align 8
  %319 = load %struct.fuse_write_in*, %struct.fuse_write_in** %18, align 8
  %320 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %319, i32 0, i32 2
  store i8* %318, i8** %320, align 8
  br label %162

321:                                              ; preds = %250
  br label %322

322:                                              ; preds = %321
  br label %90

323:                                              ; preds = %263, %247, %201, %197, %160, %90
  %324 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %20)
  %325 = load i32, i32* %27, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = load %struct.vnode*, %struct.vnode** %9, align 8
  %329 = call i32 @fuse_vnode_undirty_cached_timestamps(%struct.vnode* %328)
  br label %330

330:                                              ; preds = %327, %323
  %331 = load i32, i32* %25, align 4
  store i32 %331, i32* %8, align 4
  br label %332

332:                                              ; preds = %330, %86, %68
  %333 = load i32, i32* %8, align 4
  ret i32 %333
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(i32) #1

declare dso_local i32 @fsess_opt_datacache(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @fsess_opt_writeback(i32) #1

declare dso_local i32 @uio_setoffset(%struct.uio*, i32) #1

declare dso_local i64 @vn_rlimit_fsize(%struct.vnode*, %struct.uio*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i64 @fuse_libabi_geq(%struct.fuse_data*, i32, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32, %struct.ucred*) #1

declare dso_local i32 @fufh_type_2_fflags(i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_vnode_setsize(%struct.vnode*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fdisp_refresh_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32, %struct.ucred*) #1

declare dso_local i32 @MPASS2(i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_vnode_undirty_cached_timestamps(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
