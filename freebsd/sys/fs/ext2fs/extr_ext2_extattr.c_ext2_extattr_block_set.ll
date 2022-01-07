; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.uio = type { i32 }
%struct.buf = type { i64, i64 }
%struct.ext2fs_extattr_header = type { i64, i32, i32, %struct.ext2fs_extattr_entry*, i64 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }

@NOCRED = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_block_set(%struct.inode* %0, i32 %1, i8* %2, %struct.uio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.ext2fs_extattr_header*, align 8
  %13 = alloca %struct.ext2fs_extattr_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.uio* %3, %struct.uio** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 4
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %19, align 8
  store %struct.m_ext2fs* %20, %struct.m_ext2fs** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %235

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fsbtodb(%struct.m_ext2fs* %29, i32 %32)
  %34 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %35 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @NOCRED, align 4
  %38 = call i32 @bread(i32 %28, i32 %33, i64 %36, i32 %37, %struct.buf** %11)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %5, align 4
  br label %380

43:                                               ; preds = %25
  %44 = load %struct.buf*, %struct.buf** %11, align 8
  %45 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %44)
  store %struct.ext2fs_extattr_header* %45, %struct.ext2fs_extattr_header** %12, align 8
  %46 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %47 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXTATTR_MAGIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %53 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %43
  %57 = load %struct.buf*, %struct.buf** %11, align 8
  %58 = call i32 @brelse(%struct.buf* %57)
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %5, align 4
  br label %380

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load %struct.buf*, %struct.buf** %11, align 8
  %63 = call i32 @ext2_extattr_block_check(%struct.inode* %61, %struct.buf* %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.buf*, %struct.buf** %11, align 8
  %68 = call i32 @brelse(%struct.buf* %67)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %5, align 4
  br label %380

70:                                               ; preds = %60
  %71 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %72 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i32 @ext2_extattr_block_clone(%struct.inode* %76, %struct.buf** %11)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.buf*, %struct.buf** %11, align 8
  %82 = call i32 @brelse(%struct.buf* %81)
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %5, align 4
  br label %380

84:                                               ; preds = %75
  %85 = load %struct.buf*, %struct.buf** %11, align 8
  %86 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %85)
  store %struct.ext2fs_extattr_header* %86, %struct.ext2fs_extattr_header** %12, align 8
  br label %87

87:                                               ; preds = %84, %70
  %88 = load %struct.buf*, %struct.buf** %11, align 8
  %89 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %88)
  store %struct.ext2fs_extattr_entry* %89, %struct.ext2fs_extattr_entry** %13, align 8
  br label %90

90:                                               ; preds = %133, %87
  %91 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %92 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %136

95:                                               ; preds = %90
  %96 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %97 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %133

103:                                              ; preds = %95
  %104 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %105 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %108 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %111 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @ext2_extattr_name_to_bsd(i32 %109, i32 %112, i32* %15)
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %103
  %117 = load %struct.buf*, %struct.buf** %11, align 8
  %118 = call i32 @brelse(%struct.buf* %117)
  %119 = load i32, i32* @ENOTSUP, align 4
  store i32 %119, i32* %5, align 4
  br label %380

120:                                              ; preds = %103
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i8*, i8** %14, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @strncmp(i8* %126, i8* %127, i32 %128)
  %130 = icmp eq i64 0, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %136

132:                                              ; preds = %125, %120
  br label %133

133:                                              ; preds = %132, %102
  %134 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %135 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %134)
  store %struct.ext2fs_extattr_entry* %135, %struct.ext2fs_extattr_entry** %13, align 8
  br label %90

136:                                              ; preds = %131, %90
  %137 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %138 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %176, label %140

140:                                              ; preds = %136
  %141 = load %struct.buf*, %struct.buf** %11, align 8
  %142 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %141)
  %143 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %144 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %145 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.uio*, %struct.uio** %9, align 8
  %148 = getelementptr inbounds %struct.uio, %struct.uio* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* %142, %struct.ext2fs_extattr_entry* %143, i32 32, i32 %146, i32 %149)
  store i64 %150, i64* %16, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load %struct.buf*, %struct.buf** %11, align 8
  %153 = getelementptr inbounds %struct.buf, %struct.buf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ugt i64 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %140
  %157 = load %struct.buf*, %struct.buf** %11, align 8
  %158 = call i32 @brelse(%struct.buf* %157)
  %159 = load i32, i32* @ENOSPC, align 4
  store i32 %159, i32* %5, align 4
  br label %380

