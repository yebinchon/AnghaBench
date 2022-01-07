; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.uio = type { i32 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_header = type { i64, i32 }
%struct.ext2fs_extattr_entry = type { i32, i64, i64, i32, i32 }

@NOCRED = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_block_get(%struct.inode* %0, i32 %1, i8* %2, %struct.uio* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.m_ext2fs*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.ext2fs_extattr_header*, align 8
  %15 = alloca %struct.ext2fs_extattr_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.uio* %3, %struct.uio** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %20, align 8
  store %struct.m_ext2fs* %21, %struct.m_ext2fs** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fsbtodb(%struct.m_ext2fs* %25, i32 %28)
  %30 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %31 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NOCRED, align 4
  %34 = call i32 @bread(i32 %24, i32 %29, i32 %32, i32 %33, %struct.buf** %13)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %6, align 4
  br label %148

39:                                               ; preds = %5
  %40 = load %struct.buf*, %struct.buf** %13, align 8
  %41 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %40)
  store %struct.ext2fs_extattr_header* %41, %struct.ext2fs_extattr_header** %14, align 8
  %42 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %14, align 8
  %43 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXTATTR_MAGIC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %14, align 8
  %49 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %47, %39
  %53 = load %struct.buf*, %struct.buf** %13, align 8
  %54 = call i32 @brelse(%struct.buf* %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %6, align 4
  br label %148

56:                                               ; preds = %47
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = load %struct.buf*, %struct.buf** %13, align 8
  %59 = call i32 @ext2_extattr_block_check(%struct.inode* %57, %struct.buf* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.buf*, %struct.buf** %13, align 8
  %64 = call i32 @brelse(%struct.buf* %63)
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %6, align 4
  br label %148

66:                                               ; preds = %56
  %67 = load %struct.buf*, %struct.buf** %13, align 8
  %68 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %67)
  store %struct.ext2fs_extattr_entry* %68, %struct.ext2fs_extattr_entry** %15, align 8
  br label %69

69:                                               ; preds = %141, %66
  %70 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %71 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %144

74:                                               ; preds = %69
  %75 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %76 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %141

82:                                               ; preds = %74
  %83 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %84 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %17, align 4
  %86 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %87 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %90 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @ext2_extattr_name_to_bsd(i32 %88, i32 %91, i32* %17)
  store i8* %92, i8** %16, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %82
  %96 = load %struct.buf*, %struct.buf** %13, align 8
  %97 = call i32 @brelse(%struct.buf* %96)
  %98 = load i32, i32* @ENOTSUP, align 4
  store i32 %98, i32* %6, align 4
  br label %148

99:                                               ; preds = %82
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = load i32, i32* %17, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %99
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i64 @strncmp(i8* %105, i8* %106, i32 %107)
  %109 = icmp eq i64 0, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load i64*, i64** %11, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %115 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %116
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %113, %110
  %121 = load %struct.uio*, %struct.uio** %10, align 8
  %122 = icmp ne %struct.uio* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.buf*, %struct.buf** %13, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %128 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %132 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.uio*, %struct.uio** %10, align 8
  %135 = call i32 @uiomove(i64 %130, i64 %133, %struct.uio* %134)
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %123, %120
  %137 = load %struct.buf*, %struct.buf** %13, align 8
  %138 = call i32 @brelse(%struct.buf* %137)
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %6, align 4
  br label %148

140:                                              ; preds = %104, %99
  br label %141

141:                                              ; preds = %140, %81
  %142 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %15, align 8
  %143 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %142)
  store %struct.ext2fs_extattr_entry* %143, %struct.ext2fs_extattr_entry** %15, align 8
  br label %69

144:                                              ; preds = %69
  %145 = load %struct.buf*, %struct.buf** %13, align 8
  %146 = call i32 @brelse(%struct.buf* %145)
  %147 = load i32, i32* @ENOATTR, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %144, %136, %95, %62, %52, %37
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_extattr_block_check(%struct.inode*, %struct.buf*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf*) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_bsd(i32) #1

declare dso_local i8* @ext2_extattr_name_to_bsd(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @uiomove(i64, i64, %struct.uio*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
