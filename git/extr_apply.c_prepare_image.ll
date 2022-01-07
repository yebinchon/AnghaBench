; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_prepare_image.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_prepare_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image = type { i8*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image*, i8*, i64, i32)* @prepare_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_image(%struct.image* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.image*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.image* %0, %struct.image** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.image*, %struct.image** %5, align 8
  %13 = call i32 @memset(%struct.image* %12, i32 0, i32 24)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.image*, %struct.image** %5, align 8
  %16 = getelementptr inbounds %struct.image, %struct.image* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.image*, %struct.image** %5, align 8
  %19 = getelementptr inbounds %struct.image, %struct.image* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %79

23:                                               ; preds = %4
  %24 = load %struct.image*, %struct.image** %5, align 8
  %25 = getelementptr inbounds %struct.image, %struct.image* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.image*, %struct.image** %5, align 8
  %28 = getelementptr inbounds %struct.image, %struct.image* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %10, align 8
  %31 = load %struct.image*, %struct.image** %5, align 8
  %32 = getelementptr inbounds %struct.image, %struct.image* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %62, %23
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %52, %38
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ false, %40 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  br label %40

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.image*, %struct.image** %5, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @add_line_info(%struct.image* %63, i8* %64, i32 %70, i32 0)
  %72 = load i8*, i8** %11, align 8
  store i8* %72, i8** %9, align 8
  br label %34

73:                                               ; preds = %34
  %74 = load %struct.image*, %struct.image** %5, align 8
  %75 = getelementptr inbounds %struct.image, %struct.image* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.image*, %struct.image** %5, align 8
  %78 = getelementptr inbounds %struct.image, %struct.image* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %22
  ret void
}

declare dso_local i32 @memset(%struct.image*, i32, i32) #1

declare dso_local i32 @add_line_info(%struct.image*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
