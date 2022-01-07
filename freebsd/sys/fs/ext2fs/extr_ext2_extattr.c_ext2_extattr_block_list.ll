; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.uio = type { i32 }
%struct.buf = type { i32 }
%struct.ext2fs_extattr_header = type { i64, i32 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }

@NOCRED = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_block_list(%struct.inode* %0, i32 %1, %struct.uio* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.ext2fs_extattr_header*, align 8
  %13 = alloca %struct.ext2fs_extattr_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uio* %2, %struct.uio** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %19, align 8
  store %struct.m_ext2fs* %20, %struct.m_ext2fs** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fsbtodb(%struct.m_ext2fs* %24, i32 %27)
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NOCRED, align 4
  %33 = call i32 @bread(i32 %23, i32 %28, i32 %31, i32 %32, %struct.buf** %11)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %5, align 4
  br label %146

38:                                               ; preds = %4
  %39 = load %struct.buf*, %struct.buf** %11, align 8
  %40 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %39)
  store %struct.ext2fs_extattr_header* %40, %struct.ext2fs_extattr_header** %12, align 8
  %41 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %42 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EXTATTR_MAGIC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %12, align 8
  %48 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %38
  %52 = load %struct.buf*, %struct.buf** %11, align 8
  %53 = call i32 @brelse(%struct.buf* %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %146

55:                                               ; preds = %46
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = load %struct.buf*, %struct.buf** %11, align 8
  %58 = call i32 @ext2_extattr_block_check(%struct.inode* %56, %struct.buf* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.buf*, %struct.buf** %11, align 8
  %63 = call i32 @brelse(%struct.buf* %62)
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %5, align 4
  br label %146

65:                                               ; preds = %55
  %66 = load %struct.buf*, %struct.buf** %11, align 8
  %67 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %66)
  store %struct.ext2fs_extattr_entry* %67, %struct.ext2fs_extattr_entry** %13, align 8
  br label %68

68:                                               ; preds = %139, %65
  %69 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %70 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %142

73:                                               ; preds = %68
  %74 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %75 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %139

81:                                               ; preds = %73
  %82 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %83 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  %85 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %86 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %89 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ext2_extattr_name_to_bsd(i32 %87, i32 %90, i32* %15)
  store i8* %91, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %81
  %95 = load %struct.buf*, %struct.buf** %11, align 8
  %96 = call i32 @brelse(%struct.buf* %95)
  %97 = load i32, i32* @ENOTSUP, align 4
  store i32 %97, i32* %5, align 4
  br label %146

98:                                               ; preds = %81
  %99 = load i64*, i64** %9, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %9, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.uio*, %struct.uio** %8, align 8
  %110 = icmp ne %struct.uio* %109, null
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @M_TEMP, align 4
  %115 = load i32, i32* @M_WAITOK, align 4
  %116 = call i8* @malloc(i32 %113, i32 %114, i32 %115)
  store i8* %116, i8** %17, align 8
  %117 = load i32, i32* %15, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %17, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i8*, i8** %17, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @memcpy(i8* %122, i8* %123, i32 %124)
  %126 = load i8*, i8** %17, align 8
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.uio*, %struct.uio** %8, align 8
  %130 = call i32 @uiomove(i8* %126, i32 %128, %struct.uio* %129)
  store i32 %130, i32* %16, align 4
  %131 = load i8*, i8** %17, align 8
  %132 = load i32, i32* @M_TEMP, align 4
  %133 = call i32 @free(i8* %131, i32 %132)
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %111
  br label %142

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %108
  br label %139

139:                                              ; preds = %138, %80
  %140 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %141 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %140)
  store %struct.ext2fs_extattr_entry* %141, %struct.ext2fs_extattr_entry** %13, align 8
  br label %68

142:                                              ; preds = %136, %68
  %143 = load %struct.buf*, %struct.buf** %11, align 8
  %144 = call i32 @brelse(%struct.buf* %143)
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %142, %94, %61, %51, %36
  %147 = load i32, i32* %5, align 4
  ret i32 %147
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
