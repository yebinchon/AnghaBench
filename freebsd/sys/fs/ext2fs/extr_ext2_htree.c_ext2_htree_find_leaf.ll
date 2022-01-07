; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_find_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_find_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64, i32, %struct.ext2fs* }
%struct.ext2fs = type { i32 }
%struct.ext2fs_htree_lookup_info = type { i32, %struct.ext2fs_htree_lookup_level* }
%struct.ext2fs_htree_lookup_level = type { %struct.buf*, %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry* }
%struct.buf = type { i64 }
%struct.ext2fs_htree_entry = type { i32 }
%struct.vnode = type { i32 }
%struct.ext2fs_htree_root = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ext2fs_htree_node = type { %struct.ext2fs_htree_entry* }

@EXT2_HTREE_LEGACY = common dso_local global i64 0, align 8
@EXT2_HTREE_HALF_MD4 = common dso_local global i64 0, align 8
@EXT2_HTREE_TEA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32*, i64*, %struct.ext2fs_htree_lookup_info*)* @ext2_htree_find_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_htree_find_leaf(%struct.inode* %0, i8* %1, i32 %2, i32* %3, i64* %4, %struct.ext2fs_htree_lookup_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ext2fs_htree_lookup_info*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.ext2fs*, align 8
  %16 = alloca %struct.m_ext2fs*, align 8
  %17 = alloca %struct.buf*, align 8
  %18 = alloca %struct.ext2fs_htree_root*, align 8
  %19 = alloca %struct.ext2fs_htree_entry*, align 8
  %20 = alloca %struct.ext2fs_htree_entry*, align 8
  %21 = alloca %struct.ext2fs_htree_entry*, align 8
  %22 = alloca %struct.ext2fs_htree_entry*, align 8
  %23 = alloca %struct.ext2fs_htree_entry*, align 8
  %24 = alloca %struct.ext2fs_htree_lookup_level*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.ext2fs_htree_lookup_info* %5, %struct.ext2fs_htree_lookup_info** %13, align 8
  store %struct.buf* null, %struct.buf** %17, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %34 = icmp eq %struct.ext2fs_htree_lookup_info* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %6
  store i32 -1, i32* %7, align 4
  br label %246

36:                                               ; preds = %32
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call %struct.vnode* @ITOV(%struct.inode* %37)
  store %struct.vnode* %38, %struct.vnode** %14, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %40, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 2
  %43 = load %struct.ext2fs*, %struct.ext2fs** %42, align 8
  store %struct.ext2fs* %43, %struct.ext2fs** %15, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %45, align 8
  store %struct.m_ext2fs* %46, %struct.m_ext2fs** %16, align 8
  %47 = load %struct.vnode*, %struct.vnode** %14, align 8
  %48 = call i64 @ext2_blkatoff(%struct.vnode* %47, i32 0, i32* null, %struct.buf** %17)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %246

51:                                               ; preds = %36
  %52 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %53 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.buf*, %struct.buf** %17, align 8
  %55 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %56 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %55, i32 0, i32 1
  %57 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %56, align 8
  %58 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %57, i64 0
  %59 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %58, i32 0, i32 0
  store %struct.buf* %54, %struct.buf** %59, align 8
  %60 = load %struct.buf*, %struct.buf** %17, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ext2fs_htree_root*
  store %struct.ext2fs_htree_root* %63, %struct.ext2fs_htree_root** %18, align 8
  %64 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %65 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EXT2_HTREE_LEGACY, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %51
  %71 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %72 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EXT2_HTREE_HALF_MD4, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %79 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EXT2_HTREE_TEA, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %243

85:                                               ; preds = %77, %70, %51
  %86 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %87 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %29, align 8
  %90 = load i64, i64* %29, align 8
  %91 = load i64, i64* @EXT2_HTREE_TEA, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.m_ext2fs*, %struct.m_ext2fs** %16, align 8
  %95 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %29, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %29, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i64, i64* %29, align 8
  %101 = load i64*, i64** %12, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.ext2fs*, %struct.ext2fs** %15, align 8
  %105 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %29, align 8
  %108 = call i32 @ext2_htree_hash(i8* %102, i32 %103, i32 %106, i64 %107, i32* %25, i32* %26)
  %109 = load i32, i32* %25, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %112 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %27, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %243

117:                                              ; preds = %99
  %118 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %119 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %118, i32 0, i32 0
  %120 = bitcast %struct.TYPE_2__* %119 to i8*
  %121 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %122 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %120, i64 %125
  %127 = bitcast i8* %126 to %struct.ext2fs_htree_entry*
  store %struct.ext2fs_htree_entry* %127, %struct.ext2fs_htree_entry** %19, align 8
  %128 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %129 = call i32 @ext2_htree_get_limit(%struct.ext2fs_htree_entry* %128)
  %130 = sext i32 %129 to i64
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %18, align 8
  %133 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ext2_htree_root_limit(%struct.inode* %131, i32 %135)
  %137 = icmp ne i64 %130, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %117
  br label %243

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %139, %221
  %141 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %142 = call i32 @ext2_htree_get_count(%struct.ext2fs_htree_entry* %141)
  store i32 %142, i32* %28, align 4
  %143 = load i32, i32* %28, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %28, align 4
  %147 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %148 = call i32 @ext2_htree_get_limit(%struct.ext2fs_htree_entry* %147)
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %140
  br label %243

151:                                              ; preds = %145
  %152 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %153 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %152, i64 1
  store %struct.ext2fs_htree_entry* %153, %struct.ext2fs_htree_entry** %20, align 8
  %154 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %155 = load i32, i32* %28, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %154, i64 %156
  %158 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %157, i64 -1
  store %struct.ext2fs_htree_entry* %158, %struct.ext2fs_htree_entry** %21, align 8
  br label %159

159:                                              ; preds = %183, %151
  %160 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %20, align 8
  %161 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %21, align 8
  %162 = icmp ule %struct.ext2fs_htree_entry* %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %159
  %164 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %20, align 8
  %165 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %21, align 8
  %166 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %20, align 8
  %167 = ptrtoint %struct.ext2fs_htree_entry* %165 to i64
  %168 = ptrtoint %struct.ext2fs_htree_entry* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = sdiv i64 %170, 2
  %172 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %164, i64 %171
  store %struct.ext2fs_htree_entry* %172, %struct.ext2fs_htree_entry** %22, align 8
  %173 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %22, align 8
  %174 = call i32 @ext2_htree_get_hash(%struct.ext2fs_htree_entry* %173)
  %175 = load i32, i32* %25, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %22, align 8
  %179 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %178, i64 -1
  store %struct.ext2fs_htree_entry* %179, %struct.ext2fs_htree_entry** %21, align 8
  br label %183

180:                                              ; preds = %163
  %181 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %22, align 8
  %182 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %181, i64 1
  store %struct.ext2fs_htree_entry* %182, %struct.ext2fs_htree_entry** %20, align 8
  br label %183

183:                                              ; preds = %180, %177
  br label %159

184:                                              ; preds = %159
  %185 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %20, align 8
  %186 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %185, i64 -1
  store %struct.ext2fs_htree_entry* %186, %struct.ext2fs_htree_entry** %23, align 8
  %187 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %188 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %187, i32 0, i32 1
  %189 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %188, align 8
  %190 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %191 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %189, i64 %194
  store %struct.ext2fs_htree_lookup_level* %195, %struct.ext2fs_htree_lookup_level** %24, align 8
  %196 = load %struct.buf*, %struct.buf** %17, align 8
  %197 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %24, align 8
  %198 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %197, i32 0, i32 0
  store %struct.buf* %196, %struct.buf** %198, align 8
  %199 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %19, align 8
  %200 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %24, align 8
  %201 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %200, i32 0, i32 2
  store %struct.ext2fs_htree_entry* %199, %struct.ext2fs_htree_entry** %201, align 8
  %202 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %23, align 8
  %203 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %24, align 8
  %204 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %203, i32 0, i32 1
  store %struct.ext2fs_htree_entry* %202, %struct.ext2fs_htree_entry** %204, align 8
  %205 = load i32, i32* %27, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  br label %246

208:                                              ; preds = %184
  %209 = load i32, i32* %27, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %27, align 4
  %211 = load %struct.vnode*, %struct.vnode** %14, align 8
  %212 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %23, align 8
  %213 = call i32 @ext2_htree_get_block(%struct.ext2fs_htree_entry* %212)
  %214 = load %struct.m_ext2fs*, %struct.m_ext2fs** %16, align 8
  %215 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %213, %216
  %218 = call i64 @ext2_blkatoff(%struct.vnode* %211, i32 %217, i32* null, %struct.buf** %17)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %243

221:                                              ; preds = %208
  %222 = load %struct.buf*, %struct.buf** %17, align 8
  %223 = getelementptr inbounds %struct.buf, %struct.buf* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to %struct.ext2fs_htree_node*
  %226 = getelementptr inbounds %struct.ext2fs_htree_node, %struct.ext2fs_htree_node* %225, i32 0, i32 0
  %227 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %226, align 8
  store %struct.ext2fs_htree_entry* %227, %struct.ext2fs_htree_entry** %19, align 8
  %228 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %229 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = load %struct.buf*, %struct.buf** %17, align 8
  %233 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %234 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %233, i32 0, i32 1
  %235 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %234, align 8
  %236 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %237 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %235, i64 %240
  %242 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %241, i32 0, i32 0
  store %struct.buf* %232, %struct.buf** %242, align 8
  br label %140

243:                                              ; preds = %220, %150, %138, %116, %84
  %244 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %13, align 8
  %245 = call i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %244)
  store i32 -1, i32* %7, align 4
  br label %246

246:                                              ; preds = %243, %207, %50, %35
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i64 @ext2_blkatoff(%struct.vnode*, i32, i32*, %struct.buf**) #1

declare dso_local i32 @ext2_htree_hash(i8*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @ext2_htree_get_limit(%struct.ext2fs_htree_entry*) #1

declare dso_local i64 @ext2_htree_root_limit(%struct.inode*, i32) #1

declare dso_local i32 @ext2_htree_get_count(%struct.ext2fs_htree_entry*) #1

declare dso_local i32 @ext2_htree_get_hash(%struct.ext2fs_htree_entry*) #1

declare dso_local i32 @ext2_htree_get_block(%struct.ext2fs_htree_entry*) #1

declare dso_local i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
