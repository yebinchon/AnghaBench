; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_write_args = type { i32, %struct.ucred*, %struct.vnode*, %struct.uio* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uio = type { i64, i64, i32 }
%struct.buf = type { i32, i32, i32, i64 }
%struct.denode = type { i64, i32, %struct.TYPE_3__*, i32, i32, i32, %struct.msdosfsmount* }
%struct.TYPE_3__ = type { i64 }
%struct.msdosfsmount = type { i32, i32 }

@IO_APPEND = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"msdosfs_write(): bad file type\00", align 1
@MSDOSFS_FILESIZE_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@FC_LASTFC = common dso_local global i64 0, align 8
@IO_SEQSHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MNT_NOCLUSTERW = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_write_args*)* @msdosfs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_write(%struct.vop_write_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_write_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.uio*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.denode*, align 8
  %19 = alloca %struct.msdosfsmount*, align 8
  %20 = alloca %struct.ucred*, align 8
  store %struct.vop_write_args* %0, %struct.vop_write_args** %3, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %24, i32 0, i32 3
  %26 = load %struct.uio*, %struct.uio** %25, align 8
  store %struct.uio* %26, %struct.uio** %15, align 8
  %27 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %27, i32 0, i32 2
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  store %struct.vnode* %29, %struct.vnode** %16, align 8
  %30 = load %struct.vnode*, %struct.vnode** %16, align 8
  %31 = call %struct.denode* @VTODE(%struct.vnode* %30)
  store %struct.denode* %31, %struct.denode** %18, align 8
  %32 = load %struct.denode*, %struct.denode** %18, align 8
  %33 = getelementptr inbounds %struct.denode, %struct.denode* %32, i32 0, i32 6
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %33, align 8
  store %struct.msdosfsmount* %34, %struct.msdosfsmount** %19, align 8
  %35 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %35, i32 0, i32 1
  %37 = load %struct.ucred*, %struct.ucred** %36, align 8
  store %struct.ucred* %37, %struct.ucred** %20, align 8
  %38 = load %struct.vnode*, %struct.vnode** %16, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 128, label %41
    i32 129, label %54
  ]

41:                                               ; preds = %1
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @IO_APPEND, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.denode*, %struct.denode** %18, align 8
  %48 = getelementptr inbounds %struct.denode, %struct.denode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.uio*, %struct.uio** %15, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %53, %struct.vnode** %17, align 8
  br label %58

54:                                               ; preds = %1
  %55 = load i32, i32* @EISDIR, align 4
  store i32 %55, i32* %2, align 4
  br label %476

56:                                               ; preds = %1
  %57 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.uio*, %struct.uio** %15, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %476

64:                                               ; preds = %58
  %65 = load %struct.uio*, %struct.uio** %15, align 8
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.uio*, %struct.uio** %15, align 8
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i64, i64* @MSDOSFS_FILESIZE_MAX, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @EFBIG, align 4
  store i32 %75, i32* %2, align 4
  br label %476

