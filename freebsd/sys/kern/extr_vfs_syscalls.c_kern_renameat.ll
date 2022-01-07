; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_renameat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i64 }
%struct.nameidata = type { i32, %struct.vnode*, %struct.vnode*, %struct.TYPE_7__, %struct.vnode*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DELETE = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@cap_renameat_source_rights = common dso_local global i32 0, align 4
@RENAME = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@AUDITVNODE2 = common dso_local global i32 0, align 4
@cap_renameat_target_rights = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@WILLBEDIR = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@NIRES_ABS = common dso_local global i32 0, align 4
@cap_unlinkat_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_renameat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.nameidata, align 8
  %19 = alloca %struct.nameidata, align 8
  %20 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.mount* null, %struct.mount** %14, align 8
  br label %21

21:                                               ; preds = %146, %6
  %22 = call i32 (...) @bwillwrite()
  %23 = load i32, i32* @DELETE, align 4
  %24 = load i32, i32* @WANTPARENT, align 4
  %25 = load i32, i32* @SAVESTART, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AUDITVNODE1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %18, i32 %23, i32 %28, i32 %29, i8* %30, i32 %31, i32* @cap_renameat_source_rights, %struct.thread* %32)
  %34 = call i32 @namei(%struct.nameidata* %18)
  store i32 %34, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %20, align 4
  store i32 %37, i32* %7, align 4
  br label %257

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 4
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  store %struct.vnode* %40, %struct.vnode** %16, align 8
  %41 = load i32, i32* @RENAME, align 4
  %42 = load i32, i32* @LOCKPARENT, align 4
  %43 = load i32, i32* @LOCKLEAF, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NOCACHE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SAVESTART, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AUDITVNODE2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.thread*, %struct.thread** %8, align 8
  %55 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %19, i32 %41, i32 %50, i32 %51, i8* %52, i32 %53, i32* @cap_renameat_target_rights, %struct.thread* %54)
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 4
  %57 = load %struct.vnode*, %struct.vnode** %56, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VDIR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %38
  %63 = load i32, i32* @WILLBEDIR, align 4
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %38
  %69 = call i32 @namei(%struct.nameidata* %19)
  store i32 %69, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @EISDIR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.vnode*, %struct.vnode** %16, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VDIR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %20, align 4
  br label %83