160:                                              ; preds = %140
  %161 = load %struct.buf*, %struct.buf** %11, align 8
  %162 = getelementptr inbounds %struct.buf, %struct.buf* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.buf*, %struct.buf** %11, align 8
  %165 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %164)
  %166 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %167 = load %struct.buf*, %struct.buf** %11, align 8
  %168 = getelementptr inbounds %struct.buf, %struct.buf* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.buf*, %struct.buf** %11, align 8
  %171 = getelementptr inbounds %struct.buf, %struct.buf* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = load %struct.uio*, %struct.uio** %9, align 8
  %175 = call i32 @ext2_extattr_set_exist_entry(i64 %163, %struct.ext2fs_extattr_entry* %165, %struct.ext2fs_extattr_entry* %166, i64 %173, %struct.uio* %174)
  br label %226

176:                                              ; preds = %136
  %177 = load %struct.buf*, %struct.buf** %11, align 8
  %178 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %177)
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = load %struct.uio*, %struct.uio** %9, align 8
  %182 = getelementptr inbounds %struct.uio, %struct.uio* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* %178, %struct.ext2fs_extattr_entry* null, i32 32, i32 %180, i32 %183)
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.buf*, %struct.buf** %11, align 8
  %187 = getelementptr inbounds %struct.buf, %struct.buf* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ugt i64 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %176
  %191 = load %struct.buf*, %struct.buf** %11, align 8
  %192 = call i32 @brelse(%struct.buf* %191)
  %193 = load i32, i32* @ENOSPC, align 4
  store i32 %193, i32* %5, align 4
  br label %380

194:                                              ; preds = %176
  %195 = load %struct.buf*, %struct.buf** %11, align 8
  %196 = getelementptr inbounds %struct.buf, %struct.buf* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.buf*, %struct.buf** %11, align 8
  %199 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %198)
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.buf*, %struct.buf** %11, align 8
  %203 = getelementptr inbounds %struct.buf, %struct.buf* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.buf*, %struct.buf** %11, align 8
  %206 = getelementptr inbounds %struct.buf, %struct.buf* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %204, %207
  %209 = load %struct.uio*, %struct.uio** %9, align 8
  %210 = call %struct.ext2fs_extattr_entry* @ext2_extattr_set_new_entry(i64 %197, %struct.ext2fs_extattr_entry* %199, i8* %200, i32 %201, i64 %208, %struct.uio* %209)
  store %struct.ext2fs_extattr_entry* %210, %struct.ext2fs_extattr_entry** %13, align 8
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @ext2_extattr_inode_delete(%struct.inode* %211, i32 %212, i8* %213)
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %194
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @ENOATTR, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load %struct.buf*, %struct.buf** %11, align 8
  %223 = call i32 @brelse(%struct.buf* %222)
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %5, align 4
  br label %380

225:                                              ; preds = %217, %194
  br label %226

226:                                              ; preds = %225, %160
  %227 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %228 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %229 = call i32 @ext2_extattr_rehash(%struct.ext2fs_extattr_header* %227, %struct.ext2fs_extattr_entry* %228)
  %230 = load %struct.inode*, %struct.inode** %6, align 8
  %231 = load %struct.buf*, %struct.buf** %11, align 8
  %232 = call i32 @ext2_extattr_blk_csum_set(%struct.inode* %230, %struct.buf* %231)
  %233 = load %struct.buf*, %struct.buf** %11, align 8
  %234 = call i32 @bwrite(%struct.buf* %233)
  store i32 %234, i32* %5, align 4
  br label %380

