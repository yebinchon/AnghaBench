; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_blkpref_ufs2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_blkpref_ufs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.fs* }
%struct.fs = type { i32, i32, i32, i32, i32 (%struct.fs*, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@UFS_NDADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_blkpref_ufs2(%struct.inode* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.fs*, %struct.fs** %17, align 8
  store %struct.fs* %18, %struct.fs** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.fs*, %struct.fs** %10, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load i64*, i64** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %170

33:                                               ; preds = %25, %4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @UFS_NDADDR, align 4
  %36 = load %struct.fs*, %struct.fs** %10, align 8
  %37 = call i32 @NINDIR(%struct.fs* %36)
  %38 = add nsw i32 %35, %37
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.fs*, %struct.fs** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ino_to_cg(%struct.fs* %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.fs*, %struct.fs** %10, align 8
  %47 = getelementptr inbounds %struct.fs, %struct.fs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.fs*, %struct.fs** %10, align 8
  %52 = getelementptr inbounds %struct.fs, %struct.fs* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %5, align 4
  br label %184

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %58, %55
  %67 = load %struct.fs*, %struct.fs** %10, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ino_to_cg(%struct.fs* %67, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.fs*, %struct.fs** %10, align 8
  %74 = getelementptr inbounds %struct.fs, %struct.fs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %72, %75
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %12, align 4
  br label %91

78:                                               ; preds = %58
  %79 = load %struct.fs*, %struct.fs** %10, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fs*, %struct.fs** %10, align 8
  %87 = call i32 @UFS_FSNEEDSWAP(%struct.fs* %86)
  %88 = call i32 @ufs_rw64(i64 %85, i32 %87)
  %89 = add nsw i32 %88, 1
  %90 = call i32 @dtog(%struct.fs* %79, i32 %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %78, %66
  %92 = load %struct.fs*, %struct.fs** %10, align 8
  %93 = getelementptr inbounds %struct.fs, %struct.fs* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = srem i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load %struct.fs*, %struct.fs** %10, align 8
  %98 = getelementptr inbounds %struct.fs, %struct.fs* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.fs*, %struct.fs** %10, align 8
  %102 = getelementptr inbounds %struct.fs, %struct.fs* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %100, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %135, %91
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.fs*, %struct.fs** %10, align 8
  %109 = getelementptr inbounds %struct.fs, %struct.fs* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load %struct.fs*, %struct.fs** %10, align 8
  %114 = getelementptr inbounds %struct.fs, %struct.fs* %113, i32 0, i32 4
  %115 = load i32 (%struct.fs*, i32)*, i32 (%struct.fs*, i32)** %114, align 8
  %116 = load %struct.fs*, %struct.fs** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 %115(%struct.fs* %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %112
  %125 = load %struct.fs*, %struct.fs** %10, align 8
  %126 = getelementptr inbounds %struct.fs, %struct.fs* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.fs*, %struct.fs** %10, align 8
  %131 = getelementptr inbounds %struct.fs, %struct.fs* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %5, align 4
  br label %184

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %106

138:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %166, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = load %struct.fs*, %struct.fs** %10, align 8
  %145 = getelementptr inbounds %struct.fs, %struct.fs* %144, i32 0, i32 4
  %146 = load i32 (%struct.fs*, i32)*, i32 (%struct.fs*, i32)** %145, align 8
  %147 = load %struct.fs*, %struct.fs** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 %146(%struct.fs* %147, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load %struct.fs*, %struct.fs** %10, align 8
  %157 = getelementptr inbounds %struct.fs, %struct.fs* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load %struct.fs*, %struct.fs** %10, align 8
  %162 = getelementptr inbounds %struct.fs, %struct.fs* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %160, %163
  store i32 %164, i32* %5, align 4
  br label %184

165:                                              ; preds = %143
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %139

169:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %184

170:                                              ; preds = %25
  %171 = load i64*, i64** %9, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.fs*, %struct.fs** %10, align 8
  %178 = call i32 @UFS_FSNEEDSWAP(%struct.fs* %177)
  %179 = call i32 @ufs_rw64(i64 %176, i32 %178)
  %180 = load %struct.fs*, %struct.fs** %10, align 8
  %181 = getelementptr inbounds %struct.fs, %struct.fs* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %179, %182
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %170, %169, %155, %124, %40
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @NINDIR(%struct.fs*) #1

declare dso_local i32 @ino_to_cg(%struct.fs*, i32) #1

declare dso_local i32 @dtog(%struct.fs*, i32) #1

declare dso_local i32 @ufs_rw64(i64, i32) #1

declare dso_local i32 @UFS_FSNEEDSWAP(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
