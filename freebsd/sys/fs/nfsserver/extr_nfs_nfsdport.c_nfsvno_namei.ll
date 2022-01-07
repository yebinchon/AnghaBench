; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_namei.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_namei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.nameidata = type { i32, %struct.vnode*, %struct.componentname, %struct.vnode*, %struct.vnode*, %struct.vnode*, i32, i64, i32*, i8*, i64 }
%struct.componentname = type { i32, i8*, i8*, i32, %struct.thread* }
%struct.vnode = type { i64 }
%struct.nfsexstuff = type { i32 }
%struct.thread = type { i32 }
%struct.iovec = type { i8*, i32 }
%struct.uio = type { i32, i32, i32*, i8*, i32, i64, %struct.iovec* }

@LOCKLEAF = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@RDONLY = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i8* null, align 8
@ND_PUBLOOKUP = common dso_local global i32 0, align 4
@NFSERR_ACCES = common dso_local global i32 0, align 4
@rootvnode = common dso_local global i8* null, align 8
@nfsrv_enable_crossmntpt = common dso_local global i64 0, align 8
@ND_NFSV4 = common dso_local global i32 0, align 4
@NOCROSSMOUNT = common dso_local global i32 0, align 4
@ISSYMLINK = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXSYMLINKS = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_namei(%struct.nfsrv_descript* %0, %struct.nameidata* %1, %struct.vnode* %2, i32 %3, %struct.nfsexstuff* %4, %struct.thread* %5, %struct.vnode** %6) #0 {
  %8 = alloca %struct.nfsrv_descript*, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsexstuff*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.vnode**, align 8
  %15 = alloca %struct.componentname*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iovec, align 8
  %18 = alloca %struct.uio, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %8, align 8
  store %struct.nameidata* %1, %struct.nameidata** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.nfsexstuff* %4, %struct.nfsexstuff** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  store %struct.vnode** %6, %struct.vnode*** %14, align 8
  %23 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %23, i32 0, i32 2
  store %struct.componentname* %24, %struct.componentname** %15, align 8
  %25 = load %struct.componentname*, %struct.componentname** %15, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LOCKLEAF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %32 = load %struct.vnode**, %struct.vnode*** %14, align 8
  store %struct.vnode* null, %struct.vnode** %32, align 8
  %33 = load %struct.componentname*, %struct.componentname** %15, align 8
  %34 = getelementptr inbounds %struct.componentname, %struct.componentname* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.componentname*, %struct.componentname** %15, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load %struct.vnode*, %struct.vnode** %10, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VDIR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %7
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.vnode*, %struct.vnode** %10, align 8
  %50 = call i32 @vput(%struct.vnode* %49)
  br label %54

51:                                               ; preds = %45
  %52 = load %struct.vnode*, %struct.vnode** %10, align 8
  %53 = call i32 @vrele(%struct.vnode* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %56 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %55)
  %57 = load i32, i32* @ENOTDIR, align 4
  store i32 %57, i32* %21, align 4
  br label %445

