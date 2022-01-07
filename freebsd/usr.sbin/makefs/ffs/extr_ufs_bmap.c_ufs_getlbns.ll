; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ufs_bmap.c_ufs_getlbns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ufs_bmap.c_ufs_getlbns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.indir = type { i32, i32 }

@UFS_NDADDR = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_getlbns(%struct.inode* %0, i32 %1, %struct.indir* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.indir*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.indir* %2, %struct.indir** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @NINDIR(i32 %20)
  %22 = call i64 @ffs(i32 %21)
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %17, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32*, i32** %9, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %4
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 0, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UFS_NDADDR, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* @UFS_NDADDR, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %47 = load i32, i32* @UFS_NIADDR, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %66, %38
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @EFBIG, align 4
  store i32 %52, i32* %5, align 4
  br label %159

53:                                               ; preds = %48
  %54 = load i64, i64* %17, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %72

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %48

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* @UFS_NIADDR, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %94

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* @UFS_NIADDR, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %84, %75
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.indir*, %struct.indir** %8, align 8
  %97 = getelementptr inbounds %struct.indir, %struct.indir* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @UFS_NIADDR, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %16, align 4
  %101 = load %struct.indir*, %struct.indir** %8, align 8
  %102 = getelementptr inbounds %struct.indir, %struct.indir* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.indir*, %struct.indir** %8, align 8
  %104 = getelementptr inbounds %struct.indir, %struct.indir* %103, i32 1
  store %struct.indir* %104, %struct.indir** %8, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %149, %94
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @UFS_NIADDR, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %152

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %152

116:                                              ; preds = %111
  %117 = load i64, i64* %17, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = shl i32 1, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %13, align 4
  %126 = ashr i32 %124, %125
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @NINDIR(i32 %129)
  %131 = sub nsw i32 %130, 1
  %132 = and i32 %126, %131
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.indir*, %struct.indir** %8, align 8
  %137 = getelementptr inbounds %struct.indir, %struct.indir* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.indir*, %struct.indir** %8, align 8
  %140 = getelementptr inbounds %struct.indir, %struct.indir* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.indir*, %struct.indir** %8, align 8
  %142 = getelementptr inbounds %struct.indir, %struct.indir* %141, i32 1
  store %struct.indir* %142, %struct.indir** %8, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %13, align 4
  %145 = shl i32 %143, %144
  %146 = add nsw i32 -1, %145
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %116
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %107

152:                                              ; preds = %115, %107
  %153 = load i32*, i32** %9, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %152
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %51
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @NINDIR(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
