; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_split_dirblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_split_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext2fs_direct_2 = type { i32, i64, i64, i32 }
%struct.ext2fs_htree_sort_entry = type { i32, i32, i32 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@ext2_htree_cmp_sort_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i32, i32*, i32, i32*, %struct.ext2fs_direct_2*)* @ext2_htree_split_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_htree_split_dirblock(%struct.inode* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.ext2fs_direct_2* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ext2fs_direct_2*, align 8
  %17 = alloca %struct.m_ext2fs*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ext2fs_direct_2*, align 8
  %27 = alloca %struct.ext2fs_direct_2*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.ext2fs_htree_sort_entry*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.ext2fs_direct_2* %7, %struct.ext2fs_direct_2** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.m_ext2fs*, %struct.m_ext2fs** %31, align 8
  store %struct.m_ext2fs* %32, %struct.m_ext2fs** %17, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %34, %struct.ext2fs_direct_2** %26, align 8
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %28, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = bitcast i8* %39 to %struct.ext2fs_htree_sort_entry*
  store %struct.ext2fs_htree_sort_entry* %40, %struct.ext2fs_htree_sort_entry** %29, align 8
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %17, align 8
  %42 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %43 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %8
  store i32 4, i32* %20, align 4
  br label %46

46:                                               ; preds = %45, %8
  %47 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %16, align 8
  %48 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %16, align 8
  %51 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ext2_htree_hash(i32 %49, i64 %52, i32* %53, i32 %54, i32* %25, i32* null)
  br label %56

56:                                               ; preds = %108, %46
  %57 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %58 = bitcast %struct.ext2fs_direct_2* %57 to i8*
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = icmp ult i8* %58, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %56
  %69 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %70 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %75 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %73
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %82 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %81, i32 -1
  store %struct.ext2fs_htree_sort_entry* %82, %struct.ext2fs_htree_sort_entry** %29, align 8
  %83 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %84 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %87 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %89 = bitcast %struct.ext2fs_direct_2* %88 to i8*
  %90 = load i8*, i8** %10, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %96 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %98 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %101 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %106 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %105, i32 0, i32 2
  %107 = call i32 @ext2_htree_hash(i32 %99, i64 %102, i32* %103, i32 %104, i32* %106, i32* null)
  br label %108

108:                                              ; preds = %78, %73, %68
  %109 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %110 = bitcast %struct.ext2fs_direct_2* %109 to i8*
  %111 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %112 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = bitcast i8* %115 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %116, %struct.ext2fs_direct_2** %26, align 8
  br label %56

117:                                              ; preds = %56
  %118 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @ext2_htree_cmp_sort_entry, align 4
  %121 = call i32 @qsort(%struct.ext2fs_htree_sort_entry* %118, i32 %119, i32 12, i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %149, %117
  %125 = load i32, i32* %21, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %128, i64 %130
  %132 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %12, align 4
  %137 = sdiv i32 %136, 2
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %152

140:                                              ; preds = %127
  %141 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %141, i64 %143
  %145 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %21, align 4
  br label %124

152:                                              ; preds = %139, %124
  %153 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %153, i64 %156
  %158 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %15, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32*, i32** %15, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %163, i64 %165
  %167 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %162, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %152
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %170, %152
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %22, align 4
  br label %177

177:                                              ; preds = %211, %174
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %214

181:                                              ; preds = %177
  %182 = load i8*, i8** %10, align 8
  %183 = load %struct.ext2fs_htree_sort_entry*, %struct.ext2fs_htree_sort_entry** %29, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %183, i64 %185
  %187 = getelementptr inbounds %struct.ext2fs_htree_sort_entry, %struct.ext2fs_htree_sort_entry* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %182, i64 %189
  %191 = bitcast i8* %190 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %191, %struct.ext2fs_direct_2** %26, align 8
  %192 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %193 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @EXT2_DIR_REC_LEN(i64 %194)
  store i32 %195, i32* %24, align 4
  %196 = load i8*, i8** %28, align 8
  %197 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %198 = bitcast %struct.ext2fs_direct_2* %197 to i8*
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @memcpy(i8* %196, i8* %198, i32 %199)
  %201 = load i32, i32* %24, align 4
  %202 = load i8*, i8** %28, align 8
  %203 = bitcast i8* %202 to %struct.ext2fs_direct_2*
  %204 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %206 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* %24, align 4
  %208 = load i8*, i8** %28, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %28, align 8
  br label %211

211:                                              ; preds = %181
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %22, align 4
  br label %177

214:                                              ; preds = %177
  %215 = load i32, i32* %24, align 4
  %216 = load i8*, i8** %28, align 8
  %217 = sext i32 %215 to i64
  %218 = sub i64 0, %217
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8* %219, i8** %28, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = bitcast i8* %220 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %221, %struct.ext2fs_direct_2** %27, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %222

222:                                              ; preds = %263, %214
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %20, align 4
  %226 = sub nsw i32 %224, %225
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %264

228:                                              ; preds = %222
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* %23, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = bitcast i8* %232 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %233, %struct.ext2fs_direct_2** %26, align 8
  %234 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %235 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %23, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %23, align 4
  %239 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %240 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %263

243:                                              ; preds = %228
  %244 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %245 = bitcast %struct.ext2fs_direct_2* %244 to i8*
  %246 = load i32, i32* %24, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = bitcast i8* %248 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %249, %struct.ext2fs_direct_2** %27, align 8
  %250 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %251 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @EXT2_DIR_REC_LEN(i64 %252)
  store i32 %253, i32* %24, align 4
  %254 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %255 = bitcast %struct.ext2fs_direct_2* %254 to i8*
  %256 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %26, align 8
  %257 = bitcast %struct.ext2fs_direct_2* %256 to i8*
  %258 = load i32, i32* %24, align 4
  %259 = call i32 @memcpy(i8* %255, i8* %257, i32 %258)
  %260 = load i32, i32* %24, align 4
  %261 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %262 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %243, %228
  br label %222

264:                                              ; preds = %222
  %265 = load i32, i32* %25, align 4
  %266 = load i32*, i32** %15, align 8
  %267 = load i32, i32* %266, align 4
  %268 = icmp sge i32 %265, %267
  br i1 %268, label %269, label %292

269:                                              ; preds = %264
  %270 = load i8*, i8** %11, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load i8*, i8** %28, align 8
  %273 = bitcast i8* %272 to %struct.ext2fs_direct_2*
  %274 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %16, align 8
  %275 = load i32, i32* %20, align 4
  %276 = call i32 @ext2_append_entry(i8* %270, i32 %271, %struct.ext2fs_direct_2* %273, %struct.ext2fs_direct_2* %274, i32 %275)
  %277 = load i8*, i8** %10, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %282 = bitcast %struct.ext2fs_direct_2* %281 to i8*
  %283 = ptrtoint i8* %280 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = sub nsw i64 %285, %287
  %289 = trunc i64 %288 to i32
  %290 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %291 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  br label %314

292:                                              ; preds = %264
  %293 = load i8*, i8** %10, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %27, align 8
  %296 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %16, align 8
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @ext2_append_entry(i8* %293, i32 %294, %struct.ext2fs_direct_2* %295, %struct.ext2fs_direct_2* %296, i32 %297)
  %299 = load i8*, i8** %11, align 8
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8*, i8** %28, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = load i32, i32* %20, align 4
  %308 = sext i32 %307 to i64
  %309 = sub nsw i64 %306, %308
  %310 = trunc i64 %309 to i32
  %311 = load i8*, i8** %28, align 8
  %312 = bitcast i8* %311 to %struct.ext2fs_direct_2*
  %313 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 8
  br label %314

314:                                              ; preds = %292, %269
  %315 = load i32, i32* %20, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i8*, i8** %10, align 8
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @EXT2_DIRENT_TAIL(i8* %318, i32 %319)
  %321 = call i32 @ext2_init_dirent_tail(i32 %320)
  %322 = load i8*, i8** %11, align 8
  %323 = load i32, i32* %12, align 4
  %324 = call i32 @EXT2_DIRENT_TAIL(i8* %322, i32 %323)
  %325 = call i32 @ext2_init_dirent_tail(i32 %324)
  br label %326

326:                                              ; preds = %317, %314
  ret i32 0
}

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_htree_hash(i32, i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @qsort(%struct.ext2fs_htree_sort_entry*, i32, i32, i32) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ext2_append_entry(i8*, i32, %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2*, i32) #1

declare dso_local i32 @ext2_init_dirent_tail(i32) #1

declare dso_local i32 @EXT2_DIRENT_TAIL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