58:                                               ; preds = %7
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.vnode*, %struct.vnode** %10, align 8
  %63 = call i32 @NFSVOPUNLOCK(%struct.vnode* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.vnode*, %struct.vnode** %10, align 8
  %66 = call i32 @VREF(%struct.vnode* %65)
  %67 = load %struct.vnode*, %struct.vnode** %10, align 8
  %68 = load %struct.vnode**, %struct.vnode*** %14, align 8
  store %struct.vnode* %67, %struct.vnode** %68, align 8
  %69 = load %struct.nfsexstuff*, %struct.nfsexstuff** %12, align 8
  %70 = call i64 @NFSVNO_EXRDONLY(%struct.nfsexstuff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @RDONLY, align 4
  %74 = load %struct.componentname*, %struct.componentname** %15, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i8*, i8** @UIO_SYSSPACE, align 8
  %80 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %81 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %80, i32 0, i32 9
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %83 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ND_PUBLOOKUP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %78
  %89 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.componentname*, %struct.componentname** %15, align 8
  %92 = getelementptr inbounds %struct.componentname, %struct.componentname* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %98, label %135

98:                                               ; preds = %88
  %99 = load %struct.vnode*, %struct.vnode** %10, align 8
  %100 = call i32 @vrele(%struct.vnode* %99)
  store i32 1, i32* %16, align 4
  br label %101

101:                                              ; preds = %119, %98
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %104 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.componentname*, %struct.componentname** %15, align 8
  %109 = getelementptr inbounds %struct.componentname, %struct.componentname* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 47
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %122

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %101

122:                                              ; preds = %117, %101
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %125 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @NFSERR_ACCES, align 4
  store i32 %129, i32* %21, align 4
  br label %418

130:                                              ; preds = %122
  %131 = load i8*, i8** @rootvnode, align 8
  %132 = bitcast i8* %131 to %struct.vnode*
  store %struct.vnode* %132, %struct.vnode** %10, align 8
  %133 = load %struct.vnode*, %struct.vnode** %10, align 8
  %134 = call i32 @VREF(%struct.vnode* %133)
  br label %135

135:                                              ; preds = %130, %88
  br label %157

136:                                              ; preds = %78
  %137 = load i64, i64* @nfsrv_enable_crossmntpt, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.nfsexstuff*, %struct.nfsexstuff** %12, align 8
  %141 = call i64 @NFSVNO_EXPORTED(%struct.nfsexstuff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %139, %136
  %144 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %145 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ND_NFSV4, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143, %139
  %151 = load i32, i32* @NOCROSSMOUNT, align 4
  %152 = load %struct.componentname*, %struct.componentname** %15, align 8
  %153 = getelementptr inbounds %struct.componentname, %struct.componentname* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %143
  br label %157

157:                                              ; preds = %156, %135
  %158 = load %struct.thread*, %struct.thread** %13, align 8
  %159 = load %struct.componentname*, %struct.componentname** %15, align 8
  %160 = getelementptr inbounds %struct.componentname, %struct.componentname* %159, i32 0, i32 4
  store %struct.thread* %158, %struct.thread** %160, align 8
  %161 = load %struct.vnode*, %struct.vnode** %10, align 8
  %162 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %163 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %162, i32 0, i32 3
  store %struct.vnode* %161, %struct.vnode** %163, align 8
  %164 = load i8*, i8** @rootvnode, align 8
  %165 = bitcast i8* %164 to %struct.vnode*
  %166 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %167 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %166, i32 0, i32 5
  store %struct.vnode* %165, %struct.vnode** %167, align 8
  %168 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %169 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %168, i32 0, i32 8
  store i32* null, i32** %169, align 8
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %157
  %173 = load i32, i32* @LOCKLEAF, align 4
  %174 = load %struct.componentname*, %struct.componentname** %15, align 8
  %175 = getelementptr inbounds %struct.componentname, %struct.componentname* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %157
  br label %179

179:                                              ; preds = %399, %178
  %180 = load %struct.componentname*, %struct.componentname** %15, align 8
  %181 = getelementptr inbounds %struct.componentname, %struct.componentname* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.componentname*, %struct.componentname** %15, align 8
  %184 = getelementptr inbounds %struct.componentname, %struct.componentname* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %186 = call i32 @lookup(%struct.nameidata* %185)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %407

190:                                              ; preds = %179
  %191 = load %struct.componentname*, %struct.componentname** %15, align 8
  %192 = getelementptr inbounds %struct.componentname, %struct.componentname* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @ISSYMLINK, align 4
  %195 = and i32 %193, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %223

197:                                              ; preds = %190
  %198 = load %struct.componentname*, %struct.componentname** %15, align 8
  %199 = getelementptr inbounds %struct.componentname, %struct.componentname* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SAVENAME, align 4
  %202 = load i32, i32* @SAVESTART, align 4
  %203 = or i32 %201, %202
  %204 = and i32 %200, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %208 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %207)
  br label %209

209:                                              ; preds = %206, %197
  %210 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %211 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %210, i32 0, i32 4
  %212 = load %struct.vnode*, %struct.vnode** %211, align 8
  %213 = icmp ne %struct.vnode* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %219 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %218, i32 0, i32 4
  %220 = load %struct.vnode*, %struct.vnode** %219, align 8
  %221 = call i32 @NFSVOPUNLOCK(%struct.vnode* %220, i32 0)
  br label %222

222:                                              ; preds = %217, %214, %209
  br label %407

223:                                              ; preds = %190
  %224 = load %struct.componentname*, %struct.componentname** %15, align 8
  %225 = getelementptr inbounds %struct.componentname, %struct.componentname* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @LOCKPARENT, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %223
  %231 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %232 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %237 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %236, i32 0, i32 1
  %238 = load %struct.vnode*, %struct.vnode** %237, align 8
  %239 = call i32 @NFSVOPUNLOCK(%struct.vnode* %238, i32 0)
  br label %240

240:                                              ; preds = %235, %230, %223
  %241 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %242 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ND_PUBLOOKUP, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %240
  %248 = load i32, i32* @EINVAL, align 4
  store i32 %248, i32* %21, align 4
  br label %306

249:                                              ; preds = %240
  %250 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %251 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %251, align 8
  %254 = load i64, i64* @MAXSYMLINKS, align 8
  %255 = icmp sge i64 %252, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* @ELOOP, align 4
  store i32 %257, i32* %21, align 4
  br label %306

258:                                              ; preds = %249
  %259 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %260 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i32, i32* @namei_zone, align 4
  %265 = load i32, i32* @M_WAITOK, align 4
  %266 = call i8* @uma_zalloc(i32 %264, i32 %265)
  store i8* %266, i8** %22, align 8
  br label %271

267:                                              ; preds = %258
  %268 = load %struct.componentname*, %struct.componentname** %15, align 8
  %269 = getelementptr inbounds %struct.componentname, %struct.componentname* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  store i8* %270, i8** %22, align 8
  br label %271

271:                                              ; preds = %267, %263
  %272 = load i8*, i8** %22, align 8
  %273 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  store i8* %272, i8** %273, align 8
  %274 = load i32, i32* @MAXPATHLEN, align 4
  %275 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 1
  store i32 %274, i32* %275, align 8
  %276 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 6
  store %struct.iovec* %17, %struct.iovec** %276, align 8
  %277 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  store i32 1, i32* %277, align 8
  %278 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 5
  store i64 0, i64* %278, align 8
  %279 = load i32, i32* @UIO_READ, align 4
  %280 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 4
  store i32 %279, i32* %280, align 8
  %281 = load i8*, i8** @UIO_SYSSPACE, align 8
  %282 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 3
  store i8* %281, i8** %282, align 8
  %283 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  store i32* null, i32** %283, align 8
  %284 = load i32, i32* @MAXPATHLEN, align 4
  %285 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  store i32 %284, i32* %285, align 4
  %286 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %287 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %286, i32 0, i32 4
  %288 = load %struct.vnode*, %struct.vnode** %287, align 8
  %289 = load %struct.componentname*, %struct.componentname** %15, align 8
  %290 = getelementptr inbounds %struct.componentname, %struct.componentname* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @VOP_READLINK(%struct.vnode* %288, %struct.uio* %18, i32 %291)
  store i32 %292, i32* %21, align 4
  %293 = load i32, i32* %21, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %315

295:                                              ; preds = %271
  br label %296

296:                                              ; preds = %332, %322, %295
  %297 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %298 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32, i32* @namei_zone, align 4
  %303 = load i8*, i8** %22, align 8
  %304 = call i32 @uma_zfree(i32 %302, i8* %303)
  br label %305

305:                                              ; preds = %301, %296
  br label %306

306:                                              ; preds = %305, %256, %247
  %307 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %308 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %307, i32 0, i32 1
  %309 = load %struct.vnode*, %struct.vnode** %308, align 8
  %310 = call i32 @vrele(%struct.vnode* %309)
  %311 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %312 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %311, i32 0, i32 4
  %313 = load %struct.vnode*, %struct.vnode** %312, align 8
  %314 = call i32 @vput(%struct.vnode* %313)
  br label %407

315:                                              ; preds = %271
  %316 = load i32, i32* @MAXPATHLEN, align 4
  %317 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %316, %318
  store i32 %319, i32* %20, align 4
  %320 = load i32, i32* %20, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %315
  %323 = load i32, i32* @ENOENT, align 4
  store i32 %323, i32* %21, align 4
  br label %296

324:                                              ; preds = %315
  %325 = load i32, i32* %20, align 4
  %326 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %327 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %325, %328
  %330 = load i32, i32* @MAXPATHLEN, align 4
  %331 = icmp sge i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %324
  %333 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %333, i32* %21, align 4
  br label %296

334:                                              ; preds = %324
  %335 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %336 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp sgt i32 %337, 1
  br i1 %338, label %339, label %359

339:                                              ; preds = %334
  %340 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %341 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = load i8*, i8** %22, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %348 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @NFSBCOPY(i32 %342, i8* %346, i32 %349)
  %351 = load i32, i32* @namei_zone, align 4
  %352 = load %struct.componentname*, %struct.componentname** %15, align 8
  %353 = getelementptr inbounds %struct.componentname, %struct.componentname* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @uma_zfree(i32 %351, i8* %354)
  %356 = load i8*, i8** %22, align 8
  %357 = load %struct.componentname*, %struct.componentname** %15, align 8
  %358 = getelementptr inbounds %struct.componentname, %struct.componentname* %357, i32 0, i32 2
  store i8* %356, i8** %358, align 8
  br label %366

359:                                              ; preds = %334
  %360 = load %struct.componentname*, %struct.componentname** %15, align 8
  %361 = getelementptr inbounds %struct.componentname, %struct.componentname* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = load i32, i32* %20, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  store i8 0, i8* %365, align 1
  br label %366

366:                                              ; preds = %359, %339
  %367 = load i32, i32* %20, align 4
  %368 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %369 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %370, %367
  store i32 %371, i32* %369, align 8
  %372 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %373 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %372, i32 0, i32 4
  %374 = load %struct.vnode*, %struct.vnode** %373, align 8
  %375 = call i32 @vput(%struct.vnode* %374)
  %376 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %377 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %376, i32 0, i32 4
  store %struct.vnode* null, %struct.vnode** %377, align 8
  %378 = load %struct.componentname*, %struct.componentname** %15, align 8
  %379 = getelementptr inbounds %struct.componentname, %struct.componentname* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 0
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp eq i32 %383, 47
  br i1 %384, label %385, label %399

385:                                              ; preds = %366
  %386 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %387 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %386, i32 0, i32 1
  %388 = load %struct.vnode*, %struct.vnode** %387, align 8
  %389 = call i32 @vrele(%struct.vnode* %388)
  %390 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %391 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %390, i32 0, i32 5
  %392 = load %struct.vnode*, %struct.vnode** %391, align 8
  %393 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %394 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %393, i32 0, i32 1
  store %struct.vnode* %392, %struct.vnode** %394, align 8
  %395 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %396 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %395, i32 0, i32 1
  %397 = load %struct.vnode*, %struct.vnode** %396, align 8
  %398 = call i32 @VREF(%struct.vnode* %397)
  br label %399

399:                                              ; preds = %385, %366
  %400 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %401 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %400, i32 0, i32 1
  %402 = load %struct.vnode*, %struct.vnode** %401, align 8
  %403 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %404 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %403, i32 0, i32 3
  store %struct.vnode* %402, %struct.vnode** %404, align 8
  %405 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %406 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %405, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %406, align 8
  br label %179

407:                                              ; preds = %306, %222, %189
  %408 = load i32, i32* %19, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* @LOCKLEAF, align 4
  %412 = xor i32 %411, -1
  %413 = load %struct.componentname*, %struct.componentname** %15, align 8
  %414 = getelementptr inbounds %struct.componentname, %struct.componentname* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = and i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %410, %407
  br label %418

418:                                              ; preds = %417, %128
  %419 = load i32, i32* %21, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %418
  %422 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %423 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %422)
  %424 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %425 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %424, i32 0, i32 4
  store %struct.vnode* null, %struct.vnode** %425, align 8
  %426 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %427 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %426, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %427, align 8
  %428 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %429 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %428, i32 0, i32 3
  store %struct.vnode* null, %struct.vnode** %429, align 8
  br label %444

430:                                              ; preds = %418
  %431 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %432 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.componentname, %struct.componentname* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @WANTPARENT, align 4
  %436 = load i32, i32* @LOCKPARENT, align 4
  %437 = or i32 %435, %436
  %438 = and i32 %434, %437
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %430
  %441 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %442 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %441, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %442, align 8
  br label %443

443:                                              ; preds = %440, %430
  br label %444

444:                                              ; preds = %443, %421
  br label %445

445:                                              ; preds = %444, %54
  %446 = load i32, i32* %21, align 4
  %447 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %448 = call i32 @NFSEXITCODE2(i32 %446, %struct.nfsrv_descript* %447)
  %449 = load i32, i32* %21, align 4
  ret i32 %449
}

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i64 @NFSVNO_EXRDONLY(%struct.nfsexstuff*) #1

declare dso_local i64 @NFSVNO_EXPORTED(%struct.nfsexstuff*) #1

declare dso_local i32 @lookup(%struct.nameidata*) #1

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @VOP_READLINK(%struct.vnode*, %struct.uio*, i32) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

declare dso_local i32 @NFSBCOPY(i32, i8*, i32) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
