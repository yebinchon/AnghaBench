; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.vop_access_args = type { i32, %struct.TYPE_11__*, i32, %struct.vnode* }
%struct.TYPE_11__ = type { i64 }
%struct.vnode = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nfsnode = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.iovec = type { i8*, i32 }
%struct.uio = type { i32, i32, i32, i32, i32, i64, %struct.iovec* }

@VWRITE = common dso_local global i32 0, align 4
@VAPPEND = common dso_local global i32 0, align 4
@VWRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@VDELETE_CHILD = common dso_local global i32 0, align 4
@VWRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@VDELETE = common dso_local global i32 0, align 4
@VWRITE_ACL = common dso_local global i32 0, align 4
@VWRITE_OWNER = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@NFSACCESS_READ = common dso_local global i32 0, align 4
@NFSACCESS_MODIFY = common dso_local global i32 0, align 4
@NFSACCESS_EXTEND = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@NFSACCESS_EXECUTE = common dso_local global i32 0, align 4
@NFSACCESS_DELETE = common dso_local global i32 0, align 4
@NFSACCESS_LOOKUP = common dso_local global i32 0, align 4
@nfsaccess_cache_timeout = common dso_local global i64 0, align 8
@NFS_ACCESSCACHESIZE = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@nfsstatsv1 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EACCES = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @nfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsnode*, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca %struct.uio, align 8
  %15 = alloca [1 x i8], align 1
  %16 = alloca i8*, align 8
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %17 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %17, i32 0, i32 3
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %19, %struct.vnode** %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = call i32 @NFS_ISV34(%struct.vnode* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = call %struct.nfsnode* @VTONFS(%struct.vnode* %22)
  store %struct.nfsnode* %23, %struct.nfsnode** %12, align 8
  %24 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VWRITE, align 4
  %28 = load i32, i32* @VAPPEND, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VWRITE_NAMED_ATTRS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VDELETE_CHILD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VWRITE_ATTRIBUTES, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VDELETE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VWRITE_ACL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VWRITE_OWNER, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %26, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %1
  %45 = load %struct.vnode*, %struct.vnode** %4, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MNT_RDONLY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  %55 = getelementptr inbounds %struct.vnode, %struct.vnode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %59 [
    i32 128, label %57
    i32 130, label %57
    i32 129, label %57
  ]

57:                                               ; preds = %53, %53, %53
  %58 = load i32, i32* @EROFS, align 4
  store i32 %58, i32* %2, align 4
  br label %390

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %44, %1
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %287

64:                                               ; preds = %61
  %65 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %66 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VREAD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @NFSACCESS_READ, align 4
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %71
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = getelementptr inbounds %struct.vnode, %struct.vnode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 130
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %81 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VWRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @NFSACCESS_MODIFY, align 4
  %88 = load i32, i32* @NFSACCESS_EXTEND, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %94 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VAPPEND, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @NFSACCESS_EXTEND, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %105 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @VEXEC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @NFSACCESS_EXECUTE, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %116 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @VDELETE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @NFSACCESS_DELETE, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %114
  br label %184

126:                                              ; preds = %74
  %127 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %128 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @VWRITE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i32, i32* @NFSACCESS_MODIFY, align 4
  %135 = load i32, i32* @NFSACCESS_EXTEND, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %133, %126
  %140 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %141 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @VAPPEND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @NFSACCESS_EXTEND, align 4
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %146, %139
  %151 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %152 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @VEXEC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32, i32* @NFSACCESS_LOOKUP, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %157, %150
  %162 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %163 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @VDELETE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* @NFSACCESS_DELETE, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %174 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @VDELETE_CHILD, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* @NFSACCESS_MODIFY, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %179, %172
  br label %184

184:                                              ; preds = %183, %125
  %185 = load i64, i64* @nfsaccess_cache_timeout, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i32, i32* @NFSACCESS_READ, align 4
  %189 = load i32, i32* @NFSACCESS_MODIFY, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @NFSACCESS_EXTEND, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @NFSACCESS_EXECUTE, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @NFSACCESS_DELETE, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @NFSACCESS_LOOKUP, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %9, align 4
  br label %201

199:                                              ; preds = %184
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %187
  store i32 0, i32* %7, align 4
  %202 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %203 = call i32 @NFSLOCKNODE(%struct.nfsnode* %202)
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %254, %201
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @NFS_ACCESSCACHESIZE, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %257

208:                                              ; preds = %204
  %209 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %210 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %209, i32 0, i32 1
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %215 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %213, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %208
  %224 = load i64, i64* @time_second, align 8
  %225 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %226 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %225, i32 0, i32 1
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @nfsaccess_cache_timeout, align 8
  %234 = add nsw i64 %232, %233
  %235 = icmp slt i64 %224, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %223
  %237 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %238 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %237, i32 0, i32 1
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = and i32 %244, %245
  %247 = load i32, i32* %8, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %236
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nfsstatsv1, i32 0, i32 1), align 4
  %251 = call i32 @NFSINCRGLOBAL(i32 %250)
  store i32 1, i32* %7, align 4
  br label %252

252:                                              ; preds = %249, %236, %223
  br label %257

253:                                              ; preds = %208
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %204

257:                                              ; preds = %252, %204
  %258 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %259 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %258)
  %260 = load i32, i32* %7, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %285

262:                                              ; preds = %257
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nfsstatsv1, i32 0, i32 0), align 4
  %264 = call i32 @NFSINCRGLOBAL(i32 %263)
  %265 = load %struct.vnode*, %struct.vnode** %4, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %268 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %271 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %270, i32 0, i32 1
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = call i32 @nfs34_access_otw(%struct.vnode* %265, i32 %266, i32 %269, %struct.TYPE_11__* %272, i32* %10)
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %262
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %8, align 4
  %279 = and i32 %277, %278
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @EACCES, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %282, %276, %262
  br label %285