235:                                              ; preds = %4
  %236 = load i32, i32* %7, align 4
  %237 = load i8*, i8** %8, align 8
  %238 = call i8* @ext2_extattr_name_to_linux(i32 %236, i8* %237)
  %239 = call i32 @strlen(i8* %238)
  %240 = load %struct.uio*, %struct.uio** %9, align 8
  %241 = getelementptr inbounds %struct.uio, %struct.uio* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* null, %struct.ext2fs_extattr_entry* null, i32 32, i32 %239, i32 %242)
  store i64 %243, i64* %16, align 8
  %244 = load i64, i64* %16, align 8
  %245 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %246 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ugt i64 %244, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %235
  %250 = load i32, i32* @ENOSPC, align 4
  store i32 %250, i32* %5, align 4
  br label %380

251:                                              ; preds = %235
  %252 = load %struct.inode*, %struct.inode** %6, align 8
  %253 = call i32 @ext2_alloc_meta(%struct.inode* %252)
  %254 = load %struct.inode*, %struct.inode** %6, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 0, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = load i32, i32* @ENOSPC, align 4
  store i32 %261, i32* %5, align 4
  br label %380

262:                                              ; preds = %251
  %263 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %264 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @btodb(i64 %265)
  %267 = load %struct.inode*, %struct.inode** %6, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %266
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %268, align 8
  %273 = load %struct.inode*, %struct.inode** %6, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @ext2_update(i32 %275, i32 1)
  %277 = load %struct.inode*, %struct.inode** %6, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %281 = load %struct.inode*, %struct.inode** %6, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @fsbtodb(%struct.m_ext2fs* %280, i32 %283)
  %285 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %286 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call %struct.buf* @getblk(i32 %279, i32 %284, i64 %287, i32 0, i32 0, i32 0)
  store %struct.buf* %288, %struct.buf** %11, align 8
  %289 = load %struct.buf*, %struct.buf** %11, align 8
  %290 = icmp ne %struct.buf* %289, null
  br i1 %290, label %317, label %291

291:                                              ; preds = %262
  %292 = load %struct.inode*, %struct.inode** %6, align 8
  %293 = load %struct.inode*, %struct.inode** %6, align 8
  %294 = getelementptr inbounds %struct.inode, %struct.inode* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %297 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @ext2_blkfree(%struct.inode* %292, i32 %295, i64 %298)
  %300 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %301 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @btodb(i64 %302)
  %304 = load %struct.inode*, %struct.inode** %6, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = sub nsw i64 %307, %303
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 8
  %310 = load %struct.inode*, %struct.inode** %6, align 8
  %311 = getelementptr inbounds %struct.inode, %struct.inode* %310, i32 0, i32 1
  store i32 0, i32* %311, align 4
  %312 = load %struct.inode*, %struct.inode** %6, align 8
  %313 = getelementptr inbounds %struct.inode, %struct.inode* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @ext2_update(i32 %314, i32 1)
  %316 = load i32, i32* @EIO, align 4
  store i32 %316, i32* %5, align 4
  br label %380

