; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.uio = type { i32 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_dinode_header = type { i64 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }
%struct.ext2fs_dinode = type { i32 }

@NOCRED = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_inode_set(%struct.inode* %0, i32 %1, i8* %2, %struct.uio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.ext2fs_extattr_dinode_header*, align 8
  %13 = alloca %struct.ext2fs_extattr_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ext2fs_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.uio* %3, %struct.uio** %9, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = load %struct.m_ext2fs*, %struct.m_ext2fs** %21, align 8
  store %struct.m_ext2fs* %22, %struct.m_ext2fs** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ino_to_fsba(%struct.m_ext2fs* %27, i32 %30)
  %32 = call i32 @fsbtodb(%struct.m_ext2fs* %26, i32 %31)
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @NOCRED, align 4
  %38 = call i32 @bread(i32 %25, i32 %32, i32 %36, i32 %37, %struct.buf** %11)
  store i32 %38, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.buf*, %struct.buf** %11, align 8
  %42 = call i32 @brelse(%struct.buf* %41)
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %5, align 4
  br label %249

44:                                               ; preds = %4
  %45 = load %struct.buf*, %struct.buf** %11, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %50 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %49)
  %51 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ino_to_fsbo(%struct.m_ext2fs* %51, i32 %54)
  %56 = mul nsw i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %48, i64 %57
  %59 = bitcast i8* %58 to %struct.ext2fs_dinode*
  store %struct.ext2fs_dinode* %59, %struct.ext2fs_dinode** %19, align 8
  %60 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %19, align 8
  %61 = bitcast %struct.ext2fs_dinode* %60 to i8*
  %62 = load i32, i32* @E2FS_REV0_INODE_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %19, align 8
  %66 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = bitcast i8* %69 to %struct.ext2fs_extattr_dinode_header*
  store %struct.ext2fs_extattr_dinode_header* %70, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %71 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %72 = getelementptr inbounds %struct.ext2fs_extattr_dinode_header, %struct.ext2fs_extattr_dinode_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EXTATTR_MAGIC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %44
  %77 = load %struct.buf*, %struct.buf** %11, align 8
  %78 = call i32 @brelse(%struct.buf* %77)
  %79 = load i32, i32* @ENOSPC, align 4
  store i32 %79, i32* %5, align 4
  br label %249

80:                                               ; preds = %44
  %81 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %82 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %81)
  %83 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %19, align 8
  %84 = bitcast %struct.ext2fs_dinode* %83 to i8*
  %85 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %86 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = call i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry* %82, i8* %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.buf*, %struct.buf** %11, align 8
  %94 = call i32 @brelse(%struct.buf* %93)
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %5, align 4
  br label %249

96:                                               ; preds = %80
  %97 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %98 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %97)
  store %struct.ext2fs_extattr_entry* %98, %struct.ext2fs_extattr_entry** %13, align 8
  br label %99

99:                                               ; preds = %142, %96
  %100 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %101 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br i1 %103, label %104, label %145

104:                                              ; preds = %99
  %105 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %106 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %142

112:                                              ; preds = %104
  %113 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %114 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %15, align 4
  %116 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %117 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %120 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @ext2_extattr_name_to_bsd(i32 %118, i32 %121, i32* %15)
  store i8* %122, i8** %14, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %112
  %126 = load %struct.buf*, %struct.buf** %11, align 8
  %127 = call i32 @brelse(%struct.buf* %126)
  %128 = load i32, i32* @ENOTSUP, align 4
  store i32 %128, i32* %5, align 4
  br label %249

129:                                              ; preds = %112
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i64 @strncmp(i8* %135, i8* %136, i32 %137)
  %139 = icmp eq i64 0, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %145

141:                                              ; preds = %134, %129
  br label %142

142:                                              ; preds = %141, %111
  %143 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %144 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %143)
  store %struct.ext2fs_extattr_entry* %144, %struct.ext2fs_extattr_entry** %13, align 8
  br label %99

145:                                              ; preds = %140, %99
  %146 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %147 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %146)
  %148 = load i32, i32* @E2FS_REV0_INODE_SIZE, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %19, align 8
  %151 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %17, align 8
  %155 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %156 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %189, label %158

