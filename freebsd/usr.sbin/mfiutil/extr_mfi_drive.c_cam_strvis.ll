; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_cam_strvis.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_cam_strvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @cam_strvis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cam_strvis(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %21, %4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  br label %10

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %39, %30
  %49 = phi i1 [ true, %30 ], [ %47, %39 ]
  br label %50

50:                                               ; preds = %48, %27
  %51 = phi i1 [ false, %27 ], [ %49, %48 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %27

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %112, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 1
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %127

64:                                               ; preds = %62
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %107

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %103

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  store i8 92, i8* %74, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 192
  %80 = ashr i32 %79, 6
  %81 = add nsw i32 %80, 48
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = and i32 %87, 56
  %89 = ashr i32 %88, 3
  %90 = add nsw i32 %89, 48
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 7
  %98 = ashr i32 %97, 0
  %99 = add nsw i32 %98, 48
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  br label %106

103:                                              ; preds = %70
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 63, i8* %104, align 1
  br label %106

106:                                              ; preds = %103, %73
  br label %112

107:                                              ; preds = %64
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %107, %106
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load i8*, i8** %9, align 8
  store i8* %126, i8** %5, align 8
  br label %56

127:                                              ; preds = %62
  %128 = load i8*, i8** %5, align 8
  store i8 0, i8* %128, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
