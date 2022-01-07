; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_get_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.m_ext2fs*, i64, i32, i32 }
%struct.m_ext2fs = type { i32 }
%struct.ucred = type { i32 }
%struct.buf = type { i32 }
%struct.ext4_extent_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i64, i64 }

@EXT4_EXT_CACHE_IN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EXT4_MAX_LEN = common dso_local global i64 0, align 8
@M_EXT2EXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_get_blocks(%struct.inode* %0, i64 %1, i64 %2, %struct.ucred* %3, %struct.buf** %4, i32* %5, i64* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.buf**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.m_ext2fs*, align 8
  %16 = alloca %struct.buf*, align 8
  %17 = alloca %struct.ext4_extent_path*, align 8
  %18 = alloca %struct.ext4_extent, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ucred* %3, %struct.ucred** %11, align 8
  store %struct.buf** %4, %struct.buf*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64* %6, i64** %14, align 8
  store %struct.buf* null, %struct.buf** %16, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %28 = load %struct.buf**, %struct.buf*** %12, align 8
  %29 = icmp ne %struct.buf** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* null, %struct.buf** %31, align 8
  br label %32

32:                                               ; preds = %30, %7
  %33 = load i32*, i32** %13, align 8
  store i32 0, i32* %33, align 4
  store %struct.ext4_extent_path* null, %struct.ext4_extent_path** %17, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @ext4_ext_in_cache(%struct.inode* %34, i64 %35, %struct.ext4_extent* %18)
  store i64 %36, i64* %20, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @EXT4_EXT_CACHE_IN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %18)
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %21, align 8
  %49 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %51, %53
  %55 = sub nsw i64 %50, %54
  store i64 %55, i64* %22, align 8
  br label %179

56:                                               ; preds = %38
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %23, align 4
  br label %213

58:                                               ; preds = %32
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @ext4_ext_find_extent(%struct.inode* %59, i64 %60, %struct.ext4_extent_path** %17)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %213

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i32 @ext4_ext_inode_depth(%struct.inode* %66)
  store i32 %67, i32* %24, align 4
  %68 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %69 = load i32, i32* %24, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %71, i32 0, i32 0
  %73 = load %struct.ext4_extent*, %struct.ext4_extent** %72, align 8
  %74 = icmp eq %struct.ext4_extent* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %24, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %23, align 4
  br label %213

80:                                               ; preds = %75, %65
  %81 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %82 = load i32, i32* %24, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %81, i64 %83
  %85 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %84, i32 0, i32 0
  %86 = load %struct.ext4_extent*, %struct.ext4_extent** %85, align 8
  store %struct.ext4_extent* %86, %struct.ext4_extent** %19, align 8
  %87 = icmp ne %struct.ext4_extent* %86, null
  br i1 %87, label %88, label %129

88:                                               ; preds = %80
  %89 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %90 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %25, align 8
  %92 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %93 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %26, align 8
  %95 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %96 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %95)
  store i64 %96, i64* %27, align 8
  %97 = load i64, i64* %26, align 8
  %98 = load i64, i64* @EXT4_MAX_LEN, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %213

101:                                              ; preds = %88
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %25, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %25, align 8
  %108 = load i64, i64* %26, align 8
  %109 = add nsw i64 %107, %108
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %25, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load i64, i64* %27, align 8
  %116 = add nsw i64 %114, %115
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %26, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %25, align 8
  %120 = sub nsw i64 %118, %119
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %22, align 8
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load i64, i64* %26, align 8
  %125 = load i64, i64* %27, align 8
  %126 = load i64, i64* @EXT4_EXT_CACHE_IN, align 8
  %127 = call i32 @ext4_ext_put_in_cache(%struct.inode* %122, i64 %123, i64 %124, i64 %125, i64 %126)
  br label %179

128:                                              ; preds = %105, %101
  br label %129

