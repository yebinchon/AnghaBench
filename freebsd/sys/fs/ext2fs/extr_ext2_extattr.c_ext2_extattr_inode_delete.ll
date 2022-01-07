; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_dinode_header = type { i64 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }
%struct.ext2fs_dinode = type { i32 }

@NOCRED = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_inode_delete(%struct.inode* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.m_ext2fs*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.ext2fs_extattr_dinode_header*, align 8
  %11 = alloca %struct.ext2fs_extattr_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext2fs_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.m_ext2fs*, %struct.m_ext2fs** %17, align 8
  store %struct.m_ext2fs* %18, %struct.m_ext2fs** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %23 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ino_to_fsba(%struct.m_ext2fs* %23, i32 %26)
  %28 = call i32 @fsbtodb(%struct.m_ext2fs* %22, i32 %27)
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @NOCRED, align 4
  %34 = call i32 @bread(i32 %21, i32 %28, i32 %32, i32 %33, %struct.buf** %9)
  store i32 %34, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.buf*, %struct.buf** %9, align 8
  %38 = call i32 @brelse(%struct.buf* %37)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  br label %208

40:                                               ; preds = %3
  %41 = load %struct.buf*, %struct.buf** %9, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %46 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %45)
  %47 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ino_to_fsbo(%struct.m_ext2fs* %47, i32 %50)
  %52 = mul nsw i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %44, i64 %53
  %55 = bitcast i8* %54 to %struct.ext2fs_dinode*
  store %struct.ext2fs_dinode* %55, %struct.ext2fs_dinode** %15, align 8
  %56 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %15, align 8
  %57 = bitcast %struct.ext2fs_dinode* %56 to i8*
  %58 = load i32, i32* @E2FS_REV0_INODE_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %15, align 8
  %62 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = bitcast i8* %65 to %struct.ext2fs_extattr_dinode_header*
  store %struct.ext2fs_extattr_dinode_header* %66, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %67 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %68 = getelementptr inbounds %struct.ext2fs_extattr_dinode_header, %struct.ext2fs_extattr_dinode_header* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EXTATTR_MAGIC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %40
  %73 = load %struct.buf*, %struct.buf** %9, align 8
  %74 = call i32 @brelse(%struct.buf* %73)
  %75 = load i32, i32* @ENOATTR, align 4
  store i32 %75, i32* %4, align 4
  br label %208

76:                                               ; preds = %40
  %77 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %78 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %77)
  %79 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %15, align 8
  %80 = bitcast %struct.ext2fs_dinode* %79 to i8*
  %81 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %82 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = call i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry* %78, i8* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load %struct.buf*, %struct.buf** %9, align 8
  %90 = call i32 @brelse(%struct.buf* %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %4, align 4
  br label %208

92:                                               ; preds = %76
  %93 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %94 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %93)
  store %struct.ext2fs_extattr_entry* %94, %struct.ext2fs_extattr_entry** %11, align 8
  %95 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %96 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %95)
  %97 = call i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %92
  %100 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %101 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %99
  %107 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %108 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %111 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %114 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @ext2_extattr_name_to_bsd(i32 %112, i32 %115, i32* %13)
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %106
  %120 = load %struct.buf*, %struct.buf** %9, align 8
  %121 = call i32 @brelse(%struct.buf* %120)
  %122 = load i32, i32* @ENOTSUP, align 4
  store i32 %122, i32* %4, align 4
  br label %208

123:                                              ; preds = %106
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @strncmp(i8* %129, i8* %130, i32 %131)
  %133 = icmp eq i64 0, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %136 = call i32 @memset(%struct.ext2fs_extattr_dinode_header* %135, i32 0, i32 8)
  %137 = load %struct.buf*, %struct.buf** %9, align 8
  %138 = call i32 @bwrite(%struct.buf* %137)
  store i32 %138, i32* %4, align 4
  br label %208

139:                                              ; preds = %128, %123
  br label %140

140:                                              ; preds = %139, %99, %92
  %141 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %142 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %141)
  store %struct.ext2fs_extattr_entry* %142, %struct.ext2fs_extattr_entry** %11, align 8
  br label %143

143:                                              ; preds = %201, %140
  %144 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %145 = call i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %144)
  %146 = icmp ne i64 %145, 0
  %147 = xor i1 %146, true
  br i1 %147, label %148, label %204

148:                                              ; preds = %143
  %149 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %150 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %201

156:                                              ; preds = %148
  %157 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %158 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %13, align 4
  %160 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %161 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %164 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @ext2_extattr_name_to_bsd(i32 %162, i32 %165, i32* %13)
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %156
  %170 = load %struct.buf*, %struct.buf** %9, align 8
  %171 = call i32 @brelse(%struct.buf* %170)
  %172 = load i32, i32* @ENOTSUP, align 4
  store i32 %172, i32* %4, align 4
  br label %208

173:                                              ; preds = %156
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %173
  %179 = load i8*, i8** %12, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i64 @strncmp(i8* %179, i8* %180, i32 %181)
  %183 = icmp eq i64 0, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %178
  %185 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %186 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %185)
  %187 = bitcast %struct.ext2fs_extattr_entry* %186 to i8*
  %188 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %10, align 8
  %189 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %188)
  %190 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %191 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %15, align 8
  %192 = bitcast %struct.ext2fs_dinode* %191 to i8*
  %193 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %194 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %193)
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = call i32 @ext2_extattr_delete_entry(i8* %187, %struct.ext2fs_extattr_entry* %189, %struct.ext2fs_extattr_entry* %190, i8* %196)
  %198 = load %struct.buf*, %struct.buf** %9, align 8
  %199 = call i32 @bwrite(%struct.buf* %198)
  store i32 %199, i32* %4, align 4
  br label %208

200:                                              ; preds = %178, %173
  br label %201

201:                                              ; preds = %200, %155
  %202 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %203 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %202)
  store %struct.ext2fs_extattr_entry* %203, %struct.ext2fs_extattr_entry** %11, align 8
  br label %143

204:                                              ; preds = %143
  %205 = load %struct.buf*, %struct.buf** %9, align 8
  %206 = call i32 @brelse(%struct.buf* %205)
  %207 = load i32, i32* @ENOATTR, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %204, %184, %169, %134, %119, %88, %72, %36
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ino_to_fsbo(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry*, i8*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header*) #1

declare dso_local i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_bsd(i32) #1

declare dso_local i8* @ext2_extattr_name_to_bsd(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.ext2fs_extattr_dinode_header*, i32, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_extattr_delete_entry(i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
