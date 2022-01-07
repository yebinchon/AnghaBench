; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.vnode*, %struct.ucred*, %struct.vattr* }
%struct.vnode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i64 }
%struct.vattr = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.denode = type { i32, i32, i32, i32, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VNON = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@UF_ARCHIVE = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@UF_READONLY = common dso_local global i32 0, align 4
@UF_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@DE_MODIFIED = common dso_local global i32 0, align 4
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@MSDOSFSMNT_NOWIN95 = common dso_local global i32 0, align 4
@DE_ACCESS = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @msdosfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %13 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %16, i32 0, i32 0
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  %19 = call %struct.denode* @VTODE(%struct.vnode* %18)
  store %struct.denode* %19, %struct.denode** %5, align 8
  %20 = load %struct.denode*, %struct.denode** %5, align 8
  %21 = getelementptr inbounds %struct.denode, %struct.denode* %20, i32 0, i32 5
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  store %struct.msdosfsmount* %22, %struct.msdosfsmount** %6, align 8
  %23 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %23, i32 0, i32 2
  %25 = load %struct.vattr*, %struct.vattr** %24, align 8
  store %struct.vattr* %25, %struct.vattr** %7, align 8
  %26 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %26, i32 0, i32 1
  %28 = load %struct.ucred*, %struct.ucred** %27, align 8
  store %struct.ucred* %28, %struct.ucred** %8, align 8
  %29 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %29, %struct.thread** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.vattr*, %struct.vattr** %7, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VNON, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %77, label %35

35:                                               ; preds = %1
  %36 = load %struct.vattr*, %struct.vattr** %7, align 8
  %37 = getelementptr inbounds %struct.vattr, %struct.vattr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VNOVAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = load %struct.vattr*, %struct.vattr** %7, align 8
  %43 = getelementptr inbounds %struct.vattr, %struct.vattr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VNOVAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  %48 = load %struct.vattr*, %struct.vattr** %7, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VNOVAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %47
  %54 = load %struct.vattr*, %struct.vattr** %7, align 8
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VNOVAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %53
  %60 = load %struct.vattr*, %struct.vattr** %7, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VNOVAL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.vattr*, %struct.vattr** %7, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VNOVAL, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.vattr*, %struct.vattr** %7, align 8
  %73 = getelementptr inbounds %struct.vattr, %struct.vattr* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VNOVAL, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71, %65, %59, %53, %47, %41, %35, %1
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %2, align 4
  br label %544

79:                                               ; preds = %71
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VV_ROOT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %2, align 4
  br label %544

88:                                               ; preds = %79
  %89 = load %struct.vattr*, %struct.vattr** %7, align 8
  %90 = getelementptr inbounds %struct.vattr, %struct.vattr* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VNOVAL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %235

94:                                               ; preds = %88
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MNT_RDONLY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @EROFS, align 4
  store i32 %104, i32* %2, align 4
  br label %544

105:                                              ; preds = %94
  %106 = load %struct.ucred*, %struct.ucred** %8, align 8
  %107 = getelementptr inbounds %struct.ucred, %struct.ucred* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %110 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.ucred*, %struct.ucred** %8, align 8
  %115 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %116 = call i32 @priv_check_cred(%struct.ucred* %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %2, align 4
  br label %544

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.vattr*, %struct.vattr** %7, align 8
  %124 = getelementptr inbounds %struct.vattr, %struct.vattr* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @UF_ARCHIVE, align 4
  %127 = load i32, i32* @UF_HIDDEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @UF_READONLY, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @UF_SYSTEM, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = sext i32 %133 to i64
  %135 = and i64 %125, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %122
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %138, i32* %2, align 4
  br label %544

139:                                              ; preds = %122
  %140 = load %struct.vattr*, %struct.vattr** %7, align 8
  %141 = getelementptr inbounds %struct.vattr, %struct.vattr* %140, i32 0, i32 10
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @UF_ARCHIVE, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %142, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* @ATTR_ARCHIVE, align 4
  %149 = load %struct.denode*, %struct.denode** %5, align 8
  %150 = getelementptr inbounds %struct.denode, %struct.denode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %160

153:                                              ; preds = %139
  %154 = load i32, i32* @ATTR_ARCHIVE, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.denode*, %struct.denode** %5, align 8
  %157 = getelementptr inbounds %struct.denode, %struct.denode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %153, %147
  %161 = load %struct.vattr*, %struct.vattr** %7, align 8
  %162 = getelementptr inbounds %struct.vattr, %struct.vattr* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @UF_HIDDEN, align 4
  %165 = sext i32 %164 to i64
  %166 = and i64 %163, %165
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load i32, i32* @ATTR_HIDDEN, align 4
  %170 = load %struct.denode*, %struct.denode** %5, align 8
  %171 = getelementptr inbounds %struct.denode, %struct.denode* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %181

174:                                              ; preds = %160
  %175 = load i32, i32* @ATTR_HIDDEN, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.denode*, %struct.denode** %5, align 8
  %178 = getelementptr inbounds %struct.denode, %struct.denode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %174, %168
  %182 = load %struct.vnode*, %struct.vnode** %4, align 8
  %183 = getelementptr inbounds %struct.vnode, %struct.vnode* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 129
  br i1 %185, label %186, label %208

186:                                              ; preds = %181
  %187 = load %struct.vattr*, %struct.vattr** %7, align 8
  %188 = getelementptr inbounds %struct.vattr, %struct.vattr* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @UF_READONLY, align 4
  %191 = sext i32 %190 to i64
  %192 = and i64 %189, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32, i32* @ATTR_READONLY, align 4
  %196 = load %struct.denode*, %struct.denode** %5, align 8
  %197 = getelementptr inbounds %struct.denode, %struct.denode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %207

200:                                              ; preds = %186
  %201 = load i32, i32* @ATTR_READONLY, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.denode*, %struct.denode** %5, align 8
  %204 = getelementptr inbounds %struct.denode, %struct.denode* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %194
  br label %208

208:                                              ; preds = %207, %181
  %209 = load %struct.vattr*, %struct.vattr** %7, align 8
  %210 = getelementptr inbounds %struct.vattr, %struct.vattr* %209, i32 0, i32 10
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @UF_SYSTEM, align 4
  %213 = sext i32 %212 to i64
  %214 = and i64 %211, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load i32, i32* @ATTR_SYSTEM, align 4
  %218 = load %struct.denode*, %struct.denode** %5, align 8
  %219 = getelementptr inbounds %struct.denode, %struct.denode* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %229

222:                                              ; preds = %208
  %223 = load i32, i32* @ATTR_SYSTEM, align 4
  %224 = xor i32 %223, -1
  %225 = load %struct.denode*, %struct.denode** %5, align 8
  %226 = getelementptr inbounds %struct.denode, %struct.denode* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %222, %216
  %230 = load i32, i32* @DE_MODIFIED, align 4
  %231 = load %struct.denode*, %struct.denode** %5, align 8
  %232 = getelementptr inbounds %struct.denode, %struct.denode* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %88
  %236 = load %struct.vattr*, %struct.vattr** %7, align 8
  %237 = getelementptr inbounds %struct.vattr, %struct.vattr* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* @VNOVAL, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %249, label %242

242:                                              ; preds = %235
  %243 = load %struct.vattr*, %struct.vattr** %7, align 8
  %244 = getelementptr inbounds %struct.vattr, %struct.vattr* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* @VNOVAL, align 8
  %247 = trunc i64 %246 to i32
  %248 = icmp ne i32 %245, %247
  br i1 %248, label %249, label %333

249:                                              ; preds = %242, %235
  %250 = load %struct.vnode*, %struct.vnode** %4, align 8
  %251 = getelementptr inbounds %struct.vnode, %struct.vnode* %250, i32 0, i32 2
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MNT_RDONLY, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %249
  %259 = load i32, i32* @EROFS, align 4
  store i32 %259, i32* %2, align 4
  br label %544

260:                                              ; preds = %249
  %261 = load %struct.vattr*, %struct.vattr** %7, align 8
  %262 = getelementptr inbounds %struct.vattr, %struct.vattr* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %11, align 8
  %265 = load i64, i64* %11, align 8
  %266 = load i64, i64* @VNOVAL, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %260
  %269 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %270 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %11, align 8
  br label %272

272:                                              ; preds = %268, %260
  %273 = load %struct.vattr*, %struct.vattr** %7, align 8
  %274 = getelementptr inbounds %struct.vattr, %struct.vattr* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load i64, i64* @VNOVAL, align 8
  %278 = trunc i64 %277 to i32
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %282 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %12, align 4
  br label %284

284:                                              ; preds = %280, %272
  %285 = load %struct.ucred*, %struct.ucred** %8, align 8
  %286 = getelementptr inbounds %struct.ucred, %struct.ucred* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %289 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %287, %290
  br i1 %291, label %309, label %292

292:                                              ; preds = %284
  %293 = load i64, i64* %11, align 8
  %294 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %295 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %293, %296
  br i1 %297, label %309, label %298

298:                                              ; preds = %292
  %299 = load i32, i32* %12, align 4
  %300 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %301 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %299, %302
  br i1 %303, label %304, label %318

304:                                              ; preds = %298
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.ucred*, %struct.ucred** %8, align 8
  %307 = call i32 @groupmember(i32 %305, %struct.ucred* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %304, %292, %284
  %310 = load %struct.ucred*, %struct.ucred** %8, align 8
  %311 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %312 = call i32 @priv_check_cred(%struct.ucred* %310, i32 %311)
  store i32 %312, i32* %10, align 4
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = load i32, i32* %10, align 4
  store i32 %316, i32* %2, align 4
  br label %544

317:                                              ; preds = %309
  br label %318

318:                                              ; preds = %317, %304, %298
  %319 = load i64, i64* %11, align 8
  %320 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %321 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %319, %322
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = load i32, i32* %12, align 4
  %326 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %327 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %325, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %324, %318
  %331 = load i32, i32* @EINVAL, align 4
  store i32 %331, i32* %2, align 4
  br label %544

332:                                              ; preds = %324
  br label %333

333:                                              ; preds = %332, %242
  %334 = load %struct.vattr*, %struct.vattr** %7, align 8
  %335 = getelementptr inbounds %struct.vattr, %struct.vattr* %334, i32 0, i32 11
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @VNOVAL, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %370

339:                                              ; preds = %333
  %340 = load %struct.vnode*, %struct.vnode** %4, align 8
  %341 = getelementptr inbounds %struct.vnode, %struct.vnode* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  switch i32 %342, label %357 [
    i32 129, label %343
    i32 128, label %345
  ]

343:                                              ; preds = %339
  %344 = load i32, i32* @EISDIR, align 4
  store i32 %344, i32* %2, align 4
  br label %544

345:                                              ; preds = %339
  %346 = load %struct.vnode*, %struct.vnode** %4, align 8
  %347 = getelementptr inbounds %struct.vnode, %struct.vnode* %346, i32 0, i32 2
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @MNT_RDONLY, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %345
  %355 = load i32, i32* @EROFS, align 4
  store i32 %355, i32* %2, align 4
  br label %544

356:                                              ; preds = %345
  br label %358

357:                                              ; preds = %339
  br label %358

358:                                              ; preds = %357, %356
  %359 = load %struct.denode*, %struct.denode** %5, align 8
  %360 = load %struct.vattr*, %struct.vattr** %7, align 8
  %361 = getelementptr inbounds %struct.vattr, %struct.vattr* %360, i32 0, i32 11
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.ucred*, %struct.ucred** %8, align 8
  %364 = call i32 @detrunc(%struct.denode* %359, i64 %362, i32 0, %struct.ucred* %363)
  store i32 %364, i32* %10, align 4
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %358
  %368 = load i32, i32* %10, align 4
  store i32 %368, i32* %2, align 4
  br label %544

369:                                              ; preds = %358
  br label %370

370:                                              ; preds = %369, %333
  %371 = load %struct.vattr*, %struct.vattr** %7, align 8
  %372 = getelementptr inbounds %struct.vattr, %struct.vattr* %371, i32 0, i32 14
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @VNOVAL, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %384, label %377

377:                                              ; preds = %370
  %378 = load %struct.vattr*, %struct.vattr** %7, align 8
  %379 = getelementptr inbounds %struct.vattr, %struct.vattr* %378, i32 0, i32 13
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @VNOVAL, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %469

384:                                              ; preds = %377, %370
  %385 = load %struct.vnode*, %struct.vnode** %4, align 8
  %386 = getelementptr inbounds %struct.vnode, %struct.vnode* %385, i32 0, i32 2
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @MNT_RDONLY, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %384
  %394 = load i32, i32* @EROFS, align 4
  store i32 %394, i32* %2, align 4
  br label %544

395:                                              ; preds = %384
  %396 = load %struct.vnode*, %struct.vnode** %4, align 8
  %397 = load %struct.vattr*, %struct.vattr** %7, align 8
  %398 = load %struct.ucred*, %struct.ucred** %8, align 8
  %399 = load %struct.thread*, %struct.thread** %9, align 8
  %400 = call i32 @vn_utimes_perm(%struct.vnode* %396, %struct.vattr* %397, %struct.ucred* %398, %struct.thread* %399)
  store i32 %400, i32* %10, align 4
  %401 = load i32, i32* %10, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %395
  %404 = load i32, i32* %10, align 4
  store i32 %404, i32* %2, align 4
  br label %544

405:                                              ; preds = %395
  %406 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %407 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @MSDOSFSMNT_NOWIN95, align 4
  %410 = and i32 %408, %409
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %431

412:                                              ; preds = %405
  %413 = load %struct.vattr*, %struct.vattr** %7, align 8
  %414 = getelementptr inbounds %struct.vattr, %struct.vattr* %413, i32 0, i32 14
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @VNOVAL, align 8
  %418 = icmp ne i64 %416, %417
  br i1 %418, label %419, label %431

419:                                              ; preds = %412
  %420 = load i32, i32* @DE_ACCESS, align 4
  %421 = xor i32 %420, -1
  %422 = load %struct.denode*, %struct.denode** %5, align 8
  %423 = getelementptr inbounds %struct.denode, %struct.denode* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = and i32 %424, %421
  store i32 %425, i32* %423, align 8
  %426 = load %struct.vattr*, %struct.vattr** %7, align 8
  %427 = getelementptr inbounds %struct.vattr, %struct.vattr* %426, i32 0, i32 14
  %428 = load %struct.denode*, %struct.denode** %5, align 8
  %429 = getelementptr inbounds %struct.denode, %struct.denode* %428, i32 0, i32 4
  %430 = call i32 @timespec2fattime(%struct.TYPE_4__* %427, i32 0, i32* %429, i32* null, i32* null)
  br label %431

431:                                              ; preds = %419, %412, %405
  %432 = load %struct.vattr*, %struct.vattr** %7, align 8
  %433 = getelementptr inbounds %struct.vattr, %struct.vattr* %432, i32 0, i32 13
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @VNOVAL, align 8
  %437 = icmp ne i64 %435, %436
  br i1 %437, label %438, label %452

438:                                              ; preds = %431
  %439 = load i32, i32* @DE_UPDATE, align 4
  %440 = xor i32 %439, -1
  %441 = load %struct.denode*, %struct.denode** %5, align 8
  %442 = getelementptr inbounds %struct.denode, %struct.denode* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = and i32 %443, %440
  store i32 %444, i32* %442, align 8
  %445 = load %struct.vattr*, %struct.vattr** %7, align 8
  %446 = getelementptr inbounds %struct.vattr, %struct.vattr* %445, i32 0, i32 13
  %447 = load %struct.denode*, %struct.denode** %5, align 8
  %448 = getelementptr inbounds %struct.denode, %struct.denode* %447, i32 0, i32 3
  %449 = load %struct.denode*, %struct.denode** %5, align 8
  %450 = getelementptr inbounds %struct.denode, %struct.denode* %449, i32 0, i32 2
  %451 = call i32 @timespec2fattime(%struct.TYPE_4__* %446, i32 0, i32* %448, i32* %450, i32* null)
  br label %452

452:                                              ; preds = %438, %431
  %453 = load %struct.vnode*, %struct.vnode** %4, align 8
  %454 = getelementptr inbounds %struct.vnode, %struct.vnode* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 129
  br i1 %456, label %457, label %463

457:                                              ; preds = %452
  %458 = load i32, i32* @ATTR_ARCHIVE, align 4
  %459 = load %struct.denode*, %struct.denode** %5, align 8
  %460 = getelementptr inbounds %struct.denode, %struct.denode* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %461, %458
  store i32 %462, i32* %460, align 4
  br label %463

463:                                              ; preds = %457, %452
  %464 = load i32, i32* @DE_MODIFIED, align 4
  %465 = load %struct.denode*, %struct.denode** %5, align 8
  %466 = getelementptr inbounds %struct.denode, %struct.denode* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = or i32 %467, %464
  store i32 %468, i32* %466, align 8
  br label %469

469:                                              ; preds = %463, %377
  %470 = load %struct.vattr*, %struct.vattr** %7, align 8
  %471 = getelementptr inbounds %struct.vattr, %struct.vattr* %470, i32 0, i32 12
  %472 = load i32, i32* %471, align 8
  %473 = load i64, i64* @VNOVAL, align 8
  %474 = trunc i64 %473 to i32
  %475 = icmp ne i32 %472, %474
  br i1 %475, label %476, label %541

476:                                              ; preds = %469
  %477 = load %struct.vnode*, %struct.vnode** %4, align 8
  %478 = getelementptr inbounds %struct.vnode, %struct.vnode* %477, i32 0, i32 2
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @MNT_RDONLY, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %476
  %486 = load i32, i32* @EROFS, align 4
  store i32 %486, i32* %2, align 4
  br label %544

487:                                              ; preds = %476
  %488 = load %struct.ucred*, %struct.ucred** %8, align 8
  %489 = getelementptr inbounds %struct.ucred, %struct.ucred* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %492 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %490, %493
  br i1 %494, label %495, label %504

495:                                              ; preds = %487
  %496 = load %struct.ucred*, %struct.ucred** %8, align 8
  %497 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %498 = call i32 @priv_check_cred(%struct.ucred* %496, i32 %497)
  store i32 %498, i32* %10, align 4
  %499 = load i32, i32* %10, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %495
  %502 = load i32, i32* %10, align 4
  store i32 %502, i32* %2, align 4
  br label %544

503:                                              ; preds = %495
  br label %504

504:                                              ; preds = %503, %487
  %505 = load %struct.vnode*, %struct.vnode** %4, align 8
  %506 = getelementptr inbounds %struct.vnode, %struct.vnode* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 129
  br i1 %508, label %509, label %540

509:                                              ; preds = %504
  %510 = load %struct.vattr*, %struct.vattr** %7, align 8
  %511 = getelementptr inbounds %struct.vattr, %struct.vattr* %510, i32 0, i32 12
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @S_IWUSR, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %509
  %517 = load i32, i32* @ATTR_READONLY, align 4
  %518 = xor i32 %517, -1
  %519 = load %struct.denode*, %struct.denode** %5, align 8
  %520 = getelementptr inbounds %struct.denode, %struct.denode* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = and i32 %521, %518
  store i32 %522, i32* %520, align 4
  br label %529

523:                                              ; preds = %509
  %524 = load i32, i32* @ATTR_READONLY, align 4
  %525 = load %struct.denode*, %struct.denode** %5, align 8
  %526 = getelementptr inbounds %struct.denode, %struct.denode* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 4
  br label %529

529:                                              ; preds = %523, %516
  %530 = load i32, i32* @ATTR_ARCHIVE, align 4
  %531 = load %struct.denode*, %struct.denode** %5, align 8
  %532 = getelementptr inbounds %struct.denode, %struct.denode* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  %535 = load i32, i32* @DE_MODIFIED, align 4
  %536 = load %struct.denode*, %struct.denode** %5, align 8
  %537 = getelementptr inbounds %struct.denode, %struct.denode* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = or i32 %538, %535
  store i32 %539, i32* %537, align 8
  br label %540

540:                                              ; preds = %529, %504
  br label %541

541:                                              ; preds = %540, %469
  %542 = load %struct.denode*, %struct.denode** %5, align 8
  %543 = call i32 @deupdat(%struct.denode* %542, i32 0)
  store i32 %543, i32* %2, align 4
  br label %544

544:                                              ; preds = %541, %501, %485, %403, %393, %367, %354, %343, %330, %315, %258, %137, %119, %103, %86, %77
  %545 = load i32, i32* %2, align 4
  ret i32 %545
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, %struct.ucred*) #1

declare dso_local i32 @vn_utimes_perm(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @timespec2fattime(%struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @deupdat(%struct.denode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
