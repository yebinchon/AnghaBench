; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secsz = common dso_local global i32 0, align 4
@image_swap_pgsz = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@image_swap_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*)* @image_copyin_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_copyin_stream(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load i32, i32* @secsz, align 4
  %16 = load i32, i32* @image_swap_pgsz, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %81, %3
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @image_swap_alloc(i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %19
  %27 = load i32, i32* @image_swap_fd, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i8* @image_file_map(i32 %27, i64 %28, i64 %29, i64* %14)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @read(i32 %36, i8* %39, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @image_swap_fd, align 4
  %52 = call i32 @image_chunk_copyin(i32 %45, i8* %48, i32 %49, i64 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %60

53:                                               ; preds = %35
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %13, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %58, %56
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @image_file_unmap(i8* %61, i64 %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %4, align 4
  br label %91

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @secsz, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @secsz, align 4
  %78 = sdiv i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %19, label %84

84:                                               ; preds = %81
  %85 = load i64*, i64** %7, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %66, %33, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @image_swap_alloc(i64) #1

declare dso_local i8* @image_file_map(i32, i64, i64, i64*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @image_chunk_copyin(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @image_file_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
