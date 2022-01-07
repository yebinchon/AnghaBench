; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_getopt_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_getopt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsoptlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getopt_size(%struct.vfsoptlist* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsoptlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vfsoptlist* %0, %struct.vfsoptlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.vfsoptlist*, %struct.vfsoptlist** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @vfs_getopt(%struct.vfsoptlist* %13, i8* %14, i8** %8, i32* %12)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %93

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %93

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %28
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %93

45:                                               ; preds = %34
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strtoq(i8* %46, i8** %9, i32 0)
  store i64 %47, i64* %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %45
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %93

65:                                               ; preds = %57, %51
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %4, align 4
  br label %93

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %88 [
    i32 116, label %75
    i32 84, label %75
    i32 103, label %78
    i32 71, label %78
    i32 109, label %81
    i32 77, label %81
    i32 107, label %84
    i32 75, label %84
    i32 0, label %87
  ]

75:                                               ; preds = %70, %70
  %76 = load i64, i64* %10, align 8
  %77 = mul nsw i64 %76, 1024
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %70, %70, %75
  %79 = load i64, i64* %10, align 8
  %80 = mul nsw i64 %79, 1024
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %70, %70, %78
  %82 = load i64, i64* %10, align 8
  %83 = mul nsw i64 %82, 1024
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %70, %70, %81
  %85 = load i64, i64* %10, align 8
  %86 = mul nsw i64 %85, 1024
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %70, %84
  br label %90

88:                                               ; preds = %70
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %10, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %88, %68, %63, %43, %26, %18
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @vfs_getopt(%struct.vfsoptlist*, i8*, i8**, i32*) #1

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