83:                                               ; preds = %81, %75, %71
  %84 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %85 = call i32 @NDFREE(%struct.nameidata* %18, i32 %84)
  %86 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %87 = load %struct.vnode*, %struct.vnode** %86, align 8
  %88 = call i32 @vrele(%struct.vnode* %87)
  %89 = load %struct.vnode*, %struct.vnode** %16, align 8
  %90 = call i32 @vrele(%struct.vnode* %89)
  br label %243

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 2
  %93 = load %struct.vnode*, %struct.vnode** %92, align 8
  store %struct.vnode* %93, %struct.vnode** %17, align 8
  %94 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 4
  %95 = load %struct.vnode*, %struct.vnode** %94, align 8
  store %struct.vnode* %95, %struct.vnode** %15, align 8
  %96 = load %struct.vnode*, %struct.vnode** %16, align 8
  %97 = load i32, i32* @V_NOWAIT, align 4
  %98 = call i32 @vn_start_write(%struct.vnode* %96, %struct.mount** %14, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %91
  %102 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %103 = call i32 @NDFREE(%struct.nameidata* %18, i32 %102)
  %104 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %105 = call i32 @NDFREE(%struct.nameidata* %19, i32 %104)
  %106 = load %struct.vnode*, %struct.vnode** %15, align 8
  %107 = icmp ne %struct.vnode* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.vnode*, %struct.vnode** %15, align 8
  %110 = call i32 @vput(%struct.vnode* %109)
  br label %111

111:                                              ; preds = %108, %101
  %112 = load %struct.vnode*, %struct.vnode** %17, align 8
  %113 = load %struct.vnode*, %struct.vnode** %15, align 8
  %114 = icmp eq %struct.vnode* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.vnode*, %struct.vnode** %17, align 8
  %117 = call i32 @vrele(%struct.vnode* %116)
  br label %121

118:                                              ; preds = %111
  %119 = load %struct.vnode*, %struct.vnode** %17, align 8
  %120 = call i32 @vput(%struct.vnode* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %123 = load %struct.vnode*, %struct.vnode** %122, align 8
  %124 = call i32 @vrele(%struct.vnode* %123)
  %125 = load %struct.vnode*, %struct.vnode** %16, align 8
  %126 = call i32 @vrele(%struct.vnode* %125)
  %127 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %128 = load %struct.vnode*, %struct.vnode** %127, align 8
  %129 = call i32 @vrele(%struct.vnode* %128)
  %130 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %131 = load %struct.vnode*, %struct.vnode** %130, align 8
  %132 = icmp ne %struct.vnode* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %135 = load %struct.vnode*, %struct.vnode** %134, align 8
  %136 = call i32 @vrele(%struct.vnode* %135)
  br label %137

137:                                              ; preds = %133, %121
  %138 = load i32, i32* @V_XSLEEP, align 4
  %139 = load i32, i32* @PCATCH, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @vn_start_write(%struct.vnode* null, %struct.mount** %14, i32 %140)
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %20, align 4
  store i32 %145, i32* %7, align 4
  br label %257

146:                                              ; preds = %137
  br label %21

147:                                              ; preds = %91
  %148 = load %struct.vnode*, %struct.vnode** %15, align 8
  %149 = icmp ne %struct.vnode* %148, null
  br i1 %149, label %150, label %180

150:                                              ; preds = %147
  %151 = load %struct.vnode*, %struct.vnode** %16, align 8
  %152 = getelementptr inbounds %struct.vnode, %struct.vnode* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VDIR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load %struct.vnode*, %struct.vnode** %15, align 8
  %158 = getelementptr inbounds %struct.vnode, %struct.vnode* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VDIR, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @ENOTDIR, align 4
  store i32 %163, i32* %20, align 4
  br label %192

164:                                              ; preds = %156, %150
  %165 = load %struct.vnode*, %struct.vnode** %16, align 8
  %166 = getelementptr inbounds %struct.vnode, %struct.vnode* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VDIR, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load %struct.vnode*, %struct.vnode** %15, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VDIR, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @EISDIR, align 4
  store i32 %177, i32* %20, align 4
  br label %192

178:                                              ; preds = %170, %164
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %147
  %181 = load %struct.vnode*, %struct.vnode** %16, align 8
  %182 = load %struct.vnode*, %struct.vnode** %17, align 8
  %183 = icmp eq %struct.vnode* %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %20, align 4
  br label %192

186:                                              ; preds = %180
  %187 = load %struct.vnode*, %struct.vnode** %16, align 8
  %188 = load %struct.vnode*, %struct.vnode** %15, align 8
  %189 = icmp eq %struct.vnode* %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 -1, i32* %20, align 4
  br label %191

191:                                              ; preds = %190, %186
  br label %192

192:                                              ; preds = %191, %184, %176, %162
  %193 = load i32, i32* %20, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %197 = load %struct.vnode*, %struct.vnode** %196, align 8
  %198 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 4
  %199 = load %struct.vnode*, %struct.vnode** %198, align 8
  %200 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 3
  %201 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 2
  %202 = load %struct.vnode*, %struct.vnode** %201, align 8
  %203 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 4
  %204 = load %struct.vnode*, %struct.vnode** %203, align 8
  %205 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 3
  %206 = call i32 @VOP_RENAME(%struct.vnode* %197, %struct.vnode* %199, %struct.TYPE_7__* %200, %struct.vnode* %202, %struct.vnode* %204, %struct.TYPE_7__* %205)
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %208 = call i32 @NDFREE(%struct.nameidata* %18, i32 %207)
  %209 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %210 = call i32 @NDFREE(%struct.nameidata* %19, i32 %209)
  br label %237

211:                                              ; preds = %192
  %212 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %213 = call i32 @NDFREE(%struct.nameidata* %18, i32 %212)
  %214 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %215 = call i32 @NDFREE(%struct.nameidata* %19, i32 %214)
  %216 = load %struct.vnode*, %struct.vnode** %15, align 8
  %217 = icmp ne %struct.vnode* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load %struct.vnode*, %struct.vnode** %15, align 8
  %220 = call i32 @vput(%struct.vnode* %219)
  br label %221

221:                                              ; preds = %218, %211
  %222 = load %struct.vnode*, %struct.vnode** %17, align 8
  %223 = load %struct.vnode*, %struct.vnode** %15, align 8
  %224 = icmp eq %struct.vnode* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load %struct.vnode*, %struct.vnode** %17, align 8
  %227 = call i32 @vrele(%struct.vnode* %226)
  br label %231

228:                                              ; preds = %221
  %229 = load %struct.vnode*, %struct.vnode** %17, align 8
  %230 = call i32 @vput(%struct.vnode* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %233 = load %struct.vnode*, %struct.vnode** %232, align 8
  %234 = call i32 @vrele(%struct.vnode* %233)
  %235 = load %struct.vnode*, %struct.vnode** %16, align 8
  %236 = call i32 @vrele(%struct.vnode* %235)
  br label %237

237:                                              ; preds = %231, %195
  %238 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %239 = load %struct.vnode*, %struct.vnode** %238, align 8
  %240 = call i32 @vrele(%struct.vnode* %239)
  %241 = load %struct.mount*, %struct.mount** %14, align 8
  %242 = call i32 @vn_finished_write(%struct.mount* %241)
  br label %243

243:                                              ; preds = %237, %83
  %244 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %245 = load %struct.vnode*, %struct.vnode** %244, align 8
  %246 = icmp ne %struct.vnode* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %249 = load %struct.vnode*, %struct.vnode** %248, align 8
  %250 = call i32 @vrele(%struct.vnode* %249)
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i32, i32* %20, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 0, i32* %7, align 4
  br label %257

255:                                              ; preds = %251
  %256 = load i32, i32* %20, align 4
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %255, %254, %144, %36
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VOP_RENAME(%struct.vnode*, %struct.vnode*, %struct.TYPE_7__*, %struct.vnode*, %struct.vnode*, %struct.TYPE_7__*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