158:                                              ; preds = %145
  %159 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %160 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %159)
  %161 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %162 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %163 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.uio*, %struct.uio** %9, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* %160, %struct.ext2fs_extattr_entry* %161, i32 8, i32 %164, i32 %167)
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %17, align 8
  %171 = icmp ugt i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %158
  %173 = load %struct.buf*, %struct.buf** %11, align 8
  %174 = call i32 @brelse(%struct.buf* %173)
  %175 = load i32, i32* @ENOSPC, align 4
  store i32 %175, i32* %5, align 4
  br label %249

176:                                              ; preds = %158
  %177 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %178 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %177)
  %179 = bitcast %struct.ext2fs_extattr_entry* %178 to i8*
  %180 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %181 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %180)
  %182 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %183 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %184 = bitcast %struct.ext2fs_extattr_dinode_header* %183 to i8*
  %185 = load i64, i64* %17, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load %struct.uio*, %struct.uio** %9, align 8
  %188 = call i32 @ext2_extattr_set_exist_entry(i8* %179, %struct.ext2fs_extattr_entry* %181, %struct.ext2fs_extattr_entry* %182, i8* %186, %struct.uio* %187)
  br label %246

189:                                              ; preds = %145
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %189
  %195 = load %struct.inode*, %struct.inode** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @ext2_extattr_block_get(%struct.inode* %195, i32 %196, i8* %197, i32* null, i64* %16)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* @ENOATTR, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = load i64, i64* %16, align 8
  %204 = icmp ugt i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202, %194
  %206 = load %struct.buf*, %struct.buf** %11, align 8
  %207 = call i32 @brelse(%struct.buf* %206)
  %208 = load i64, i64* %16, align 8
  %209 = icmp ugt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @ENOSPC, align 4
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %210, %205
  %213 = load i32, i32* %18, align 4
  store i32 %213, i32* %5, align 4
  br label %249

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %189
  %216 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %217 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %216)
  %218 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %219 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.uio*, %struct.uio** %9, align 8
  %222 = getelementptr inbounds %struct.uio, %struct.uio* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* %217, %struct.ext2fs_extattr_entry* null, i32 8, i32 %220, i32 %223)
  store i64 %224, i64* %16, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* %17, align 8
  %227 = icmp ugt i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %215
  %229 = load %struct.buf*, %struct.buf** %11, align 8
  %230 = call i32 @brelse(%struct.buf* %229)
  %231 = load i32, i32* @ENOSPC, align 4
  store i32 %231, i32* %5, align 4
  br label %249

232:                                              ; preds = %215
  %233 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %234 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %233)
  %235 = bitcast %struct.ext2fs_extattr_entry* %234 to i8*
  %236 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %237 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %236)
  %238 = load i8*, i8** %8, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %241 = bitcast %struct.ext2fs_extattr_dinode_header* %240 to i8*
  %242 = load i64, i64* %17, align 8
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  %244 = load %struct.uio*, %struct.uio** %9, align 8
  %245 = call i32 @ext2_extattr_set_new_entry(i8* %235, %struct.ext2fs_extattr_entry* %237, i8* %238, i32 %239, i8* %243, %struct.uio* %244)
  br label %246

246:                                              ; preds = %232, %176
  %247 = load %struct.buf*, %struct.buf** %11, align 8
  %248 = call i32 @bwrite(%struct.buf* %247)
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %246, %228, %212, %172, %125, %92, %76, %40
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ino_to_fsbo(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry*, i8*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header*) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_bsd(i32) #1

declare dso_local i8* @ext2_extattr_name_to_bsd(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i64 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i32, i32, i32) #1

declare dso_local i32 @ext2_extattr_set_exist_entry(i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*, %struct.uio*) #1

declare dso_local i32 @ext2_extattr_block_get(%struct.inode*, i32, i8*, i32*, i64*) #1

declare dso_local i32 @ext2_extattr_set_new_entry(i8*, %struct.ext2fs_extattr_entry*, i8*, i32, i8*, %struct.uio*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
