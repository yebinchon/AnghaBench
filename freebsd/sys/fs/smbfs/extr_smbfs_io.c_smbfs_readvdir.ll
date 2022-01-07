; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_readvdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_readvdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i64, i64, i32 }
%struct.ucred = type { i32 }
%struct.dirent = type { i64, i32, i64, i8*, i8* }
%struct.componentname = type { i8*, i64 }
%struct.smb_cred = type { i32 }
%struct.smbfs_fctx = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smbnode = type { i32, i32, i32, i64, %struct.smbfs_fctx*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"dirname='%s'\0A\00", align 1
@DE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Reopening search %ld:%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@SMB_FA_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"can not open search, error = %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i8* null, align 8
@smbfs_fastlookup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*, %struct.ucred*)* @smbfs_readvdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_readvdir(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.dirent, align 8
  %8 = alloca %struct.componentname, align 8
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smbfs_fctx*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.smbnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = call %struct.smbnode* @VTOSMB(%struct.vnode* %16)
  store %struct.smbnode* %17, %struct.smbnode** %12, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call %struct.smbnode* @VTOSMB(%struct.vnode* %18)
  store %struct.smbnode* %19, %struct.smbnode** %12, align 8
  %20 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %21 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, ...) @SMBVDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %24, %struct.smb_cred** %9, align 8
  %25 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %26 = load %struct.uio*, %struct.uio** %5, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ucred*, %struct.ucred** %6, align 8
  %30 = call i32 @smb_makescred(%struct.smb_cred* %25, i32 %28, %struct.ucred* %29)
  %31 = load %struct.uio*, %struct.uio** %5, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DE_SIZE, align 8
  %35 = sdiv i64 %33, %34
  store i64 %35, i64* %14, align 8
  %36 = load %struct.uio*, %struct.uio** %5, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DE_SIZE, align 8
  %40 = sdiv i64 %38, %39
  store i64 %40, i64* %15, align 8
  %41 = load %struct.uio*, %struct.uio** %5, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DE_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %3
  %47 = load %struct.uio*, %struct.uio** %5, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %3
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %13, align 4
  br label %328

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %118, %53
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = icmp slt i64 %58, 2
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  br i1 %61, label %62, label %126

62:                                               ; preds = %60
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %15, align 8
  %65 = ptrtoint %struct.dirent* %7 to i32
  %66 = load i64, i64* @DE_SIZE, align 8
  %67 = call i32 @bzero(i32 %65, i64 %66)
  %68 = load i64, i64* @DE_SIZE, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %74 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %88

76:                                               ; preds = %62
  %77 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %78 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %83 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ 2, %85 ]
  br label %88

88:                                               ; preds = %86, %72
  %89 = phi i32 [ %75, %72 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 2147483645, %95
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %88
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, 1
  %102 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 2
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 46, i8* %105, align 1
  %106 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8 46, i8* %108, align 1
  %109 = load i8*, i8** @DT_DIR, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  store i8* %109, i8** %110, align 8
  %111 = call i32 @dirent_terminate(%struct.dirent* %7)
  %112 = load i64, i64* @DE_SIZE, align 8
  %113 = load %struct.uio*, %struct.uio** %5, align 8
  %114 = call i32 @uiomove(%struct.dirent* %7, i64 %112, %struct.uio* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %99
  br label %328

118:                                              ; preds = %99
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* @DE_SIZE, align 8
  %122 = load %struct.uio*, %struct.uio** %5, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  br label %54

126:                                              ; preds = %60
  %127 = load i64, i64* %15, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %328

130:                                              ; preds = %126
  %131 = load i64, i64* %14, align 8
  %132 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %133 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %138 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %137, i32 0, i32 4
  %139 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %138, align 8
  %140 = icmp eq %struct.smbfs_fctx* %139, null
  br i1 %140, label %141, label %180

141:                                              ; preds = %136, %130
  %142 = load i64, i64* %14, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %145 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, i32, ...) @SMBVDEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %143, i64 %146)
  %148 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %149 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %148, i32 0, i32 4
  %150 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %149, align 8
  %151 = icmp ne %struct.smbfs_fctx* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %141
  %153 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %154 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %153, i32 0, i32 4
  %155 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %154, align 8
  %156 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %157 = call i32 @smbfs_findclose(%struct.smbfs_fctx* %155, %struct.smb_cred* %156)
  %158 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %159 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %158, i32 0, i32 4
  store %struct.smbfs_fctx* null, %struct.smbfs_fctx** %159, align 8
  br label %160

160:                                              ; preds = %152, %141
  %161 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %162 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %161, i32 0, i32 3
  store i64 2, i64* %162, align 8
  %163 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %164 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %165 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @SMB_FA_DIR, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %170 = call i32 @smbfs_findopen(%struct.smbnode* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %168, %struct.smb_cred* %169, %struct.smbfs_fctx** %10)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %160
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i8*, i32, ...) @SMBVDEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %328

176:                                              ; preds = %160
  %177 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %178 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %179 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %178, i32 0, i32 4
  store %struct.smbfs_fctx* %177, %struct.smbfs_fctx** %179, align 8
  br label %184

180:                                              ; preds = %136
  %181 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %182 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %181, i32 0, i32 4
  %183 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %182, align 8
  store %struct.smbfs_fctx* %183, %struct.smbfs_fctx** %10, align 8
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %218, %184
  %186 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %187 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %14, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %219

