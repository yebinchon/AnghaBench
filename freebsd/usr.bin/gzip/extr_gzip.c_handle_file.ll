; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@tflag = common dso_local global i64 0, align 8
@cflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stat*)* @handle_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_file(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.stat*, %struct.stat** %4, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @infile_set(i8* %14, i32 %17)
  %19 = load i64, i64* @dflag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = trunc i64 %11 to i32
  %24 = call i32 @file_uncompress(i8* %22, i8* %13, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* @vflag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i64, i64* @tflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i32 @print_test(i8* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %27, %21
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %74

40:                                               ; preds = %36
  %41 = load %struct.stat*, %struct.stat** %4, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %55

44:                                               ; preds = %2
  %45 = load i8*, i8** %3, align 8
  %46 = trunc i64 %11 to i32
  %47 = call i32 @file_compress(i8* %45, i8* %13, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %74

51:                                               ; preds = %44
  %52 = load %struct.stat*, %struct.stat** %4, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %40
  %56 = call i32 (...) @infile_clear()
  %57 = load i64, i64* @vflag, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i64, i64* @tflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* @cflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %66
  %69 = phi i8* [ null, %66 ], [ %13, %67 ]
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @print_verbage(i8* %63, i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %59, %55
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %50, %39
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @infile_set(i8*, i32) #2

declare dso_local i32 @file_uncompress(i8*, i8*, i32) #2

declare dso_local i32 @print_test(i8*, i32) #2

declare dso_local i32 @file_compress(i8*, i8*, i32) #2

declare dso_local i32 @infile_clear(...) #2

declare dso_local i32 @print_verbage(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