285:                                              ; preds = %284, %257
  %286 = load i32, i32* %5, align 4
  store i32 %286, i32* %2, align 4
  br label %390

287:                                              ; preds = %61
  %288 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %289 = call i32 @nfsspec_access(%struct.vop_access_args* %288)
  store i32 %289, i32* %5, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i32, i32* %5, align 4
  store i32 %292, i32* %2, align 4
  br label %390

293:                                              ; preds = %287
  %294 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %295 = call i32 @NFSLOCKNODE(%struct.nfsnode* %294)
  %296 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %297 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %296, i32 0, i32 1
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %385

302:                                              ; preds = %293
  %303 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %304 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @VREAD, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %385

309:                                              ; preds = %302
  %310 = load %struct.vnode*, %struct.vnode** %4, align 8
  %311 = call %struct.nfsnode* @VTONFS(%struct.vnode* %310)
  %312 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp sgt i64 %313, 0
  br i1 %314, label %315, label %385

315:                                              ; preds = %309
  %316 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %317 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %316)
  %318 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  %319 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i8* %318, i8** %319, align 8
  %320 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i32 1, i32* %320, align 8
  %321 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 6
  store %struct.iovec* %13, %struct.iovec** %321, align 8
  %322 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  store i32 1, i32* %322, align 8
  %323 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 5
  store i64 0, i64* %323, align 8
  %324 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  store i32 1, i32* %324, align 4
  %325 = load i32, i32* @UIO_SYSSPACE, align 4
  %326 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 4
  store i32 %325, i32* %326, align 8
  %327 = load i32, i32* @UIO_READ, align 4
  %328 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 3
  store i32 %327, i32* %328, align 4
  %329 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %330 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  store i32 %331, i32* %332, align 8
  %333 = load %struct.vnode*, %struct.vnode** %4, align 8
  %334 = getelementptr inbounds %struct.vnode, %struct.vnode* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 128
  br i1 %336, label %337, label %343

337:                                              ; preds = %315
  %338 = load %struct.vnode*, %struct.vnode** %4, align 8
  %339 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %340 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %339, i32 0, i32 1
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %340, align 8
  %342 = call i32 @ncl_readrpc(%struct.vnode* %338, %struct.uio* %14, %struct.TYPE_11__* %341)
  store i32 %342, i32* %5, align 4
  br label %384

343:                                              ; preds = %315
  %344 = load %struct.vnode*, %struct.vnode** %4, align 8
  %345 = getelementptr inbounds %struct.vnode, %struct.vnode* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 130
  br i1 %347, label %348, label %369

348:                                              ; preds = %343
  %349 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %350 = load i32, i32* @M_TEMP, align 4
  %351 = load i32, i32* @M_WAITOK, align 4
  %352 = call i8* @malloc(i32 %349, i32 %350, i32 %351)
  store i8* %352, i8** %16, align 8
  %353 = load i8*, i8** %16, align 8
  %354 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i8* %353, i8** %354, align 8
  %355 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %356 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  store i32 %355, i32* %356, align 4
  %357 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i32 %355, i32* %357, align 8
  %358 = load %struct.vnode*, %struct.vnode** %4, align 8
  %359 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %360 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %359, i32 0, i32 1
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %360, align 8
  %362 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %363 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @ncl_readdirrpc(%struct.vnode* %358, %struct.uio* %14, %struct.TYPE_11__* %361, i32 %364)
  store i32 %365, i32* %5, align 4
  %366 = load i8*, i8** %16, align 8
  %367 = load i32, i32* @M_TEMP, align 4
  %368 = call i32 @free(i8* %366, i32 %367)
  br label %383

369:                                              ; preds = %343
  %370 = load %struct.vnode*, %struct.vnode** %4, align 8
  %371 = getelementptr inbounds %struct.vnode, %struct.vnode* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp eq i32 %372, 129
  br i1 %373, label %374, label %380

374:                                              ; preds = %369
  %375 = load %struct.vnode*, %struct.vnode** %4, align 8
  %376 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %377 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %376, i32 0, i32 1
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %377, align 8
  %379 = call i32 @ncl_readlinkrpc(%struct.vnode* %375, %struct.uio* %14, %struct.TYPE_11__* %378)
  store i32 %379, i32* %5, align 4
  br label %382

380:                                              ; preds = %369
  %381 = load i32, i32* @EACCES, align 4
  store i32 %381, i32* %5, align 4
  br label %382

382:                                              ; preds = %380, %374
  br label %383

383:                                              ; preds = %382, %348
  br label %384

384:                                              ; preds = %383, %337
  br label %388

385:                                              ; preds = %309, %302, %293
  %386 = load %struct.nfsnode*, %struct.nfsnode** %12, align 8
  %387 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %386)
  br label %388

388:                                              ; preds = %385, %384
  %389 = load i32, i32* %5, align 4
  store i32 %389, i32* %2, align 4
  br label %390

390:                                              ; preds = %388, %291, %285, %57
  %391 = load i32, i32* %2, align 4
  ret i32 %391
}

declare dso_local i32 @NFS_ISV34(%struct.vnode*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSINCRGLOBAL(i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfs34_access_otw(%struct.vnode*, i32, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @nfsspec_access(%struct.vop_access_args*) #1

declare dso_local i32 @ncl_readrpc(%struct.vnode*, %struct.uio*, %struct.TYPE_11__*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ncl_readdirrpc(%struct.vnode*, %struct.uio*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ncl_readlinkrpc(%struct.vnode*, %struct.uio*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
