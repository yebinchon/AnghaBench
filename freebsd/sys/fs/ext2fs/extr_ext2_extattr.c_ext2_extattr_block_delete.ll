; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.buf = type { i64, i64 }
%struct.ext2fs_extattr_header = type { i64, i32, i32 }
%struct.ext2fs_extattr_entry = type { i32, i32, i32 }

@NOCRED = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_block_delete(%struct.inode* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.m_ext2fs*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.ext2fs_extattr_header*, align 8
  %11 = alloca %struct.ext2fs_extattr_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 4
  %17 = load %struct.m_ext2fs*, %struct.m_ext2fs** %16, align 8
  store %struct.m_ext2fs* %17, %struct.m_ext2fs** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fsbtodb(%struct.m_ext2fs* %21, i32 %24)
  %26 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %27 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NOCRED, align 4
  %30 = call i32 @bread(i32 %20, i32 %25, i32 %28, i32 %29, %struct.buf** %9)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %217

35:                                               ; preds = %3
  %36 = load %struct.buf*, %struct.buf** %9, align 8
  %37 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %36)
  store %struct.ext2fs_extattr_header* %37, %struct.ext2fs_extattr_header** %10, align 8
  %38 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %10, align 8
  %39 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXTATTR_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %10, align 8
  %45 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %35
  %49 = load %struct.buf*, %struct.buf** %9, align 8
  %50 = call i32 @brelse(%struct.buf* %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %217

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load %struct.buf*, %struct.buf** %9, align 8
  %55 = call i32 @ext2_extattr_block_check(%struct.inode* %53, %struct.buf* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.buf*, %struct.buf** %9, align 8
  %60 = call i32 @brelse(%struct.buf* %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %4, align 4
  br label %217

62:                                               ; preds = %52
  %63 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %10, align 8
  %64 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @ext2_extattr_block_clone(%struct.inode* %68, %struct.buf** %9)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.buf*, %struct.buf** %9, align 8
  %74 = call i32 @brelse(%struct.buf* %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %217

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.buf*, %struct.buf** %9, align 8
  %79 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %78)
  store %struct.ext2fs_extattr_entry* %79, %struct.ext2fs_extattr_entry** %11, align 8
  %80 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %81 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %80)
  %82 = call i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %148

84:                                               ; preds = %77
  %85 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %86 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %148

91:                                               ; preds = %84
  %92 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %93 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %96 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %99 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @ext2_extattr_name_to_bsd(i32 %97, i32 %100, i32* %13)
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %91
  %105 = load %struct.buf*, %struct.buf** %9, align 8
  %106 = call i32 @brelse(%struct.buf* %105)
  %107 = load i32, i32* @ENOTSUP, align 4
  store i32 %107, i32* %4, align 4
  br label %217

108:                                              ; preds = %91
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %108
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @strncmp(i8* %114, i8* %115, i32 %116)
  %118 = icmp eq i64 0, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %121 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @btodb(i32 %122)
  %124 = load %struct.inode*, %struct.inode** %5, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %135 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ext2_blkfree(%struct.inode* %130, i32 %133, i32 %136)
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ext2_update(i32 %142, i32 1)
  store i32 %143, i32* %14, align 4
  %144 = load %struct.buf*, %struct.buf** %9, align 8
  %145 = call i32 @brelse(%struct.buf* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %4, align 4
  br label %217

147:                                              ; preds = %113, %108
  br label %148

148:                                              ; preds = %147, %84, %77
  %149 = load %struct.buf*, %struct.buf** %9, align 8
  %150 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %149)
  store %struct.ext2fs_extattr_entry* %150, %struct.ext2fs_extattr_entry** %11, align 8
  br label %151

151:                                              ; preds = %210, %148
  %152 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %153 = call i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %152)
  %154 = icmp ne i64 %153, 0
  %155 = xor i1 %154, true
  br i1 %155, label %156, label %213

156:                                              ; preds = %151
  %157 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %158 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ext2_extattr_attrnamespace_to_bsd(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %210

164:                                              ; preds = %156
  %165 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %166 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %169 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %172 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @ext2_extattr_name_to_bsd(i32 %170, i32 %173, i32* %13)
  store i8* %174, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %164
  %178 = load %struct.buf*, %struct.buf** %9, align 8
  %179 = call i32 @brelse(%struct.buf* %178)
  %180 = load i32, i32* @ENOTSUP, align 4
  store i32 %180, i32* %4, align 4
  br label %217

181:                                              ; preds = %164
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %209

186:                                              ; preds = %181
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %13, align 4
  %190 = call i64 @strncmp(i8* %187, i8* %188, i32 %189)
  %191 = icmp eq i64 0, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %186
  %193 = load %struct.buf*, %struct.buf** %9, align 8
  %194 = getelementptr inbounds %struct.buf, %struct.buf* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.buf*, %struct.buf** %9, align 8
  %197 = call %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf* %196)
  %198 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %199 = load %struct.buf*, %struct.buf** %9, align 8
  %200 = getelementptr inbounds %struct.buf, %struct.buf* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.buf*, %struct.buf** %9, align 8
  %203 = getelementptr inbounds %struct.buf, %struct.buf* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = call i32 @ext2_extattr_delete_entry(i64 %195, %struct.ext2fs_extattr_entry* %197, %struct.ext2fs_extattr_entry* %198, i64 %205)
  %207 = load %struct.buf*, %struct.buf** %9, align 8
  %208 = call i32 @bwrite(%struct.buf* %207)
  store i32 %208, i32* %4, align 4
  br label %217

209:                                              ; preds = %186, %181
  br label %210

210:                                              ; preds = %209, %163
  %211 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %212 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %211)
  store %struct.ext2fs_extattr_entry* %212, %struct.ext2fs_extattr_entry** %11, align 8
  br label %151

213:                                              ; preds = %151
  %214 = load %struct.buf*, %struct.buf** %9, align 8
  %215 = call i32 @brelse(%struct.buf* %214)
  %216 = load i32, i32* @ENOATTR, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %213, %192, %177, %119, %104, %72, %58, %48, %33
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_extattr_block_check(%struct.inode*, %struct.buf*) #1

declare dso_local i32 @ext2_extattr_block_clone(%struct.inode*, %struct.buf**) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_FIRST_ENTRY(%struct.buf*) #1

declare dso_local i64 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_bsd(i32) #1

declare dso_local i8* @ext2_extattr_name_to_bsd(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @btodb(i32) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext2_update(i32, i32) #1

declare dso_local i32 @ext2_extattr_delete_entry(i64, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i64) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
