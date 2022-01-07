; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_getlbns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_getlbns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.indir = type { i64, i32 }
%struct.ext2mount = type { i32 }

@EXT2_NDADDR = common dso_local global i64 0, align 8
@EXT2_NIADDR = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_getlbns(%struct.vnode* %0, i64 %1, %struct.indir* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.indir*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ext2mount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.indir* %2, %struct.indir** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ext2mount* @VFSTOEXT2(i32 %20)
  store %struct.ext2mount* %21, %struct.ext2mount** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %4
  store i32 0, i32* %15, align 4
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @EXT2_NDADDR, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %154

38:                                               ; preds = %33
  store i64 1, i64* %10, align 8
  %39 = load i64, i64* @EXT2_NIADDR, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i64, i64* @EXT2_NDADDR, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %60, %38
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EFBIG, align 4
  store i32 %48, i32* %5, align 4
  br label %154

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.ext2mount*, %struct.ext2mount** %13, align 8
  %52 = call i64 @MNINDIR(%struct.ext2mount* %51)
  %53 = mul nsw i64 %50, %52
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %66

58:                                               ; preds = %49
  %59 = load i64, i64* %17, align 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %14, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %44

66:                                               ; preds = %57
  %67 = load i64, i64* %12, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* @EXT2_NIADDR, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %11, align 8
  br label %90

79:                                               ; preds = %66
  %80 = load i64, i64* %12, align 8
  %81 = sub nsw i64 0, %80
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i64, i64* @EXT2_NIADDR, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = sub nsw i64 0, %88
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %79, %69
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.indir*, %struct.indir** %8, align 8
  %93 = getelementptr inbounds %struct.indir, %struct.indir* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* @EXT2_NIADDR, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load %struct.indir*, %struct.indir** %8, align 8
  %100 = getelementptr inbounds %struct.indir, %struct.indir* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.indir*, %struct.indir** %8, align 8
  %102 = getelementptr inbounds %struct.indir, %struct.indir* %101, i32 1
  store %struct.indir* %102, %struct.indir** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %144, %90
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @EXT2_NIADDR, align 8
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %105
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %147

115:                                              ; preds = %110
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = sdiv i64 %116, %117
  %119 = load %struct.ext2mount*, %struct.ext2mount** %13, align 8
  %120 = call i64 @MNINDIR(%struct.ext2mount* %119)
  %121 = srem i64 %118, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.indir*, %struct.indir** %8, align 8
  %127 = getelementptr inbounds %struct.indir, %struct.indir* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.indir*, %struct.indir** %8, align 8
  %130 = getelementptr inbounds %struct.indir, %struct.indir* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.indir*, %struct.indir** %8, align 8
  %132 = getelementptr inbounds %struct.indir, %struct.indir* %131, i32 1
  store %struct.indir* %132, %struct.indir** %8, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %10, align 8
  %136 = mul nsw i64 %134, %135
  %137 = add nsw i64 -1, %136
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %138, %137
  store i64 %139, i64* %11, align 8
  %140 = load %struct.ext2mount*, %struct.ext2mount** %13, align 8
  %141 = call i64 @MNINDIR(%struct.ext2mount* %140)
  %142 = load i64, i64* %10, align 8
  %143 = sdiv i64 %142, %141
  store i64 %143, i64* %10, align 8
  br label %144

144:                                              ; preds = %115
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %105

147:                                              ; preds = %114, %105
  %148 = load i32*, i32** %9, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %147
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %47, %37
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.ext2mount* @VFSTOEXT2(i32) #1

declare dso_local i64 @MNINDIR(%struct.ext2mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
