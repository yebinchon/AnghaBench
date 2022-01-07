; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_block_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_block_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.buf = type { i32 }

@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT2F_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_ext2fs*, i32, %struct.buf*)* @ext2_cg_block_bitmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_cg_block_bitmap_init(%struct.m_ext2fs* %0, i32 %1, %struct.buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buf* %2, %struct.buf** %7, align 8
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %14 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %205

25:                                               ; preds = %3
  %26 = load %struct.buf*, %struct.buf** %7, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memset(i32 %28, i32 0, i32 %31)
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ext2_number_base_meta_blocks(%struct.m_ext2fs* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 3
  %38 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %39 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %205

44:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.buf*, %struct.buf** %7, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @setbit(i32 %52, i64 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %63 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = mul nsw i64 %61, %66
  %68 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %69 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  store i64 %73, i64* %11, align 8
  %74 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %75 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = call i64 @e2fs_gd_get_b_bitmap(%struct.TYPE_6__* %79)
  store i64 %80, i64* %12, align 8
  %81 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %82 = load i32, i32* @EXT2F_INCOMPAT_FLEX_BG, align 4
  %83 = call i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %59
  %86 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @ext2_block_in_group(%struct.m_ext2fs* %86, i64 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85, %59
  %92 = load %struct.buf*, %struct.buf** %7, align 8
  %93 = getelementptr inbounds %struct.buf, %struct.buf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i32 @setbit(i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %91, %85
  %100 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %101 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = call i64 @e2fs_gd_get_i_bitmap(%struct.TYPE_6__* %105)
  store i64 %106, i64* %12, align 8
  %107 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %108 = load i32, i32* @EXT2F_INCOMPAT_FLEX_BG, align 4
  %109 = call i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %99
  %112 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @ext2_block_in_group(%struct.m_ext2fs* %112, i64 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111, %99
  %118 = load %struct.buf*, %struct.buf** %7, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub nsw i64 %121, %122
  %124 = call i32 @setbit(i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %117, %111
  %126 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %127 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = call i64 @e2fs_gd_get_i_tables(%struct.TYPE_6__* %131)
  store i64 %132, i64* %12, align 8
  %133 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %134 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %137 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %136)
  %138 = sdiv i32 %135, %137
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %177, %125
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %142 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = call i64 @e2fs_gd_get_i_tables(%struct.TYPE_6__* %146)
  %148 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %149 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sdiv i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %147, %155
  %157 = icmp slt i64 %140, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %139
  %159 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %160 = load i32, i32* @EXT2F_INCOMPAT_FLEX_BG, align 4
  %161 = call i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i64 @ext2_block_in_group(%struct.m_ext2fs* %164, i64 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163, %158
  %170 = load %struct.buf*, %struct.buf** %7, align 8
  %171 = getelementptr inbounds %struct.buf, %struct.buf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %11, align 8
  %175 = sub nsw i64 %173, %174
  %176 = call i32 @setbit(i32 %172, i64 %175)
  br label %177

177:                                              ; preds = %169, %163
  %178 = load i64, i64* %12, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %12, align 8
  br label %139

180:                                              ; preds = %139
  %181 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %182 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %187 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %188, 8
  %190 = load %struct.buf*, %struct.buf** %7, align 8
  %191 = getelementptr inbounds %struct.buf, %struct.buf* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ext2_mark_bitmap_end(i64 %185, i32 %189, i32 %192)
  %194 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %195 = xor i32 %194, -1
  %196 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %197 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, %195
  store i32 %204, i32* %202, align 4
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %180, %42, %24
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext2_number_base_meta_blocks(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @setbit(i32, i64) #1

declare dso_local i64 @e2fs_gd_get_b_bitmap(%struct.TYPE_6__*) #1

declare dso_local i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @ext2_block_in_group(%struct.m_ext2fs*, i64, i32) #1

declare dso_local i64 @e2fs_gd_get_i_bitmap(%struct.TYPE_6__*) #1

declare dso_local i64 @e2fs_gd_get_i_tables(%struct.TYPE_6__*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ext2_mark_bitmap_end(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
