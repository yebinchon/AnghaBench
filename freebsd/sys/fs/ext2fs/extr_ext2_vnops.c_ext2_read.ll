; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { i32, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i32, i64 }
%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i64, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64, i64 }
%struct.buf = type { i64, i64 }

@IO_SEQSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ext2_read: uio->uio_resid < 0\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ext2_read: uio->uio_offset < 0\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@MNT_NOCLUSTERR = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@IN_ACCESS = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@VREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @ext2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.m_ext2fs*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %20 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %20, i32 0, i32 2
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %23, i32 0, i32 1
  %25 = load %struct.uio*, %struct.uio** %24, align 8
  store %struct.uio* %25, %struct.uio** %6, align 8
  %26 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IO_SEQSHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call %struct.inode* @VTOI(%struct.vnode* %34)
  store %struct.inode* %35, %struct.inode** %5, align 8
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %264

46:                                               ; preds = %1
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load %struct.m_ext2fs*, %struct.m_ext2fs** %54, align 8
  store %struct.m_ext2fs* %55, %struct.m_ext2fs** %7, align 8
  %56 = load %struct.uio*, %struct.uio** %6, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %46
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %68 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @EOVERFLOW, align 4
  store i32 %72, i32* %2, align 4
  br label %264

73:                                               ; preds = %63, %46
  store i32 0, i32* %15, align 4
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %74

74:                                               ; preds = %228, %73
  %75 = load %struct.uio*, %struct.uio** %6, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %229

79:                                               ; preds = %74
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.uio*, %struct.uio** %6, align 8
  %84 = getelementptr inbounds %struct.uio, %struct.uio* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  store i64 %86, i64* %11, align 8
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %229

89:                                               ; preds = %79
  %90 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %91 = load %struct.uio*, %struct.uio** %6, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @lblkno(%struct.m_ext2fs* %90, i64 %93)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %10, align 8
  %97 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i8* @blksize(%struct.m_ext2fs* %97, %struct.inode* %98, i64 %99)
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %12, align 8
  %102 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %103 = load %struct.uio*, %struct.uio** %6, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @blkoff(%struct.m_ext2fs* %102, i64 %105)
  store i64 %106, i64* %14, align 8
  %107 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %108 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = sub nsw i64 %109, %110
  store i64 %111, i64* %13, align 8
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = getelementptr inbounds %struct.uio, %struct.uio* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %13, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %89
  %119 = load %struct.uio*, %struct.uio** %6, align 8
  %120 = getelementptr inbounds %struct.uio, %struct.uio* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %118, %89
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %13, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %127, %123
  %130 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @lblktosize(%struct.m_ext2fs* %130, i64 %131)
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load %struct.vnode*, %struct.vnode** %4, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i32, i32* @NOCRED, align 4
  %142 = call i32 @bread(%struct.vnode* %138, i64 %139, i64 %140, i32 %141, %struct.buf** %8)
  store i32 %142, i32* %15, align 4
  br label %189

143:                                              ; preds = %129
  %144 = load %struct.vnode*, %struct.vnode** %4, align 8
  %145 = getelementptr inbounds %struct.vnode, %struct.vnode* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MNT_NOCLUSTERR, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %143
  %153 = load %struct.vnode*, %struct.vnode** %4, align 8
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i32, i32* @NOCRED, align 4
  %160 = load i64, i64* %14, align 8
  %161 = load %struct.uio*, %struct.uio** %6, align 8
  %162 = getelementptr inbounds %struct.uio, %struct.uio* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @cluster_read(%struct.vnode* %153, i64 %156, i64 %157, i64 %158, i32 %159, i64 %165, i32 %166, i32 0, %struct.buf** %8)
  store i32 %167, i32* %15, align 4
  br label %188

168:                                              ; preds = %143
  %169 = load i32, i32* %17, align 4
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i8* @blksize(%struct.m_ext2fs* %172, %struct.inode* %173, i64 %174)
  store i8* %175, i8** %19, align 8
  %176 = load %struct.vnode*, %struct.vnode** %4, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i32, i32* @NOCRED, align 4
  %180 = call i32 @breadn(%struct.vnode* %176, i64 %177, i64 %178, i64* %10, i8** %19, i32 1, i32 %179, %struct.buf** %8)
  store i32 %180, i32* %15, align 4
  br label %187

181:                                              ; preds = %168
  %182 = load %struct.vnode*, %struct.vnode** %4, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* @NOCRED, align 4
  %186 = call i32 @bread(%struct.vnode* %182, i64 %183, i64 %184, i32 %185, %struct.buf** %8)
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %181, %171
  br label %188

188:                                              ; preds = %187, %152
  br label %189

189:                                              ; preds = %188, %137
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.buf*, %struct.buf** %8, align 8
  %194 = call i32 @brelse(%struct.buf* %193)
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %229

195:                                              ; preds = %189
  %196 = load %struct.buf*, %struct.buf** %8, align 8
  %197 = getelementptr inbounds %struct.buf, %struct.buf* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %12, align 8
  %200 = sub nsw i64 %199, %198
  store i64 %200, i64* %12, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %13, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load i64, i64* %12, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %229

208:                                              ; preds = %204
  %209 = load i64, i64* %12, align 8
  store i64 %209, i64* %13, align 8
  br label %210

210:                                              ; preds = %208, %195
  %211 = load %struct.buf*, %struct.buf** %8, align 8
  %212 = getelementptr inbounds %struct.buf, %struct.buf* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i8*
  %215 = load i64, i64* %14, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  %217 = load i64, i64* %13, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.uio*, %struct.uio** %6, align 8
  %220 = call i32 @uiomove(i8* %216, i32 %218, %struct.uio* %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %210
  br label %229

224:                                              ; preds = %210
  %225 = load %struct.buf*, %struct.buf** %8, align 8
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @vfs_bio_brelse(%struct.buf* %225, i32 %226)
  br label %228

228:                                              ; preds = %224
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %74

229:                                              ; preds = %223, %207, %192, %88, %74
  %230 = load %struct.buf*, %struct.buf** %8, align 8
  %231 = icmp ne %struct.buf* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load %struct.buf*, %struct.buf** %8, align 8
  %234 = load i32, i32* %18, align 4
  %235 = call i32 @vfs_bio_brelse(%struct.buf* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %229
  %237 = load i32, i32* %15, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %236
  %240 = load %struct.uio*, %struct.uio** %6, align 8
  %241 = getelementptr inbounds %struct.uio, %struct.uio* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %262

245:                                              ; preds = %239, %236
  %246 = load %struct.vnode*, %struct.vnode** %4, align 8
  %247 = getelementptr inbounds %struct.vnode, %struct.vnode* %246, i32 0, i32 1
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @MNT_NOATIME, align 4
  %252 = load i32, i32* @MNT_RDONLY, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %245
  %257 = load i32, i32* @IN_ACCESS, align 4
  %258 = load %struct.inode*, %struct.inode** %5, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %245, %239
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %262, %71, %45
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @lblkno(%struct.m_ext2fs*, i64) #1

declare dso_local i8* @blksize(%struct.m_ext2fs*, %struct.inode*, i64) #1

declare dso_local i64 @blkoff(%struct.m_ext2fs*, i64) #1

declare dso_local i64 @lblktosize(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i64, i32, %struct.buf**) #1

declare dso_local i32 @cluster_read(%struct.vnode*, i64, i64, i64, i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i32 @breadn(%struct.vnode*, i64, i64, i64*, i8**, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @vfs_bio_brelse(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
