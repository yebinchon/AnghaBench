; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readdir_args = type { i32*, i32**, i64*, %struct.uio*, %struct.vnode* }
%struct.uio = type { i32, i64 }
%struct.vnode = type { i32 }
%struct.dirent = type { i8*, i32, i32, i8*, i8*, i8* }
%struct.udf_node = type { i8*, %struct.udf_mnt*, %struct.TYPE_2__* }
%struct.udf_mnt = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fileid_desc = type { i32, i64, i64, i32, i32*, i32 }
%struct.udf_uiodir = type { i32, i32, i64, %struct.dirent*, i32* }
%struct.udf_dirstream = type { i32, i32, i64, i64 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAGID_FID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid FID tag\0A\00", align 1
@UDF_FID_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UDF_FILE_CHAR_DEL = common dso_local global i32 0, align 4
@UDF_FILE_CHAR_PAR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i8* null, align 8
@UDF_FILE_CHAR_DIR = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readdir_args*)* @udf_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_readdir(%struct.vop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.dirent, align 8
  %7 = alloca %struct.udf_node*, align 8
  %8 = alloca %struct.udf_mnt*, align 8
  %9 = alloca %struct.fileid_desc*, align 8
  %10 = alloca %struct.udf_uiodir, align 8
  %11 = alloca %struct.udf_dirstream*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %3, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %15, i32 0, i32 4
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %4, align 8
  %18 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %18, i32 0, i32 3
  %20 = load %struct.uio*, %struct.uio** %19, align 8
  store %struct.uio* %20, %struct.uio** %5, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call %struct.udf_node* @VTON(%struct.vnode* %21)
  store %struct.udf_node* %22, %struct.udf_node** %7, align 8
  %23 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %24 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %23, i32 0, i32 1
  %25 = load %struct.udf_mnt*, %struct.udf_mnt** %24, align 8
  store %struct.udf_mnt* %25, %struct.udf_mnt** %8, align 8
  %26 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %1
  %32 = load %struct.uio*, %struct.uio** %5, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @M_TEMP, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i32* @malloc(i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %258

47:                                               ; preds = %31
  %48 = load i32, i32* %13, align 4
  %49 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 4
  store i32* %50, i32** %51, align 8
  %52 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %55

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %57 = load %struct.uio*, %struct.uio** %5, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %61 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le64toh(i32 %64)
  %66 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %67 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %66, i32 0, i32 1
  %68 = load %struct.udf_mnt*, %struct.udf_mnt** %67, align 8
  %69 = call %struct.udf_dirstream* @udf_opendir(%struct.udf_node* %56, i64 %59, i32 %65, %struct.udf_mnt* %68)
  store %struct.udf_dirstream* %69, %struct.udf_dirstream** %11, align 8
  br label %70

70:                                               ; preds = %205, %93, %55
  %71 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %72 = call %struct.fileid_desc* @udf_getfid(%struct.udf_dirstream* %71)
  store %struct.fileid_desc* %72, %struct.fileid_desc** %9, align 8
  %73 = icmp ne %struct.fileid_desc* %72, null
  br i1 %73, label %74, label %215

74:                                               ; preds = %70
  %75 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %76 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %75, i32 0, i32 5
  %77 = load i32, i32* @TAGID_FID, align 4
  %78 = call i64 @udf_checktag(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %83 = load i32, i32* @UDF_FID_SIZE, align 4
  %84 = call i32 @hexdump(%struct.fileid_desc* %82, i32 %83, i32* null, i32 0)
  %85 = load i32, i32* @EIO, align 4
  store i32 %85, i32* %14, align 4
  br label %215

86:                                               ; preds = %74
  %87 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %88 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UDF_FILE_CHAR_DEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %70

94:                                               ; preds = %86
  %95 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %96 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %152

99:                                               ; preds = %94
  %100 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %101 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @UDF_FILE_CHAR_PAR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %152

106:                                              ; preds = %99
  %107 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %108 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 5
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** @DT_DIR, align 8
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 4
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 46, i8* %115, align 1
  %116 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 1
  store i32 1, i32* %116, align 8
  %117 = call i8* @GENERIC_DIRSIZ(%struct.dirent* %6)
  %118 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 2
  store i32 1, i32* %119, align 4
  %120 = call i32 @dirent_terminate(%struct.dirent* %6)
  %121 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 3
  store %struct.dirent* %6, %struct.dirent** %121, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.uio*, %struct.uio** %5, align 8
  %125 = call i32 @udf_uiodir(%struct.udf_uiodir* %10, i8* %123, %struct.uio* %124, i32 1)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %106
  br label %215

129:                                              ; preds = %106
  %130 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %131 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %130, i32 0, i32 3
  %132 = call i8* @udf_getid(i32* %131)
  %133 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 5
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** @DT_DIR, align 8
  %135 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 4
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 46, i8* %138, align 1
  %139 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 46, i8* %141, align 1
  %142 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 1
  store i32 2, i32* %142, align 8
  %143 = call i8* @GENERIC_DIRSIZ(%struct.dirent* %6)
  %144 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  store i8* %143, i8** %144, align 8
  %145 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 2
  store i32 2, i32* %145, align 4
  %146 = call i32 @dirent_terminate(%struct.dirent* %6)
  %147 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 3
  store %struct.dirent* %6, %struct.dirent** %147, align 8
  %148 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.uio*, %struct.uio** %5, align 8
  %151 = call i32 @udf_uiodir(%struct.udf_uiodir* %10, i8* %149, %struct.uio* %150, i32 2)
  store i32 %151, i32* %14, align 4
  br label %201

152:                                              ; preds = %99, %94
  %153 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %154 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %157 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %164 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.udf_mnt*, %struct.udf_mnt** %8, align 8
  %167 = call i32 @udf_transname(i32* %159, i8* %162, i64 %165, %struct.udf_mnt* %166)
  %168 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 1
  store i32 %167, i32* %168, align 8
  %169 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %170 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %169, i32 0, i32 3
  %171 = call i8* @udf_getid(i32* %170)
  %172 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 5
  store i8* %171, i8** %172, align 8
  %173 = load %struct.fileid_desc*, %struct.fileid_desc** %9, align 8
  %174 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @UDF_FILE_CHAR_DIR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %152
  %180 = load i8*, i8** @DT_DIR, align 8
  br label %183

181:                                              ; preds = %152
  %182 = load i8*, i8** @DT_UNKNOWN, align 8
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i8* [ %180, %179 ], [ %182, %181 ]
  %185 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 4
  store i8* %184, i8** %185, align 8
  %186 = call i8* @GENERIC_DIRSIZ(%struct.dirent* %6)
  %187 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  store i8* %186, i8** %187, align 8
  %188 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %189 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 2
  store i32 %190, i32* %191, align 4
  %192 = call i32 @dirent_terminate(%struct.dirent* %6)
  %193 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 3
  store %struct.dirent* %6, %struct.dirent** %193, align 8
  %194 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.uio*, %struct.uio** %5, align 8
  %197 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %198 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @udf_uiodir(%struct.udf_uiodir* %10, i8* %195, %struct.uio* %196, i32 %199)
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %183, %129
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %215

205:                                              ; preds = %201
  %206 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %207 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %210 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = load %struct.uio*, %struct.uio** %5, align 8
  %214 = getelementptr inbounds %struct.uio, %struct.uio* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  br label %70

215:                                              ; preds = %204, %128, %80, %70
  %216 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %219 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  store i32 0, i32* %14, align 4
  br label %224

224:                                              ; preds = %223, %215
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %229 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %227, %224
  %232 = load %struct.udf_dirstream*, %struct.udf_dirstream** %11, align 8
  %233 = call i32 @udf_closedir(%struct.udf_dirstream* %232)
  %234 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %235 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = icmp ne i64* %236, null
  br i1 %237, label %238, label %256

238:                                              ; preds = %231
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* @M_TEMP, align 4
  %244 = call i32 @free(i32* %242, i32 %243)
  br label %255

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %249 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %248, i32 0, i32 2
  %250 = load i64*, i64** %249, align 8
  store i64 %247, i64* %250, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %253 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %252, i32 0, i32 1
  %254 = load i32**, i32*** %253, align 8
  store i32* %251, i32** %254, align 8
  br label %255

255:                                              ; preds = %245, %241
  br label %256

256:                                              ; preds = %255, %231
  %257 = load i32, i32* %14, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %256, %45
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local %struct.udf_dirstream* @udf_opendir(%struct.udf_node*, i64, i32, %struct.udf_mnt*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local %struct.fileid_desc* @udf_getfid(%struct.udf_dirstream*) #1

declare dso_local i64 @udf_checktag(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @hexdump(%struct.fileid_desc*, i32, i32*, i32) #1

declare dso_local i8* @GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @udf_uiodir(%struct.udf_uiodir*, i8*, %struct.uio*, i32) #1

declare dso_local i8* @udf_getid(i32*) #1

declare dso_local i32 @udf_transname(i32*, i8*, i64, %struct.udf_mnt*) #1

declare dso_local i32 @udf_closedir(%struct.udf_dirstream*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