76:                                               ; preds = %64
  %77 = load %struct.vnode*, %struct.vnode** %16, align 8
  %78 = load %struct.uio*, %struct.uio** %15, align 8
  %79 = load %struct.uio*, %struct.uio** %15, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @vn_rlimit_fsize(%struct.vnode* %77, %struct.uio* %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @EFBIG, align 4
  store i32 %85, i32* %2, align 4
  br label %476

86:                                               ; preds = %76
  %87 = load %struct.uio*, %struct.uio** %15, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.denode*, %struct.denode** %18, align 8
  %91 = getelementptr inbounds %struct.denode, %struct.denode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load %struct.denode*, %struct.denode** %18, align 8
  %96 = load %struct.uio*, %struct.uio** %15, align 8
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ucred*, %struct.ucred** %20, align 8
  %100 = call i32 @deextend(%struct.denode* %95, i64 %98, %struct.ucred* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %476

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.uio*, %struct.uio** %15, align 8
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %6, align 8
  %110 = load %struct.denode*, %struct.denode** %18, align 8
  %111 = getelementptr inbounds %struct.denode, %struct.denode* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %7, align 8
  %113 = load %struct.uio*, %struct.uio** %15, align 8
  %114 = getelementptr inbounds %struct.uio, %struct.uio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* %7, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %106
  %121 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %122 = load %struct.uio*, %struct.uio** %15, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i64 @de_clcount(%struct.msdosfsmount* %121, i64 %126)
  %128 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @de_clcount(%struct.msdosfsmount* %128, i64 %129)
  %131 = sub nsw i64 %127, %130
  store i64 %131, i64* %9, align 8
  %132 = load %struct.denode*, %struct.denode** %18, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @extendfile(%struct.denode* %132, i64 %133, i32* null, i32* null, i32 0)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %120
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @ENOSPC, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @IO_UNIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141, %137
  br label %419

147:                                              ; preds = %141, %120
  %148 = load %struct.denode*, %struct.denode** %18, align 8
  %149 = getelementptr inbounds %struct.denode, %struct.denode* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* @FC_LASTFC, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %12, align 8
  br label %160

155:                                              ; preds = %106
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @de_clcount(%struct.msdosfsmount* %156, i64 %157)
  %159 = sub nsw i64 %158, 1
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %155, %147
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @IO_SEQSHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %416, %160
  %165 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %166 = load %struct.uio*, %struct.uio** %15, align 8
  %167 = getelementptr inbounds %struct.uio, %struct.uio* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @de_cluster(%struct.msdosfsmount* %165, i64 %168)
  %170 = load i64, i64* %12, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @ENOSPC, align 4
  store i32 %173, i32* %8, align 4
  br label %418

174:                                              ; preds = %164
  %175 = load %struct.uio*, %struct.uio** %15, align 8
  %176 = getelementptr inbounds %struct.uio, %struct.uio* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %179 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = and i64 %177, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %5, align 4
  %184 = load %struct.uio*, %struct.uio** %15, align 8
  %185 = getelementptr inbounds %struct.uio, %struct.uio* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %188 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 @min(i64 %186, i32 %191)
  store i32 %192, i32* %4, align 4
  %193 = load %struct.uio*, %struct.uio** %15, align 8
  %194 = getelementptr inbounds %struct.uio, %struct.uio* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = load %struct.denode*, %struct.denode** %18, align 8
  %200 = getelementptr inbounds %struct.denode, %struct.denode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %198, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %174
  %204 = load %struct.uio*, %struct.uio** %15, align 8
  %205 = getelementptr inbounds %struct.uio, %struct.uio* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = load %struct.denode*, %struct.denode** %18, align 8
  %211 = getelementptr inbounds %struct.denode, %struct.denode* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.vnode*, %struct.vnode** %16, align 8
  %213 = load %struct.denode*, %struct.denode** %18, align 8
  %214 = getelementptr inbounds %struct.denode, %struct.denode* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @vnode_pager_setsize(%struct.vnode* %212, i32 %216)
  br label %218

218:                                              ; preds = %203, %174
  %219 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %220 = load %struct.uio*, %struct.uio** %15, align 8
  %221 = getelementptr inbounds %struct.uio, %struct.uio* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @de_cluster(%struct.msdosfsmount* %219, i64 %222)
  store i64 %223, i64* %11, align 8
  %224 = load %struct.uio*, %struct.uio** %15, align 8
  %225 = getelementptr inbounds %struct.uio, %struct.uio* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %228 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = and i64 %226, %230
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %308

233:                                              ; preds = %218
  %234 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %235 = load %struct.uio*, %struct.uio** %15, align 8
  %236 = getelementptr inbounds %struct.uio, %struct.uio* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.uio*, %struct.uio** %15, align 8
  %239 = getelementptr inbounds %struct.uio, %struct.uio* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = call i64 @de_cluster(%struct.msdosfsmount* %234, i64 %241)
  %243 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %244 = load %struct.uio*, %struct.uio** %15, align 8
  %245 = getelementptr inbounds %struct.uio, %struct.uio* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i64 @de_cluster(%struct.msdosfsmount* %243, i64 %246)
  %248 = icmp sgt i64 %242, %247
  br i1 %248, label %261, label %249

249:                                              ; preds = %233
  %250 = load %struct.uio*, %struct.uio** %15, align 8
  %251 = getelementptr inbounds %struct.uio, %struct.uio* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.uio*, %struct.uio** %15, align 8
  %254 = getelementptr inbounds %struct.uio, %struct.uio* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = load %struct.denode*, %struct.denode** %18, align 8
  %258 = getelementptr inbounds %struct.denode, %struct.denode* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp sge i64 %256, %259
  br i1 %260, label %261, label %308

261:                                              ; preds = %249, %233
  %262 = load %struct.vnode*, %struct.vnode** %17, align 8
  %263 = load i64, i64* %11, align 8
  %264 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %265 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call %struct.buf* @getblk(%struct.vnode* %262, i64 %263, i32 %266, i32 0, i32 0, i32 0)
  store %struct.buf* %267, %struct.buf** %13, align 8
  %268 = load %struct.buf*, %struct.buf** %13, align 8
  %269 = call i32 @vfs_bio_clrbuf(%struct.buf* %268)
  %270 = load %struct.buf*, %struct.buf** %13, align 8
  %271 = getelementptr inbounds %struct.buf, %struct.buf* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.buf*, %struct.buf** %13, align 8
  %274 = getelementptr inbounds %struct.buf, %struct.buf* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %272, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %261
  %278 = load %struct.denode*, %struct.denode** %18, align 8
  %279 = load %struct.buf*, %struct.buf** %13, align 8
  %280 = getelementptr inbounds %struct.buf, %struct.buf* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @pcbmap(%struct.denode* %278, i32 %281, i64* %11, i32 0, i32 0)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load %struct.buf*, %struct.buf** %13, align 8
  %287 = getelementptr inbounds %struct.buf, %struct.buf* %286, i32 0, i32 0
  store i32 -1, i32* %287, align 8
  br label %293

288:                                              ; preds = %277
  %289 = load i64, i64* %11, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.buf*, %struct.buf** %13, align 8
  %292 = getelementptr inbounds %struct.buf, %struct.buf* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %288, %285
  br label %294

294:                                              ; preds = %293, %261
  %295 = load %struct.buf*, %struct.buf** %13, align 8
  %296 = getelementptr inbounds %struct.buf, %struct.buf* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load %struct.buf*, %struct.buf** %13, align 8
  %301 = call i32 @brelse(%struct.buf* %300)
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %299
  %305 = load i32, i32* @EIO, align 4
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %304, %299
  br label %418

307:                                              ; preds = %294
  br label %320

308:                                              ; preds = %249, %218
  %309 = load %struct.vnode*, %struct.vnode** %17, align 8
  %310 = load i64, i64* %11, align 8
  %311 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %312 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ucred*, %struct.ucred** %20, align 8
  %315 = call i32 @bread(%struct.vnode* %309, i64 %310, i32 %313, %struct.ucred* %314, %struct.buf** %13)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %308
  br label %418

319:                                              ; preds = %308
  br label %320

320:                                              ; preds = %319, %307
  %321 = load %struct.buf*, %struct.buf** %13, align 8
  %322 = getelementptr inbounds %struct.buf, %struct.buf* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %323, %325
  %327 = load i32, i32* %4, align 4
  %328 = load %struct.uio*, %struct.uio** %15, align 8
  %329 = call i32 @vn_io_fault_uiomove(i64 %326, i32 %327, %struct.uio* %328)
  store i32 %329, i32* %8, align 4
  %330 = load i32, i32* %8, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %320
  %333 = load %struct.buf*, %struct.buf** %13, align 8
  %334 = call i32 @brelse(%struct.buf* %333)
  br label %418

335:                                              ; preds = %320
  %336 = load %struct.vnode*, %struct.vnode** %16, align 8
  %337 = getelementptr inbounds %struct.vnode, %struct.vnode* %336, i32 0, i32 1
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @MNT_NOCLUSTERW, align 4
  %342 = and i32 %340, %341
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %335
  %345 = load i32, i32* @B_CLUSTEROK, align 4
  %346 = load %struct.buf*, %struct.buf** %13, align 8
  %347 = getelementptr inbounds %struct.buf, %struct.buf* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %344, %335
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* @IO_SYNC, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.buf*, %struct.buf** %13, align 8
  %357 = call i32 @bwrite(%struct.buf* %356)
  br label %402

358:                                              ; preds = %350
  %359 = call i64 (...) @vm_page_count_severe()
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = call i64 (...) @buf_dirty_count_severe()
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361, %358
  %365 = load %struct.buf*, %struct.buf** %13, align 8
  %366 = call i32 @bawrite(%struct.buf* %365)
  br label %401

367:                                              ; preds = %361
  %368 = load i32, i32* %4, align 4
  %369 = load i32, i32* %5, align 4
  %370 = add nsw i32 %368, %369
  %371 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  %372 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %370, %373
  br i1 %374, label %375, label %397

375:                                              ; preds = %367
  %376 = load %struct.vnode*, %struct.vnode** %16, align 8
  %377 = getelementptr inbounds %struct.vnode, %struct.vnode* %376, i32 0, i32 1
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @MNT_NOCLUSTERW, align 4
  %382 = and i32 %380, %381
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %375
  %385 = load %struct.vnode*, %struct.vnode** %16, align 8
  %386 = load %struct.buf*, %struct.buf** %13, align 8
  %387 = load %struct.denode*, %struct.denode** %18, align 8
  %388 = getelementptr inbounds %struct.denode, %struct.denode* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = trunc i64 %389 to i32
  %391 = load i32, i32* %10, align 4
  %392 = call i32 @cluster_write(%struct.vnode* %385, %struct.buf* %386, i32 %390, i32 %391, i32 0)
  br label %396

393:                                              ; preds = %375
  %394 = load %struct.buf*, %struct.buf** %13, align 8
  %395 = call i32 @bawrite(%struct.buf* %394)
  br label %396

396:                                              ; preds = %393, %384
  br label %400

397:                                              ; preds = %367
  %398 = load %struct.buf*, %struct.buf** %13, align 8
  %399 = call i32 @bdwrite(%struct.buf* %398)
  br label %400

400:                                              ; preds = %397, %396
  br label %401

401:                                              ; preds = %400, %364
  br label %402

402:                                              ; preds = %401, %355
  %403 = load i32, i32* @DE_UPDATE, align 4
  %404 = load %struct.denode*, %struct.denode** %18, align 8
  %405 = getelementptr inbounds %struct.denode, %struct.denode* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %8, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %408
  %412 = load %struct.uio*, %struct.uio** %15, align 8
  %413 = getelementptr inbounds %struct.uio, %struct.uio* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp sgt i64 %414, 0
  br label %416

416:                                              ; preds = %411, %408
  %417 = phi i1 [ false, %408 ], [ %415, %411 ]
  br i1 %417, label %164, label %418

418:                                              ; preds = %416, %332, %318, %306, %172
  br label %419

419:                                              ; preds = %418, %146
  %420 = load i32, i32* %8, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %465

422:                                              ; preds = %419
  %423 = load i32, i32* %14, align 4
  %424 = load i32, i32* @IO_UNIT, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %447

427:                                              ; preds = %422
  %428 = load %struct.denode*, %struct.denode** %18, align 8
  %429 = load i64, i64* %7, align 8
  %430 = load i32, i32* %14, align 4
  %431 = load i32, i32* @IO_SYNC, align 4
  %432 = and i32 %430, %431
  %433 = load i32, i32* @NOCRED, align 4
  %434 = call i32 @detrunc(%struct.denode* %428, i64 %429, i32 %432, i32 %433)
  %435 = load i64, i64* %6, align 8
  %436 = load %struct.uio*, %struct.uio** %15, align 8
  %437 = getelementptr inbounds %struct.uio, %struct.uio* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = sub nsw i64 %435, %438
  %440 = load %struct.uio*, %struct.uio** %15, align 8
  %441 = getelementptr inbounds %struct.uio, %struct.uio* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = sub nsw i64 %442, %439
  store i64 %443, i64* %441, align 8
  %444 = load i64, i64* %6, align 8
  %445 = load %struct.uio*, %struct.uio** %15, align 8
  %446 = getelementptr inbounds %struct.uio, %struct.uio* %445, i32 0, i32 1
  store i64 %444, i64* %446, align 8
  br label %464

447:                                              ; preds = %422
  %448 = load %struct.denode*, %struct.denode** %18, align 8
  %449 = load %struct.denode*, %struct.denode** %18, align 8
  %450 = getelementptr inbounds %struct.denode, %struct.denode* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i32, i32* %14, align 4
  %453 = load i32, i32* @IO_SYNC, align 4
  %454 = and i32 %452, %453
  %455 = load i32, i32* @NOCRED, align 4
  %456 = call i32 @detrunc(%struct.denode* %448, i64 %451, i32 %454, i32 %455)
  %457 = load %struct.uio*, %struct.uio** %15, align 8
  %458 = getelementptr inbounds %struct.uio, %struct.uio* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* %6, align 8
  %461 = icmp ne i64 %459, %460
  br i1 %461, label %462, label %463

462:                                              ; preds = %447
  store i32 0, i32* %8, align 4
  br label %463

463:                                              ; preds = %462, %447
  br label %464

464:                                              ; preds = %463, %427
  br label %474

465:                                              ; preds = %419
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* @IO_SYNC, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %465
  %471 = load %struct.denode*, %struct.denode** %18, align 8
  %472 = call i32 @deupdat(%struct.denode* %471, i32 1)
  store i32 %472, i32* %8, align 4
  br label %473

473:                                              ; preds = %470, %465
  br label %474

474:                                              ; preds = %473, %464
  %475 = load i32, i32* %8, align 4
  store i32 %475, i32* %2, align 4
  br label %476

476:                                              ; preds = %474, %103, %84, %74, %63, %54
  %477 = load i32, i32* %2, align 4
  ret i32 %477
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vn_rlimit_fsize(%struct.vnode*, %struct.uio*, i32) #1

declare dso_local i32 @deextend(%struct.denode*, i64, %struct.ucred*) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @extendfile(%struct.denode*, i64, i32*, i32*, i32) #1

declare dso_local i64 @de_cluster(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i32) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i64*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i32, %struct.ucred*, %struct.buf**) #1

declare dso_local i32 @vn_io_fault_uiomove(i64, i32, %struct.uio*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i64 @vm_page_count_severe(...) #1

declare dso_local i64 @buf_dirty_count_severe(...) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @cluster_write(%struct.vnode*, %struct.buf*, i32, i32, i32) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, i32) #1

declare dso_local i32 @deupdat(%struct.denode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