191:                                              ; preds = %185
  %192 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %193 = load i64, i64* %14, align 8
  %194 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %195 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = sub nsw i64 %193, %196
  %199 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %200 = call i32 @smbfs_findnext(%struct.smbfs_fctx* %192, i64 %198, %struct.smb_cred* %199)
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %191
  %204 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %205 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %204, i32 0, i32 4
  %206 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %205, align 8
  %207 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %208 = call i32 @smbfs_findclose(%struct.smbfs_fctx* %206, %struct.smb_cred* %207)
  %209 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %210 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %209, i32 0, i32 4
  store %struct.smbfs_fctx* null, %struct.smbfs_fctx** %210, align 8
  %211 = load i32, i32* @ENOENT, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %216

214:                                              ; preds = %203
  %215 = load i32, i32* %13, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = phi i32 [ 0, %213 ], [ %215, %214 ]
  store i32 %217, i32* %13, align 4
  br label %328

218:                                              ; preds = %191
  br label %185

219:                                              ; preds = %185
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %312, %219
  %221 = load i64, i64* %15, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %317

223:                                              ; preds = %220
  %224 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %225 = load i64, i64* %15, align 8
  %226 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %227 = call i32 @smbfs_findnext(%struct.smbfs_fctx* %224, i64 %225, %struct.smb_cred* %226)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %317

231:                                              ; preds = %223
  %232 = load %struct.smbnode*, %struct.smbnode** %12, align 8
  %233 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %233, align 8
  %236 = ptrtoint %struct.dirent* %7 to i32
  %237 = load i64, i64* @DE_SIZE, align 8
  %238 = call i32 @bzero(i32 %236, i64 %237)
  %239 = load i64, i64* @DE_SIZE, align 8
  %240 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 0
  store i64 %239, i64* %240, align 8
  %241 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %242 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 1
  store i32 %244, i32* %245, align 8
  %246 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %247 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @SMB_FA_DIR, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %231
  %254 = load i8*, i8** @DT_DIR, align 8
  br label %257

255:                                              ; preds = %231
  %256 = load i8*, i8** @DT_REG, align 8
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i8* [ %254, %253 ], [ %256, %255 ]
  %259 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  store i8* %258, i8** %259, align 8
  %260 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %261 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 2
  store i64 %262, i64* %263, align 8
  %264 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %265 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 3
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @bcopy(i32 %266, i8* %268, i64 %270)
  %272 = call i32 @dirent_terminate(%struct.dirent* %7)
  %273 = load i64, i64* @smbfs_fastlookup, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %304

275:                                              ; preds = %257
  %276 = load %struct.vnode*, %struct.vnode** %4, align 8
  %277 = getelementptr inbounds %struct.vnode, %struct.vnode* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.vnode*, %struct.vnode** %4, align 8
  %280 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %281 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %284 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %10, align 8
  %287 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %286, i32 0, i32 1
  %288 = call i32 @smbfs_nget(i32 %278, %struct.vnode* %279, i32 %282, i64 %285, %struct.TYPE_2__* %287, %struct.vnode** %11)
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %303, label %291

291:                                              ; preds = %275
  %292 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds %struct.componentname, %struct.componentname* %8, i32 0, i32 0
  store i8* %293, i8** %294, align 8
  %295 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.componentname, %struct.componentname* %8, i32 0, i32 1
  store i64 %296, i64* %297, align 8
  %298 = load %struct.vnode*, %struct.vnode** %4, align 8
  %299 = load %struct.vnode*, %struct.vnode** %11, align 8
  %300 = call i32 @cache_enter(%struct.vnode* %298, %struct.vnode* %299, %struct.componentname* %8)
  %301 = load %struct.vnode*, %struct.vnode** %11, align 8
  %302 = call i32 @vput(%struct.vnode* %301)
  br label %303

303:                                              ; preds = %291, %275
  br label %304

304:                                              ; preds = %303, %257
  %305 = load i64, i64* @DE_SIZE, align 8
  %306 = load %struct.uio*, %struct.uio** %5, align 8
  %307 = call i32 @uiomove(%struct.dirent* %7, i64 %305, %struct.uio* %306)
  store i32 %307, i32* %13, align 4
  %308 = load i32, i32* %13, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  br label %317

311:                                              ; preds = %304
  br label %312

312:                                              ; preds = %311
  %313 = load i64, i64* %15, align 8
  %314 = add nsw i64 %313, -1
  store i64 %314, i64* %15, align 8
  %315 = load i64, i64* %14, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %14, align 8
  br label %220

317:                                              ; preds = %310, %230, %220
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* @ENOENT, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %317
  store i32 0, i32* %13, align 4
  br label %322

322:                                              ; preds = %321, %317
  %323 = load i64, i64* %14, align 8
  %324 = load i64, i64* @DE_SIZE, align 8
  %325 = mul nsw i64 %323, %324
  %326 = load %struct.uio*, %struct.uio** %5, align 8
  %327 = getelementptr inbounds %struct.uio, %struct.uio* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %322, %216, %173, %129, %117, %51
  %329 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %330 = call i32 @smbfs_free_scred(%struct.smb_cred* %329)
  %331 = load i32, i32* %13, align 4
  ret i32 %331
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @SMBVDEBUG(i8*, i32, ...) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, i32, %struct.ucred*) #1

declare dso_local i32 @bzero(i32, i64) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @uiomove(%struct.dirent*, i64, %struct.uio*) #1

declare dso_local i32 @smbfs_findclose(%struct.smbfs_fctx*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_findopen(%struct.smbnode*, i8*, i32, i32, %struct.smb_cred*, %struct.smbfs_fctx**) #1

declare dso_local i32 @smbfs_findnext(%struct.smbfs_fctx*, i64, %struct.smb_cred*) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @smbfs_nget(i32, %struct.vnode*, i32, i64, %struct.TYPE_2__*, %struct.vnode**) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
