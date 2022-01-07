; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.uio = type { i32 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_dinode_header = type { i64 }
%struct.ext2fs_extattr_entry = type { i32, i32, i64, i32, i32 }
%struct.ext2fs_dinode = type { i32 }

@NOCRED = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_inode_get(%struct.inode* %0, i32 %1, i8* %2, %struct.uio* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.m_ext2fs*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.ext2fs_extattr_dinode_header*, align 8
  %15 = alloca %struct.ext2fs_extattr_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ext2fs_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.uio* %3, %struct.uio** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load %struct.m_ext2fs*, %struct.m_ext2fs** %21, align 8
  store %struct.m_ext2fs* %22, %struct.m_ext2fs** %12, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ino_to_fsba(%struct.m_ext2fs* %27, i32 %30)
  %32 = call i32 @fsbtodb(%struct.m_ext2fs* %26, i32 %31)
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @NOCRED, align 4
  %38 = call i32 @bread(i32 %25, i32 %32, i32 %36, i32 %37, %struct.buf** %13)
  store i32 %38, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load %struct.buf*, %struct.buf** %13, align 8
  %42 = call i32 @brelse(%struct.buf* %41)
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %6, align 4
  br label %179

44:                                               ; preds = %5
  %45 = load %struct.buf*, %struct.buf** %13, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %50 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %49)
  %51 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
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
  store %struct.ext2fs_extattr_dinode_header* %70, %struct.ext2fs_extattr_dinode_header** %14, align 8
  %71 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %14, align 8
  %72 = getelementptr inbounds %struct.ext2fs_extattr_dinode_header, %struct.ext2fs_extattr_dinode_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EXTATTR_MAGIC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %44
  %77 = load %struct.buf*, %struct.buf** %13, align 8
  %78 = call i32 @brelse(%struct.buf* %77)
  %79 = load i32, i32* @ENOATTR, align 4
  store i32 %79, i32* %6, align 4
  br label %179

80:                                               ; preds = %44
  %81 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %14, align 8
  %82 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %81)
  %83 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %19, align 8
  %84 = bitcast %struct.ext2fs_dinode* %83 to i8*
  %85 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %86 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = call i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry* %82, i8* %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.buf*, %struct.buf** %13, align 8
  %94 = call i32 @brelse(%struct.buf* %93)
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %6, align 4
  br label %179

96:                                               ; preds = %80
  %97 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %14, align 8
  %98 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %97)
  store %struct.ext2fs_extattr_entry* %98, %struct.ext2fs_extattr_entry** %15, align 8
  br label %99

99:                                               ; preds = %172, %96
  %100 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %101 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br i1 %103, label %104, label %175

104:                                              ; preds = %99
  %105 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %106 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %172

112:                                              ; preds = %104
  %113 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %114 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %17, align 4
  %116 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %117 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %120 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @ext2_extattr_name_to_bsd(i32 %118, i32 %121, i32* %17)
  store i8* %122, i8** %16, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %112
  %126 = load %struct.buf*, %struct.buf** %13, align 8
  %127 = call i32 @brelse(%struct.buf* %126)
  %128 = load i32, i32* @ENOTSUP, align 4
  store i32 %128, i32* %6, align 4
  br label %179

129:                                              ; preds = %112
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = load i32, i32* %17, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %129
  %135 = load i8*, i8** %16, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i64 @strncmp(i8* %135, i8* %136, i32 %137)
  %139 = icmp eq i64 0, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %134
  %141 = load i64*, i64** %11, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %145 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %11, align 8
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, %146
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %143, %140
  %151 = load %struct.uio*, %struct.uio** %10, align 8
  %152 = icmp ne %struct.uio* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %14, align 8
  %155 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %154)
  %156 = bitcast %struct.ext2fs_extattr_entry* %155 to i8*
  %157 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %158 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %163 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.uio*, %struct.uio** %10, align 8
  %166 = call i32 @uiomove(i8* %161, i64 %164, %struct.uio* %165)
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %153, %150
  %168 = load %struct.buf*, %struct.buf** %13, align 8
  %169 = call i32 @brelse(%struct.buf* %168)
  %170 = load i32, i32* %18, align 4
  store i32 %170, i32* %6, align 4
  br label %179

171:                                              ; preds = %134, %129
  br label %172

172:                                              ; preds = %171, %111
  %173 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %174 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %173)
  store %struct.ext2fs_extattr_entry* %174, %struct.ext2fs_extattr_entry** %15, align 8
  br label %99

175:                                              ; preds = %99
  %176 = load %struct.buf*, %struct.buf** %13, align 8
  %177 = call i32 @brelse(%struct.buf* %176)
  %178 = load i32, i32* @ENOATTR, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %175, %167, %125, %92, %76, %40
  %180 = load i32, i32* %6, align 4
  ret i32 %180
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

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
