; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_create_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_create_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.buf = type { i64 }
%struct.inode = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, i64, %struct.ext2fs* }
%struct.ext2fs = type { i64, i32 }
%struct.ext2fs_htree_root = type { %struct.ext2fs_htree_lookup_info, i32, i32 }
%struct.ext2fs_htree_lookup_info = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IN_E3INDEX = common dso_local global i32 0, align 4
@EXT2_HTREE_TEA = common dso_local global i64 0, align 8
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_htree_create_index(%struct.vnode* %0, %struct.componentname* %1, %struct.ext2fs_direct_2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.ext2fs_direct_2*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext2fs*, align 8
  %11 = alloca %struct.m_ext2fs*, align 8
  %12 = alloca %struct.ext2fs_direct_2*, align 8
  %13 = alloca %struct.ext2fs_direct_2*, align 8
  %14 = alloca %struct.ext2fs_htree_root*, align 8
  %15 = alloca %struct.ext2fs_htree_lookup_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.componentname* %1, %struct.componentname** %6, align 8
  store %struct.ext2fs_direct_2* %2, %struct.ext2fs_direct_2** %7, align 8
  store %struct.buf* null, %struct.buf** %8, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call %struct.inode* @VTOI(%struct.vnode* %23)
  store %struct.inode* %24, %struct.inode** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %26, align 8
  %28 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %27, i32 0, i32 2
  %29 = load %struct.ext2fs*, %struct.ext2fs** %28, align 8
  store %struct.ext2fs* %29, %struct.ext2fs** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load %struct.m_ext2fs*, %struct.m_ext2fs** %31, align 8
  store %struct.m_ext2fs* %32, %struct.m_ext2fs** %11, align 8
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @M_TEMP, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @malloc(i32 %36, i32 %37, i32 %40)
  store i8* %41, i8** %20, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @M_TEMP, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @malloc(i32 %42, i32 %43, i32 %46)
  store i8* %47, i8** %21, align 8
  %48 = load %struct.vnode*, %struct.vnode** %5, align 8
  %49 = call i32 @ext2_blkatoff(%struct.vnode* %48, i32 0, i32* null, %struct.buf** %8)
  store i32 %49, i32* %22, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %3
  br label %250

52:                                               ; preds = %3
  %53 = load %struct.buf*, %struct.buf** %8, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ext2fs_htree_root*
  store %struct.ext2fs_htree_root* %56, %struct.ext2fs_htree_root** %14, align 8
  %57 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %58 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %57, i32 0, i32 2
  %59 = bitcast i32* %58 to i8*
  %60 = bitcast i8* %59 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %60, %struct.ext2fs_direct_2** %13, align 8
  %61 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %13, align 8
  %62 = bitcast %struct.ext2fs_direct_2* %61 to i8*
  %63 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %13, align 8
  %64 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = bitcast i8* %67 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %68, %struct.ext2fs_direct_2** %12, align 8
  %69 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %70 = bitcast %struct.ext2fs_htree_root* %69 to i8*
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %75 = bitcast %struct.ext2fs_direct_2* %74 to i8*
  %76 = ptrtoint i8* %73 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load i8*, i8** %20, align 8
  %81 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @memcpy(i8* %80, %struct.ext2fs_direct_2* %81, i32 %82)
  %84 = load i8*, i8** %20, align 8
  %85 = bitcast i8* %84 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %85, %struct.ext2fs_direct_2** %12, align 8
  br label %86

86:                                               ; preds = %94, %52
  %87 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %88 = bitcast %struct.ext2fs_direct_2* %87 to i8*
  %89 = load i8*, i8** %20, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = icmp ult i8* %88, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %96 = bitcast %struct.ext2fs_direct_2* %95 to i8*
  %97 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %98 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = bitcast i8* %101 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %102, %struct.ext2fs_direct_2** %12, align 8
  br label %86

103:                                              ; preds = %86
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %109 = bitcast %struct.ext2fs_direct_2* %108 to i8*
  %110 = ptrtoint i8* %107 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %12, align 8
  %115 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @IN_E3INDEX, align 4
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %123 = sub nsw i32 %121, %122
  %124 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %13, align 8
  %125 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %127 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %126, i32 0, i32 0
  %128 = call i32 @memset(%struct.ext2fs_htree_lookup_info* %127, i32 0, i32 24)
  %129 = load %struct.ext2fs*, %struct.ext2fs** %10, align 8
  %130 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %133 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %133, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  %135 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %136 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %136, i32 0, i32 1
  store i32 24, i32* %137, align 8
  %138 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %139 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ext2_htree_set_block(i32 %140, i32 1)
  %142 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %143 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ext2_htree_set_count(i32 %144, i32 1)
  %146 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %147 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.inode*, %struct.inode** %9, align 8
  %150 = call i32 @ext2_htree_root_limit(%struct.inode* %149, i32 24)
  %151 = call i32 @ext2_htree_set_limit(i32 %148, i32 %150)
  %152 = call i32 @memset(%struct.ext2fs_htree_lookup_info* %15, i32 0, i32 24)
  %153 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %15, i32 0, i32 2
  store i32 1, i32* %153, align 4
  %154 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %155 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %15, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 4
  %161 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %162 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %15, i32 0, i32 3
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  %168 = load %struct.ext2fs_htree_root*, %struct.ext2fs_htree_root** %14, align 8
  %169 = getelementptr inbounds %struct.ext2fs_htree_root, %struct.ext2fs_htree_root* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %19, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* @EXT2_HTREE_TEA, align 8
  %174 = icmp sle i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %103
  %176 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %177 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %19, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %19, align 8
  br label %181

181:                                              ; preds = %175, %103
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = load i8*, i8** %21, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.ext2fs*, %struct.ext2fs** %10, align 8
  %187 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %191 = call i32 @ext2_htree_split_dirblock(%struct.inode* %182, i8* %183, i8* %184, i32 %185, i32 %188, i64 %189, i32* %18, %struct.ext2fs_direct_2* %190)
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @ext2_htree_insert_entry(%struct.ext2fs_htree_lookup_info* %15, i32 %192, i32 2)
  %194 = load %struct.inode*, %struct.inode** %9, align 8
  %195 = load %struct.buf*, %struct.buf** %8, align 8
  %196 = getelementptr inbounds %struct.buf, %struct.buf* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to %struct.ext2fs_direct_2*
  %199 = call i32 @ext2_dx_csum_set(%struct.inode* %194, %struct.ext2fs_direct_2* %198)
  %200 = load %struct.vnode*, %struct.vnode** %5, align 8
  %201 = call i64 @DOINGASYNC(%struct.vnode* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %181
  %204 = load %struct.buf*, %struct.buf** %8, align 8
  %205 = call i32 @bdwrite(%struct.buf* %204)
  store i32 0, i32* %22, align 4
  br label %209

206:                                              ; preds = %181
  %207 = load %struct.buf*, %struct.buf** %8, align 8
  %208 = call i32 @bwrite(%struct.buf* %207)
  store i32 %208, i32* %22, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* @IN_CHANGE, align 4
  %211 = load i32, i32* @IN_UPDATE, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.inode*, %struct.inode** %9, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* %22, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %250

220:                                              ; preds = %209
  %221 = load %struct.inode*, %struct.inode** %9, align 8
  %222 = load i8*, i8** %20, align 8
  %223 = bitcast i8* %222 to %struct.ext2fs_direct_2*
  %224 = call i32 @ext2_dirent_csum_set(%struct.inode* %221, %struct.ext2fs_direct_2* %223)
  %225 = load %struct.vnode*, %struct.vnode** %5, align 8
  %226 = load i8*, i8** %20, align 8
  %227 = load %struct.componentname*, %struct.componentname** %6, align 8
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @ext2_htree_append_block(%struct.vnode* %225, i8* %226, %struct.componentname* %227, i32 %228)
  store i32 %229, i32* %22, align 4
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %220
  br label %257

233:                                              ; preds = %220
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = load i8*, i8** %21, align 8
  %236 = bitcast i8* %235 to %struct.ext2fs_direct_2*
  %237 = call i32 @ext2_dirent_csum_set(%struct.inode* %234, %struct.ext2fs_direct_2* %236)
  %238 = load %struct.vnode*, %struct.vnode** %5, align 8
  %239 = load i8*, i8** %21, align 8
  %240 = load %struct.componentname*, %struct.componentname** %6, align 8
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @ext2_htree_append_block(%struct.vnode* %238, i8* %239, %struct.componentname* %240, i32 %241)
  store i32 %242, i32* %22, align 4
  %243 = load i8*, i8** %20, align 8
  %244 = load i32, i32* @M_TEMP, align 4
  %245 = call i32 @free(i8* %243, i32 %244)
  %246 = load i8*, i8** %21, align 8
  %247 = load i32, i32* @M_TEMP, align 4
  %248 = call i32 @free(i8* %246, i32 %247)
  %249 = load i32, i32* %22, align 4
  store i32 %249, i32* %4, align 4
  br label %265

250:                                              ; preds = %219, %51
  %251 = load %struct.buf*, %struct.buf** %8, align 8
  %252 = icmp ne %struct.buf* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load %struct.buf*, %struct.buf** %8, align 8
  %255 = call i32 @brelse(%struct.buf* %254)
  br label %256

256:                                              ; preds = %253, %250
  br label %257

257:                                              ; preds = %256, %232
  %258 = load i8*, i8** %20, align 8
  %259 = load i32, i32* @M_TEMP, align 4
  %260 = call i32 @free(i8* %258, i32 %259)
  %261 = load i8*, i8** %21, align 8
  %262 = load i32, i32* @M_TEMP, align 4
  %263 = call i32 @free(i8* %261, i32 %262)
  %264 = load i32, i32* %22, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %257, %233
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ext2_blkatoff(%struct.vnode*, i32, i32*, %struct.buf**) #1

declare dso_local i32 @memcpy(i8*, %struct.ext2fs_direct_2*, i32) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @memset(%struct.ext2fs_htree_lookup_info*, i32, i32) #1

declare dso_local i32 @ext2_htree_set_block(i32, i32) #1

declare dso_local i32 @ext2_htree_set_count(i32, i32) #1

declare dso_local i32 @ext2_htree_set_limit(i32, i32) #1

declare dso_local i32 @ext2_htree_root_limit(%struct.inode*, i32) #1

declare dso_local i32 @ext2_htree_split_dirblock(%struct.inode*, i8*, i8*, i32, i32, i64, i32*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @ext2_htree_insert_entry(%struct.ext2fs_htree_lookup_info*, i32, i32) #1

declare dso_local i32 @ext2_dx_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_dirent_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @ext2_htree_append_block(%struct.vnode*, i8*, %struct.componentname*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