317:                                              ; preds = %262
  %318 = load %struct.buf*, %struct.buf** %11, align 8
  %319 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %318)
  store %struct.ext2fs_extattr_header* %319, %struct.ext2fs_extattr_header** %12, align 8
  %320 = load i64, i64* @EXTATTR_MAGIC, align 8
  %321 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %322 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %321, i32 0, i32 0
  store i64 %320, i64* %322, align 8
  %323 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %324 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %323, i32 0, i32 2
  store i32 1, i32* %324, align 4
  %325 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %326 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %325, i32 0, i32 1
  store i32 1, i32* %326, align 8
  %327 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %328 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %327, i32 0, i32 4
  store i64 0, i64* %328, align 8
  %329 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %330 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %329, i32 0, i32 3
  %331 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %330, align 8
  %332 = call i32 @memset(%struct.ext2fs_extattr_entry* %331, i32 0, i32 8)
  %333 = load %struct.buf*, %struct.buf** %11, align 8
  %334 = getelementptr inbounds %struct.buf, %struct.buf* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %337 = call i32 @memcpy(i64 %335, %struct.ext2fs_extattr_header* %336, i32 32)
  %338 = load %struct.buf*, %struct.buf** %11, align 8
  %339 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %338)
  %340 = call i32 @memset(%struct.ext2fs_extattr_entry* %339, i32 0, i32 4)
  %341 = load %struct.buf*, %struct.buf** %11, align 8
  %342 = getelementptr inbounds %struct.buf, %struct.buf* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.buf*, %struct.buf** %11, align 8
  %345 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %344)
  %346 = load i8*, i8** %8, align 8
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.buf*, %struct.buf** %11, align 8
  %349 = getelementptr inbounds %struct.buf, %struct.buf* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.buf*, %struct.buf** %11, align 8
  %352 = getelementptr inbounds %struct.buf, %struct.buf* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add i64 %350, %353
  %355 = load %struct.uio*, %struct.uio** %9, align 8
  %356 = call %struct.ext2fs_extattr_entry* @ext2_extattr_set_new_entry(i64 %343, %struct.ext2fs_extattr_entry* %345, i8* %346, i32 %347, i64 %354, %struct.uio* %355)
  store %struct.ext2fs_extattr_entry* %356, %struct.ext2fs_extattr_entry** %13, align 8
  %357 = load %struct.inode*, %struct.inode** %6, align 8
  %358 = load i32, i32* %7, align 4
  %359 = load i8*, i8** %8, align 8
  %360 = call i32 @ext2_extattr_inode_delete(%struct.inode* %357, i32 %358, i8* %359)
  store i32 %360, i32* %17, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %317
  %364 = load i32, i32* %17, align 4
  %365 = load i32, i32* @ENOATTR, align 4
  %366 = icmp ne i32 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load %struct.buf*, %struct.buf** %11, align 8
  %369 = call i32 @brelse(%struct.buf* %368)
  %370 = load i32, i32* %17, align 4
  store i32 %370, i32* %5, align 4
  br label %380

371:                                              ; preds = %363, %317
  %372 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %373 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %374 = call i32 @ext2_extattr_rehash(%struct.ext2fs_extattr_header* %372, %struct.ext2fs_extattr_entry* %373)
  %375 = load %struct.inode*, %struct.inode** %6, align 8
  %376 = load %struct.buf*, %struct.buf** %11, align 8
  %377 = call i32 @ext2_extattr_blk_csum_set(%struct.inode* %375, %struct.buf* %376)
  %378 = load %struct.buf*, %struct.buf** %11, align 8
  %379 = call i32 @bwrite(%struct.buf* %378)
  store i32 %379, i32* %5, align 4
  br label %380

380:                                              ; preds = %371, %367, %291, %260, %249, %226, %221, %190, %156, %116, %80, %66, %56, %41
  %381 = load i32, i32* %5, align 4
  ret i32 %381
}

declare dso_local i32 @bread(i32, i32, i64, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_extattr_block_check(%struct.inode*, %struct.buf*) #1

declare dso_local i32 @ext2_extattr_block_clone(%struct.inode*, %struct.buf**) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf*) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_bsd(i32) #1

declare dso_local i8* @ext2_extattr_name_to_bsd(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i32, i32, i32) #1

declare dso_local i32 @ext2_extattr_set_exist_entry(i64, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i64, %struct.uio*) #1

declare dso_local %struct.ext2fs_extattr_entry* @ext2_extattr_set_new_entry(i64, %struct.ext2fs_extattr_entry*, i8*, i32, i64, %struct.uio*) #1

declare dso_local i32 @ext2_extattr_inode_delete(%struct.inode*, i32, i8*) #1

declare dso_local i32 @ext2_extattr_rehash(%struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_blk_csum_set(%struct.inode*, %struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i8* @ext2_extattr_name_to_linux(i32, i8*) #1

declare dso_local i32 @ext2_alloc_meta(%struct.inode*) #1

declare dso_local i64 @btodb(i64) #1

declare dso_local i32 @ext2_update(i32, i32) #1

declare dso_local %struct.buf* @getblk(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i32, i64) #1

declare dso_local i32 @memset(%struct.ext2fs_extattr_entry*, i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.ext2fs_extattr_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
