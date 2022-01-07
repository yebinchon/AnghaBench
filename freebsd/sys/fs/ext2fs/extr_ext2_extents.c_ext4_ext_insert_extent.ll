; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_insert_extent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_insert_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_extent_path = type { i64, %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i64, i64 }
%struct.ext4_extent = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXT4_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ext4_ext_insert_extent: bad path\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ext4_ext_insert_extent: bad ecount\00", align 1
@M_EXT2EXTENTS = common dso_local global i32 0, align 4
@EXT4_EXT_CACHE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*)* @ext4_ext_insert_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_insert_extent(%struct.inode* %0, %struct.ext4_extent_path* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent_path*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca %struct.ext4_extent_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %6, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @ext4_ext_inode_depth(%struct.inode* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %19, i64 %21
  %23 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %22, i32 0, i32 1
  %24 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  store %struct.ext4_extent* %24, %struct.ext4_extent** %9, align 8
  store %struct.ext4_extent_path* null, %struct.ext4_extent_path** %12, align 8
  %25 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %26 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %30, i64 %32
  %34 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %33, i32 0, i32 2
  %35 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %34, align 8
  %36 = icmp eq %struct.ext4_extent_header* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29, %3
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %369

39:                                               ; preds = %29
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %41 = icmp ne %struct.ext4_extent* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %45 = call i64 @ext4_can_extents_be_merged(%struct.ext4_extent* %43, %struct.ext4_extent* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %49 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %52 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %56 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %60, i32 0, i32 2
  %62 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %61, align 8
  store %struct.ext4_extent_header* %62, %struct.ext4_extent_header** %8, align 8
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  store %struct.ext4_extent* %63, %struct.ext4_extent** %11, align 8
  br label %281

64:                                               ; preds = %42, %39
  br label %65

65:                                               ; preds = %134, %64
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i32 @ext4_ext_inode_depth(%struct.inode* %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %71, i32 0, i32 2
  %73 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %72, align 8
  store %struct.ext4_extent_header* %73, %struct.ext4_extent_header** %8, align 8
  %74 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %75 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %78 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %154

82:                                               ; preds = %65
  %83 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %84 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %83)
  store %struct.ext4_extent* %84, %struct.ext4_extent** %10, align 8
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %87 = call i32 @ext4_ext_next_leaf_block(%struct.inode* %85, %struct.ext4_extent_path* %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %92 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %137

95:                                               ; preds = %82
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @EXT4_MAX_BLOCKS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %95
  %100 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %101 = icmp eq %struct.ext4_extent_path* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @KASSERT(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @ext4_ext_find_extent(%struct.inode* %104, i32 %105, %struct.ext4_extent_path** %12)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %354

110:                                              ; preds = %99
  %111 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %112 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %115 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @EIO, align 4
  store i32 %119, i32* %15, align 4
  br label %354

120:                                              ; preds = %110
  %121 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %121, i64 %123
  %125 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %124, i32 0, i32 2
  %126 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %125, align 8
  store %struct.ext4_extent_header* %126, %struct.ext4_extent_header** %8, align 8
  %127 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %128 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %131 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  store %struct.ext4_extent_path* %135, %struct.ext4_extent_path** %6, align 8
  br label %65

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %95, %82
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %140 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %141 = call i32 @ext4_ext_create_new_leaf(%struct.inode* %138, %struct.ext4_extent_path* %139, %struct.ext4_extent* %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %354

145:                                              ; preds = %137
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = call i32 @ext4_ext_inode_depth(%struct.inode* %146)
  store i32 %147, i32* %13, align 4
  %148 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %148, i64 %150
  %152 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %151, i32 0, i32 2
  %153 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %152, align 8
  store %struct.ext4_extent_header* %153, %struct.ext4_extent_header** %8, align 8
  br label %154

154:                                              ; preds = %145, %81
  %155 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %155, i64 %157
  %159 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %158, i32 0, i32 1
  %160 = load %struct.ext4_extent*, %struct.ext4_extent** %159, align 8
  store %struct.ext4_extent* %160, %struct.ext4_extent** %11, align 8
  %161 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %162 = icmp ne %struct.ext4_extent* %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %154
  %164 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %165 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %164)
  %166 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %166, i64 %168
  %170 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %169, i32 0, i32 1
  store %struct.ext4_extent* %165, %struct.ext4_extent** %170, align 8
  br label %248

171:                                              ; preds = %154
  %172 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %173 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %176 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %179, label %219

179:                                              ; preds = %171
  %180 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %181 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %182 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %181)
  %183 = icmp ne %struct.ext4_extent* %180, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %186 = call %struct.ext4_extent* @EXT_MAX_EXTENT(%struct.ext4_extent_header* %185)
  %187 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %188 = ptrtoint %struct.ext4_extent* %186 to i64
  %189 = ptrtoint %struct.ext4_extent* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 24
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 24
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  br label %203

201:                                              ; preds = %184
  %202 = load i32, i32* %14, align 4
  br label %203

203:                                              ; preds = %201, %200
  %204 = phi i32 [ 0, %200 ], [ %202, %201 ]
  store i32 %204, i32* %14, align 4
  %205 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %206 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %205, i64 2
  %207 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %208 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %207, i64 1
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @memmove(%struct.ext4_extent* %206, %struct.ext4_extent* %208, i32 %209)
  br label %211

211:                                              ; preds = %203, %179
  %212 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %213 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %212, i64 1
  %214 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %214, i64 %216
  %218 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %217, i32 0, i32 1
  store %struct.ext4_extent* %213, %struct.ext4_extent** %218, align 8
  br label %247

219:                                              ; preds = %171
  %220 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %221 = call %struct.ext4_extent* @EXT_MAX_EXTENT(%struct.ext4_extent_header* %220)
  %222 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %223 = ptrtoint %struct.ext4_extent* %221 to i64
  %224 = ptrtoint %struct.ext4_extent* %222 to i64
  %225 = sub i64 %223, %224
  %226 = sdiv exact i64 %225, 24
  %227 = mul i64 %226, 24
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  br label %234

232:                                              ; preds = %219
  %233 = load i32, i32* %14, align 4
  br label %234

234:                                              ; preds = %232, %231
  %235 = phi i32 [ 0, %231 ], [ %233, %232 ]
  store i32 %235, i32* %14, align 4
  %236 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %237 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %236, i64 1
  %238 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @memmove(%struct.ext4_extent* %237, %struct.ext4_extent* %238, i32 %239)
  %241 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %242 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %242, i64 %244
  %246 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %245, i32 0, i32 1
  store %struct.ext4_extent* %241, %struct.ext4_extent** %246, align 8
  br label %247

247:                                              ; preds = %234, %211
  br label %248

248:                                              ; preds = %247, %163
  %249 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %250 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  %253 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %254 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %255, i64 %257
  %259 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %258, i32 0, i32 1
  %260 = load %struct.ext4_extent*, %struct.ext4_extent** %259, align 8
  store %struct.ext4_extent* %260, %struct.ext4_extent** %11, align 8
  %261 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %262 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %265 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  %266 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %267 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %270 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %272 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %275 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %277 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %280 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  br label %281

281:                                              ; preds = %248, %47
  br label %282

282:                                              ; preds = %327, %281
  %283 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %284 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %285 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %284)
  %286 = icmp ult %struct.ext4_extent* %283, %285
  br i1 %286, label %287, label %340

287:                                              ; preds = %282
  %288 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %289 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %290 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %289, i64 1
  %291 = call i64 @ext4_can_extents_be_merged(%struct.ext4_extent* %288, %struct.ext4_extent* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %287
  br label %340

294:                                              ; preds = %287
  %295 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %296 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %299 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %298, i64 1
  %300 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %297, %301
  %303 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %304 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %303, i32 0, i32 0
  store i64 %302, i64* %304, align 8
  %305 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %306 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %305, i64 1
  %307 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %308 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %307)
  %309 = icmp ult %struct.ext4_extent* %306, %308
  br i1 %309, label %310, label %327

310:                                              ; preds = %294
  %311 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %312 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %311)
  %313 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %314 = ptrtoint %struct.ext4_extent* %312 to i64
  %315 = ptrtoint %struct.ext4_extent* %313 to i64
  %316 = sub i64 %314, %315
  %317 = sdiv exact i64 %316, 24
  %318 = sub nsw i64 %317, 1
  %319 = mul i64 %318, 24
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %14, align 4
  %321 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %322 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %321, i64 1
  %323 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %324 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %323, i64 2
  %325 = load i32, i32* %14, align 4
  %326 = call i32 @memmove(%struct.ext4_extent* %322, %struct.ext4_extent* %324, i32 %325)
  br label %327

327:                                              ; preds = %310, %294
  %328 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %329 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = sub nsw i64 %330, 1
  %332 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %333 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  %334 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %335 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  %338 = zext i1 %337 to i32
  %339 = call i32 @KASSERT(i32 %338, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %282

340:                                              ; preds = %293, %282
  %341 = load %struct.inode*, %struct.inode** %5, align 8
  %342 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %343 = call i32 @ext4_ext_correct_indexes(%struct.inode* %341, %struct.ext4_extent_path* %342)
  store i32 %343, i32* %15, align 4
  %344 = load i32, i32* %15, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %340
  br label %354

347:                                              ; preds = %340
  %348 = load %struct.inode*, %struct.inode** %5, align 8
  %349 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %349, i64 %351
  %353 = call i32 @ext4_ext_dirty(%struct.inode* %348, %struct.ext4_extent_path* %352)
  br label %354

354:                                              ; preds = %347, %346, %144, %118, %109
  %355 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %356 = icmp ne %struct.ext4_extent_path* %355, null
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %359 = call i32 @ext4_ext_drop_refs(%struct.ext4_extent_path* %358)
  %360 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %12, align 8
  %361 = load i32, i32* @M_EXT2EXTENTS, align 4
  %362 = call i32 @free(%struct.ext4_extent_path* %360, i32 %361)
  br label %363

363:                                              ; preds = %357, %354
  %364 = load i32, i32* @EXT4_EXT_CACHE_NO, align 4
  %365 = load %struct.inode*, %struct.inode** %5, align 8
  %366 = getelementptr inbounds %struct.inode, %struct.inode* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  store i32 %364, i32* %367, align 4
  %368 = load i32, i32* %15, align 4
  store i32 %368, i32* %4, align 4
  br label %369

369:                                              ; preds = %363, %37
  %370 = load i32, i32* %4, align 4
  ret i32 %370
}

declare dso_local i32 @ext4_ext_inode_depth(%struct.inode*) #1

declare dso_local i64 @ext4_can_extents_be_merged(%struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_next_leaf_block(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_extent_path**) #1

declare dso_local i32 @ext4_ext_create_new_leaf(%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent* @EXT_MAX_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_correct_indexes(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_dirty(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_extent_path*) #1

declare dso_local i32 @free(%struct.ext4_extent_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
