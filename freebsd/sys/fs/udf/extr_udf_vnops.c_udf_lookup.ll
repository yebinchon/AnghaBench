; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.vop_cachedlookup_args = type { %struct.TYPE_6__*, %struct.vnode*, %struct.vnode** }
%struct.TYPE_6__ = type { i64, i64, i32, i8*, i64 }
%struct.vnode = type { i32 }
%struct.udf_node = type { i32, i64, %struct.TYPE_4__*, %struct.udf_mnt* }
%struct.TYPE_4__ = type { i32 }
%struct.udf_mnt = type { i32 }
%struct.fileid_desc = type { i32, i64, i64, i32, i32*, i32 }
%struct.udf_dirstream = type { i32, i32, i32 }

@LOOKUP = common dso_local global i64 0, align 8
@nchstats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TAGID_FID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"udf_lookup: Invalid tag\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UDF_FILE_CHAR_DEL = common dso_local global i32 0, align 4
@UDF_FILE_CHAR_PAR = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i64 0, align 8
@ISLASTCN = common dso_local global i64 0, align 8
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i64 0, align 8
@CREATE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_cachedlookup_args*)* @udf_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_lookup(%struct.vop_cachedlookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_cachedlookup_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.udf_node*, align 8
  %8 = alloca %struct.udf_mnt*, align 8
  %9 = alloca %struct.fileid_desc*, align 8
  %10 = alloca %struct.udf_dirstream*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vop_cachedlookup_args* %0, %struct.vop_cachedlookup_args** %3, align 8
  store %struct.vnode* null, %struct.vnode** %5, align 8
  %22 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %22, i32 0, i32 2
  %24 = load %struct.vnode**, %struct.vnode*** %23, align 8
  store %struct.vnode** %24, %struct.vnode*** %6, align 8
  store %struct.fileid_desc* null, %struct.fileid_desc** %9, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %25, i32 0, i32 1
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %4, align 8
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call %struct.udf_node* @VTON(%struct.vnode* %28)
  store %struct.udf_node* %29, %struct.udf_node** %7, align 8
  %30 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %31 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %30, i32 0, i32 3
  %32 = load %struct.udf_mnt*, %struct.udf_mnt** %31, align 8
  store %struct.udf_mnt* %32, %struct.udf_mnt** %8, align 8
  %33 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %19, align 4
  %48 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  %53 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %59 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le64toh(i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @LOOKUP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %78, label %67

67:                                               ; preds = %1
  %68 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %69 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %74 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %67, %1
  store i32 0, i32* %16, align 4
  store i32 1, i32* %21, align 4
  br label %85

79:                                               ; preds = %72
  %80 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %81 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  store i32 2, i32* %21, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nchstats, i32 0, i32 1), align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nchstats, i32 0, i32 1), align 4
  br label %85

85:                                               ; preds = %79, %78
  br label %86

86:                                               ; preds = %277, %85
  %87 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.udf_mnt*, %struct.udf_mnt** %8, align 8
  %91 = call %struct.udf_dirstream* @udf_opendir(%struct.udf_node* %87, i32 %88, i32 %89, %struct.udf_mnt* %90)
  store %struct.udf_dirstream* %91, %struct.udf_dirstream** %10, align 8
  br label %92

92:                                               ; preds = %156, %112, %86
  %93 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %94 = call %struct.fileid_desc* @udf_getfid(%struct.udf_dirstream* %93)
  store %struct.fileid_desc* %94, %struct.fileid_desc** %9, align 8
  %95 = icmp ne %struct.fileid_desc* %94, null
  br i1 %95, label %96, label %157

96:                                               ; preds = %92
  %97 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %98 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %97, i32 0, i32 5
  %99 = load i32, i32* @TAGID_FID, align 4
  %100 = call i64 @udf_checktag(i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  store i32 %104, i32* %17, align 4
  br label %157

105:                                              ; preds = %96
  %106 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %107 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @UDF_FILE_CHAR_DEL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %92

113:                                              ; preds = %105
  %114 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %115 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %120 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UDF_FILE_CHAR_PAR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ISDOTDOT, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %132 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %131, i32 0, i32 3
  %133 = call i64 @udf_getid(i32* %132)
  store i64 %133, i64* %15, align 8
  br label %157

134:                                              ; preds = %125
  br label %156

135:                                              ; preds = %118, %113
  %136 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %137 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %140 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i8*, i8** %13, align 8
  %144 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %145 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.udf_mnt*, %struct.udf_mnt** %8, align 8
  %149 = call i32 @udf_cmpname(i32* %142, i8* %143, i64 %146, i64 %147, %struct.udf_mnt* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %135
  %152 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %153 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %152, i32 0, i32 3
  %154 = call i64 @udf_getid(i32* %153)
  store i64 %154, i64* %15, align 8
  br label %157

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155, %134
  br label %92

157:                                              ; preds = %151, %130, %102, %92
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %162 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %169 = call i32 @udf_closedir(%struct.udf_dirstream* %168)
  %170 = load i32, i32* %17, align 4
  store i32 %170, i32* %2, align 4
  br label %317

171:                                              ; preds = %164
  %172 = load i64, i64* %15, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %274

174:                                              ; preds = %171
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* @ISLASTCN, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @LOOKUP, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  %184 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %185 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %188 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %192 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %183, %179, %174
  %194 = load i32, i32* %21, align 4
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nchstats, i32 0, i32 0), align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nchstats, i32 0, i32 0), align 4
  br label %199

