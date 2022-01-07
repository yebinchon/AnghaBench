; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_inode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.uio = type { i32 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_dinode_header = type { i64 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }
%struct.ext2fs_dinode = type { i32 }

@NOCRED = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_inode_list(%struct.inode* %0, i32 %1, %struct.uio* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.ext2fs_extattr_dinode_header*, align 8
  %13 = alloca %struct.ext2fs_extattr_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext2fs_dinode*, align 8
  %18 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uio* %2, %struct.uio** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %20, align 8
  store %struct.m_ext2fs* %21, %struct.m_ext2fs** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %26 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ino_to_fsba(%struct.m_ext2fs* %26, i32 %29)
  %31 = call i32 @fsbtodb(%struct.m_ext2fs* %25, i32 %30)
  %32 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %33 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @NOCRED, align 4
  %37 = call i32 @bread(i32 %24, i32 %31, i32 %35, i32 %36, %struct.buf** %11)
  store i32 %37, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load %struct.buf*, %struct.buf** %11, align 8
  %41 = call i32 @brelse(%struct.buf* %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %175

43:                                               ; preds = %4
  %44 = load %struct.buf*, %struct.buf** %11, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %49 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %48)
  %50 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ino_to_fsbo(%struct.m_ext2fs* %50, i32 %53)
  %55 = mul nsw i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %47, i64 %56
  %58 = bitcast i8* %57 to %struct.ext2fs_dinode*
  store %struct.ext2fs_dinode* %58, %struct.ext2fs_dinode** %17, align 8
  %59 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %17, align 8
  %60 = bitcast %struct.ext2fs_dinode* %59 to i8*
  %61 = load i32, i32* @E2FS_REV0_INODE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %17, align 8
  %65 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = bitcast i8* %68 to %struct.ext2fs_extattr_dinode_header*
  store %struct.ext2fs_extattr_dinode_header* %69, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %70 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %71 = getelementptr inbounds %struct.ext2fs_extattr_dinode_header, %struct.ext2fs_extattr_dinode_header* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXTATTR_MAGIC, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %43
  %76 = load %struct.buf*, %struct.buf** %11, align 8
  %77 = call i32 @brelse(%struct.buf* %76)
  store i32 0, i32* %5, align 4
  br label %175

78:                                               ; preds = %43
  %79 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %80 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %79)
  %81 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %17, align 8
  %82 = bitcast %struct.ext2fs_dinode* %81 to i8*
  %83 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %84 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = call i32 @ext2_extattr_check(%struct.ext2fs_extattr_entry* %80, i8* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.buf*, %struct.buf** %11, align 8
  %92 = call i32 @brelse(%struct.buf* %91)
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %175

94:                                               ; preds = %78
  %95 = load %struct.ext2fs_extattr_dinode_header*, %struct.ext2fs_extattr_dinode_header** %12, align 8
  %96 = call %struct.ext2fs_extattr_entry* @EXT2_IFIRST(%struct.ext2fs_extattr_dinode_header* %95)
  store %struct.ext2fs_extattr_entry* %96, %struct.ext2fs_extattr_entry** %13, align 8
  br label %97

97:                                               ; preds = %168, %94
  %98 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %99 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br i1 %101, label %102, label %171

102:                                              ; preds = %97
  %103 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %104 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %168

110:                                              ; preds = %102
  %111 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %112 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %15, align 4
  %114 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %115 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %118 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @ext2_extattr_name_to_bsd(i32 %116, i32 %119, i32* %15)
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %110
  %124 = load %struct.buf*, %struct.buf** %11, align 8
  %125 = call i32 @brelse(%struct.buf* %124)
  %126 = load i32, i32* @ENOTSUP, align 4
  store i32 %126, i32* %5, align 4
  br label %175

127:                                              ; preds = %110
  %128 = load i64*, i64** %9, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %133
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %130, %127
  %138 = load %struct.uio*, %struct.uio** %8, align 8
  %139 = icmp ne %struct.uio* %138, null
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* @M_TEMP, align 4
  %144 = load i32, i32* @M_WAITOK, align 4
  %145 = call i8* @malloc(i32 %142, i32 %143, i32 %144)
  store i8* %145, i8** %18, align 8
  %146 = load i32, i32* %15, align 4
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %18, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  store i8 %147, i8* %149, align 1
  %150 = load i8*, i8** %18, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8*, i8** %14, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @memcpy(i8* %151, i8* %152, i32 %153)
  %155 = load i8*, i8** %18, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  %158 = load %struct.uio*, %struct.uio** %8, align 8
  %159 = call i32 @uiomove(i8* %155, i32 %157, %struct.uio* %158)
  store i32 %159, i32* %16, align 4
  %160 = load i8*, i8** %18, align 8
  %161 = load i32, i32* @M_TEMP, align 4
  %162 = call i32 @free(i8* %160, i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %140
  br label %171

166:                                              ; preds = %140
  br label %167

167:                                              ; preds = %166, %137
  br label %168

168:                                              ; preds = %167, %109
  %169 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %170 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %169)
  store %struct.ext2fs_extattr_entry* %170, %struct.ext2fs_extattr_entry** %13, align 8
  br label %97

171:                                              ; preds = %165, %97
  %172 = load %struct.buf*, %struct.buf** %11, align 8
  %173 = call i32 @brelse(%struct.buf* %172)
  %174 = load i32, i32* %16, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %171, %123, %90, %75, %39
  %176 = load i32, i32* %5, align 4
  ret i32 %176
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

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