129:                                              ; preds = %128, %80
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @S_ISREG(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %135, %129
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @ext4_ext_blkpref(%struct.inode* %144, %struct.ext4_extent_path* %145, i64 %146)
  store i64 %147, i64* %20, align 8
  %148 = load i64, i64* %10, align 8
  store i64 %148, i64* %22, align 8
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %20, align 8
  %152 = load %struct.ucred*, %struct.ucred** %11, align 8
  %153 = call i64 @ext4_new_blocks(%struct.inode* %149, i64 %150, i64 %151, %struct.ucred* %152, i64* %22, i32* %23)
  store i64 %153, i64* %21, align 8
  %154 = load i64, i64* %21, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %143
  br label %213

157:                                              ; preds = %143
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  store i64 %158, i64* %159, align 8
  %160 = load i64, i64* %21, align 8
  %161 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %18, i64 %160)
  %162 = load i64, i64* %22, align 8
  %163 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 1
  store i64 %162, i64* %163, align 8
  %164 = load %struct.inode*, %struct.inode** %8, align 8
  %165 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %166 = call i32 @ext4_ext_insert_extent(%struct.inode* %164, %struct.ext4_extent_path* %165, %struct.ext4_extent* %18)
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %23, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %213

170:                                              ; preds = %157
  %171 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %18)
  store i64 %171, i64* %21, align 8
  %172 = load %struct.inode*, %struct.inode** %8, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i64, i64* @EXT4_EXT_CACHE_IN, align 8
  %177 = call i32 @ext4_ext_put_in_cache(%struct.inode* %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i32*, i32** %13, align 8
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %111, %42
  %180 = load i64, i64* %22, align 8
  %181 = load i64, i64* %10, align 8
  %182 = icmp ugt i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* %10, align 8
  store i64 %184, i64* %22, align 8
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.buf**, %struct.buf*** %12, align 8
  %187 = icmp ne %struct.buf** %186, null
  br i1 %187, label %188, label %212

188:                                              ; preds = %185
  %189 = load %struct.inode*, %struct.inode** %8, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 1
  %191 = load %struct.m_ext2fs*, %struct.m_ext2fs** %190, align 8
  store %struct.m_ext2fs* %191, %struct.m_ext2fs** %15, align 8
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %196 = load i64, i64* %21, align 8
  %197 = call i32 @fsbtodb(%struct.m_ext2fs* %195, i64 %196)
  %198 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %199 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ucred*, %struct.ucred** %11, align 8
  %202 = call i32 @bread(i32 %194, i32 %197, i32 %200, %struct.ucred* %201, %struct.buf** %16)
  store i32 %202, i32* %23, align 4
  %203 = load i32, i32* %23, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %188
  %206 = load %struct.buf*, %struct.buf** %16, align 8
  %207 = call i32 @brelse(%struct.buf* %206)
  br label %211

208:                                              ; preds = %188
  %209 = load %struct.buf*, %struct.buf** %16, align 8
  %210 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %209, %struct.buf** %210, align 8
  br label %211

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %211, %185
  br label %213

213:                                              ; preds = %212, %169, %156, %100, %78, %64, %56
  %214 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %215 = icmp ne %struct.ext4_extent_path* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %218 = call i32 @ext4_ext_drop_refs(%struct.ext4_extent_path* %217)
  %219 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %17, align 8
  %220 = load i32, i32* @M_EXT2EXTENTS, align 4
  %221 = call i32 @free(%struct.ext4_extent_path* %219, i32 %220)
  br label %222

222:                                              ; preds = %216, %213
  %223 = load i64*, i64** %14, align 8
  %224 = icmp ne i64* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i64, i64* %21, align 8
  %227 = load i64*, i64** %14, align 8
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32, i32* %23, align 4
  ret i32 %229
}

declare dso_local i64 @ext4_ext_in_cache(%struct.inode*, i64, %struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_extent_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_find_extent(%struct.inode*, i64, %struct.ext4_extent_path**) #1

declare dso_local i32 @ext4_ext_inode_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_put_in_cache(%struct.inode*, i64, i64, i64, i64) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @ext4_ext_blkpref(%struct.inode*, %struct.ext4_extent_path*, i64) #1

declare dso_local i64 @ext4_new_blocks(%struct.inode*, i64, i64, %struct.ucred*, i64*, i32*) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_insert_extent(%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*) #1

declare dso_local i32 @bread(i32, i32, i32, %struct.ucred*, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_extent_path*) #1

declare dso_local i32 @free(%struct.ext4_extent_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