199:                                              ; preds = %196, %193
  %200 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %201 = call i32 @udf_closedir(%struct.udf_dirstream* %200)
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* @ISDOTDOT, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load %struct.vnode*, %struct.vnode** %4, align 8
  %208 = load i64, i64* %15, align 8
  %209 = load i32, i32* %19, align 4
  %210 = call i32 @vn_vget_ino(%struct.vnode* %207, i64 %208, i32 %209, %struct.vnode** %5)
  store i32 %210, i32* %17, align 4
  br label %254

211:                                              ; preds = %199
  %212 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %213 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %15, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %246

217:                                              ; preds = %211
  %218 = load %struct.vnode*, %struct.vnode** %4, align 8
  %219 = call i32 @VREF(%struct.vnode* %218)
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* @LK_TYPE_MASK, align 4
  %222 = and i32 %220, %221
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load %struct.vnode*, %struct.vnode** %4, align 8
  %225 = call i32 @VOP_ISLOCKED(%struct.vnode* %224)
  %226 = icmp ne i32 %223, %225
  br i1 %226, label %227, label %244

227:                                              ; preds = %217
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* @LK_EXCLUSIVE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load %struct.vnode*, %struct.vnode** %4, align 8
  %233 = load i32, i32* @LK_UPGRADE, align 4
  %234 = load i32, i32* @LK_RETRY, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @vn_lock(%struct.vnode* %232, i32 %235)
  br label %243

237:                                              ; preds = %227
  %238 = load %struct.vnode*, %struct.vnode** %4, align 8
  %239 = load i32, i32* @LK_DOWNGRADE, align 4
  %240 = load i32, i32* @LK_RETRY, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @vn_lock(%struct.vnode* %238, i32 %241)
  br label %243

243:                                              ; preds = %237, %231
  br label %244

244:                                              ; preds = %243, %217
  %245 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %245, %struct.vnode** %5, align 8
  br label %253

246:                                              ; preds = %211
  %247 = load %struct.udf_mnt*, %struct.udf_mnt** %8, align 8
  %248 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %15, align 8
  %251 = load i32, i32* %19, align 4
  %252 = call i32 @udf_vget(i32 %249, i64 %250, i32 %251, %struct.vnode** %5)
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %246, %244
  br label %254

254:                                              ; preds = %253, %206
  %255 = load i32, i32* %17, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %273, label %257

257:                                              ; preds = %254
  %258 = load %struct.vnode*, %struct.vnode** %5, align 8
  %259 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %258, %struct.vnode** %259, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* @MAKEENTRY, align 8
  %262 = and i64 %260, %261
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %257
  %265 = load %struct.vnode*, %struct.vnode** %4, align 8
  %266 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %267 = load %struct.vnode*, %struct.vnode** %266, align 8
  %268 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %269 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %268, i32 0, i32 0
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = call i32 @cache_enter(%struct.vnode* %265, %struct.vnode* %267, %struct.TYPE_6__* %270)
  br label %272

272:                                              ; preds = %264, %257
  br label %273

273:                                              ; preds = %272, %254
  br label %315

274:                                              ; preds = %171
  %275 = load i32, i32* %21, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %282

277:                                              ; preds = %274
  %278 = load i32, i32* %21, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %21, align 4
  store i32 0, i32* %16, align 4
  %280 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %281 = call i32 @udf_closedir(%struct.udf_dirstream* %280)
  br label %86

282:                                              ; preds = %274
  %283 = load %struct.udf_dirstream*, %struct.udf_dirstream** %10, align 8
  %284 = call i32 @udf_closedir(%struct.udf_dirstream* %283)
  %285 = load i64, i64* %12, align 8
  %286 = load i64, i64* @MAKEENTRY, align 8
  %287 = and i64 %285, %286
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %282
  %290 = load %struct.vnode*, %struct.vnode** %4, align 8
  %291 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %292 = load %struct.vnode*, %struct.vnode** %291, align 8
  %293 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %294 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %293, i32 0, i32 0
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = call i32 @cache_enter(%struct.vnode* %290, %struct.vnode* %292, %struct.TYPE_6__* %295)
  br label %297

297:                                              ; preds = %289, %282
  %298 = load i64, i64* %12, align 8
  %299 = load i64, i64* @ISLASTCN, align 8
  %300 = and i64 %298, %299
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %297
  %303 = load i64, i64* %11, align 8
  %304 = load i64, i64* @CREATE, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i64, i64* %11, align 8
  %308 = load i64, i64* @RENAME, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %306, %302
  %311 = load i32, i32* @EROFS, align 4
  store i32 %311, i32* %17, align 4
  br label %314

312:                                              ; preds = %306, %297
  %313 = load i32, i32* @ENOENT, align 4
  store i32 %313, i32* %17, align 4
  br label %314

314:                                              ; preds = %312, %310
  br label %315

315:                                              ; preds = %314, %273
  %316 = load i32, i32* %17, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %315, %167
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local %struct.udf_dirstream* @udf_opendir(%struct.udf_node*, i32, i32, %struct.udf_mnt*) #1

declare dso_local %struct.fileid_desc* @udf_getfid(%struct.udf_dirstream*) #1

declare dso_local i64 @udf_checktag(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @udf_getid(i32*) #1

declare dso_local i32 @udf_cmpname(i32*, i8*, i64, i64, %struct.udf_mnt*) #1

declare dso_local i32 @udf_closedir(%struct.udf_dirstream*) #1

declare dso_local i32 @vn_vget_ino(%struct.vnode*, i64, i32, %struct.vnode**) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @udf_vget(i32, i64, i32, %struct.vnode**) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
