; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_skip_hole.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_skip_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }

@FIOSEEKDATA = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FIOSEEKHOLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vn_skip_hole: dataoff=%jd < outoff=%jd\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vn_skip_hole: holeoff=%jd <= dataoff=%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vnode*, i64, i64*, i64*, i64*, i64*, %struct.ucred*)* @vn_skip_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vn_skip_hole(%struct.vnode* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, %struct.ucred* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.ucred*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.ucred* %6, %struct.ucred** %15, align 8
  %18 = load i64*, i64** %14, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %7
  %22 = load i64*, i64** %14, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %23, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %21, %7
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %13, align 8
  store i64 %29, i64* %30, align 8
  %31 = load %struct.vnode*, %struct.vnode** %9, align 8
  %32 = load i32, i32* @FIOSEEKDATA, align 4
  %33 = load i64*, i64** %13, align 8
  %34 = load %struct.ucred*, %struct.ucred** %15, align 8
  %35 = load i32, i32* @curthread, align 4
  %36 = call i32 @VOP_IOCTL(%struct.vnode* %31, i32 %32, i64* %33, i32 0, %struct.ucred* %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %14, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.vnode*, %struct.vnode** %9, align 8
  %44 = load i32, i32* @FIOSEEKHOLE, align 4
  %45 = load i64*, i64** %14, align 8
  %46 = load %struct.ucred*, %struct.ucred** %15, align 8
  %47 = load i32, i32* @curthread, align 4
  %48 = call i32 @VOP_IOCTL(%struct.vnode* %43, i32 %44, i64* %45, i32 0, %struct.ucred* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %39, %27
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i64*, i64** %14, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %13, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %49
  %59 = load i64*, i64** %14, align 8
  store i64 -1, i64* %59, align 8
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %8, align 8
  br label %150

61:                                               ; preds = %52
  %62 = load i64*, i64** %13, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = load i64*, i64** %13, align 8
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @KASSERT(i32 %67, i8* %75)
  %77 = load i64*, i64** %14, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = load i64*, i64** %14, align 8
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @KASSERT(i32 %82, i8* %90)
  br label %92

92:                                               ; preds = %61, %21
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %92
  %99 = load i64*, i64** %13, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %100, %102
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load i64*, i64** %12, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %110
  store i64 %113, i64* %111, align 8
  %114 = load i64*, i64** %12, align 8
  store i64 0, i64* %114, align 8
  store i64 0, i64* %8, align 8
  br label %150

115:                                              ; preds = %98
  %116 = load i64, i64* %17, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, %116
  store i64 %119, i64* %117, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @MIN(i64 %124, i64 %126)
  store i64 %127, i64* %10, align 8
  br label %128

128:                                              ; preds = %115, %92
  %129 = load i64*, i64** %14, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %11, align 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %130, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load i64*, i64** %14, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add nsw i64 %138, %139
  %141 = icmp slt i64 %136, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i64*, i64** %14, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %11, align 8
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %144, %146
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %142, %134, %128
  %149 = load i64, i64* %10, align 8
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %148, %108, %58
  %151 = load i64, i64* %8, align 8
  ret i64 %151
}

declare dso_local i32 @VOP_IOCTL(%struct.vnode*, i32, i64*, i32, %struct.ucred*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
