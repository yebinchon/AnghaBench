; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_remove_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_remove_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.buf = type { i32 }
%struct.ext4_extent_header = type { i64 }
%struct.ext4_extent_path = type { i32, i64, %struct.ext4_extent_header*, %struct.ext4_extent_path*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@M_EXT2EXTENTS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_remove_space(%struct.inode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.ext4_extent_header*, align 8
  %14 = alloca %struct.ext4_extent_path*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %21, %struct.ext4_extent_header** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @ext4_ext_inode_depth(%struct.inode* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %26 = call i32 @ext4_ext_check_header(%struct.inode* %24, %struct.ext4_extent_header* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %6, align 4
  br label %284

31:                                               ; preds = %5
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @M_EXT2EXTENTS, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.ext4_extent_path* @malloc(i32 %36, i32 %37, i32 %40)
  store %struct.ext4_extent_path* %41, %struct.ext4_extent_path** %14, align 8
  %42 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %43 = icmp ne %struct.ext4_extent_path* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %6, align 4
  br label %284

46:                                               ; preds = %31
  %47 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %48 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %49 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %48, i64 0
  %50 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %49, i32 0, i32 2
  store %struct.ext4_extent_header* %47, %struct.ext4_extent_header** %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %53 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %52, i64 0
  %54 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %257, %75, %46
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = icmp sge i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %258

63:                                               ; preds = %61
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ext4_ext_rm_leaf(%struct.inode* %68, %struct.ext4_extent_path* %69, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %258

75:                                               ; preds = %67
  %76 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %79, i32 0, i32 3
  %81 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %80, align 8
  %82 = load i32, i32* @M_EXT2EXTENTS, align 4
  %83 = call i32 @free(%struct.ext4_extent_path* %81, i32 %82)
  %84 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %87, i32 0, i32 3
  store %struct.ext4_extent_path* null, %struct.ext4_extent_path** %88, align 8
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  br label %55

91:                                               ; preds = %63
  %92 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %92, i64 %94
  %96 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %95, i32 0, i32 2
  %97 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %96, align 8
  %98 = icmp ne %struct.ext4_extent_header* %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %91
  %100 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %100, i64 %102
  %104 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %103, i32 0, i32 3
  %105 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %104, align 8
  %106 = bitcast %struct.ext4_extent_path* %105 to %struct.ext4_extent_header*
  %107 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %107, i64 %109
  %111 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %110, i32 0, i32 2
  store %struct.ext4_extent_header* %106, %struct.ext4_extent_header** %111, align 8
  br label %112

112:                                              ; preds = %99, %91
  %113 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %113, i64 %115
  %117 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %112
  %121 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %121, i64 %123
  %125 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %124, i32 0, i32 2
  %126 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %125, align 8
  %127 = call i64 @EXT_LAST_INDEX(%struct.ext4_extent_header* %126)
  %128 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %128, i64 %130
  %132 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %131, i32 0, i32 4
  store i64 %127, i64* %132, align 8
  %133 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %133, i64 %135
  %137 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %136, i32 0, i32 2
  %138 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %137, align 8
  %139 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  %142 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %142, i64 %144
  %146 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %145, i32 0, i32 1
  store i64 %141, i64* %146, align 8
  br label %155

147:                                              ; preds = %112
  %148 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %148, i64 %150
  %152 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %147, %120
  %156 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %156, i64 %158
  %160 = call i64 @ext4_ext_more_to_rm(%struct.ext4_extent_path* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %221

162:                                              ; preds = %155
  %163 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %163, i64 %165
  %167 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %166, i64 1
  %168 = call i32 @memset(%struct.ext4_extent_path* %167, i32 0, i32 40)
  %169 = load %struct.inode*, %struct.inode** %7, align 8
  %170 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %170, i64 %172
  %174 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ext4_ext_index_pblock(i64 %175)
  %177 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %178 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %177, i64 0
  %179 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  %183 = sub nsw i32 %180, %182
  %184 = call %struct.buf* @ext4_read_extent_tree_block(%struct.inode* %169, i32 %176, i32 %183, i32 0)
  store %struct.buf* %184, %struct.buf** %12, align 8
  %185 = load %struct.buf*, %struct.buf** %12, align 8
  %186 = icmp ne %struct.buf* %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %162
  %188 = load i32, i32* @EIO, align 4
  store i32 %188, i32* %17, align 4
  br label %258

189:                                              ; preds = %162
  %190 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %190, i64 %193
  %195 = load %struct.buf*, %struct.buf** %12, align 8
  %196 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %196, i64 %198
  %200 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @ext4_ext_index_pblock(i64 %201)
  %203 = call i32 @ext4_ext_fill_path_bdata(%struct.ext4_extent_path* %194, %struct.buf* %195, i32 %202)
  %204 = load %struct.buf*, %struct.buf** %12, align 8
  %205 = call i32 @brelse(%struct.buf* %204)
  %206 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %206, i64 %208
  %210 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %209, i32 0, i32 2
  %211 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %210, align 8
  %212 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %214, i64 %216
  %218 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %217, i32 0, i32 1
  store i64 %213, i64* %218, align 8
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %257

221:                                              ; preds = %155
  %222 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %222, i64 %224
  %226 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %225, i32 0, i32 2
  %227 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %226, align 8
  %228 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %221
  %232 = load i32, i32* %16, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load %struct.inode*, %struct.inode** %7, align 8
  %236 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %236, i64 %238
  %240 = call i32 @ext4_ext_rm_index(%struct.inode* %235, %struct.ext4_extent_path* %239)
  store i32 %240, i32* %17, align 4
  br label %241

241:                                              ; preds = %234, %231, %221
  %242 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %242, i64 %244
  %246 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %245, i32 0, i32 3
  %247 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %246, align 8
  %248 = load i32, i32* @M_EXT2EXTENTS, align 4
  %249 = call i32 @free(%struct.ext4_extent_path* %247, i32 %248)
  %250 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %250, i64 %252
  %254 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %253, i32 0, i32 3
  store %struct.ext4_extent_path* null, %struct.ext4_extent_path** %254, align 8
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %16, align 4
  br label %257

257:                                              ; preds = %241, %189
  br label %55

258:                                              ; preds = %187, %74, %61
  %259 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %260 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %259, i32 0, i32 2
  %261 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %260, align 8
  %262 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %258
  %266 = load %struct.inode*, %struct.inode** %7, align 8
  %267 = call %struct.TYPE_2__* @ext4_ext_header(%struct.inode* %266)
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  store i64 0, i64* %268, align 8
  %269 = load %struct.inode*, %struct.inode** %7, align 8
  %270 = call i32 @ext4_ext_space_root(%struct.inode* %269)
  %271 = load %struct.inode*, %struct.inode** %7, align 8
  %272 = call %struct.TYPE_2__* @ext4_ext_header(%struct.inode* %271)
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.inode*, %struct.inode** %7, align 8
  %275 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %276 = call i32 @ext4_ext_dirty(%struct.inode* %274, %struct.ext4_extent_path* %275)
  br label %277

277:                                              ; preds = %265, %258
  %278 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %279 = call i32 @ext4_ext_drop_refs(%struct.ext4_extent_path* %278)
  %280 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %14, align 8
  %281 = load i32, i32* @M_EXT2EXTENTS, align 4
  %282 = call i32 @free(%struct.ext4_extent_path* %280, i32 %281)
  %283 = load i32, i32* %17, align 4
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %277, %44, %29
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i32 @ext4_ext_inode_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_check_header(%struct.inode*, %struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_path* @malloc(i32, i32, i32) #1

declare dso_local i32 @ext4_ext_rm_leaf(%struct.inode*, %struct.ext4_extent_path*, i32) #1

declare dso_local i32 @free(%struct.ext4_extent_path*, i32) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_ext_more_to_rm(%struct.ext4_extent_path*) #1

declare dso_local i32 @memset(%struct.ext4_extent_path*, i32, i32) #1

declare dso_local %struct.buf* @ext4_read_extent_tree_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_ext_index_pblock(i64) #1

declare dso_local i32 @ext4_ext_fill_path_bdata(%struct.ext4_extent_path*, %struct.buf*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext4_ext_rm_index(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local %struct.TYPE_2__* @ext4_ext_header(%struct.inode*) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*) #1

declare dso_local i32 @ext4_ext_dirty(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_extent_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
