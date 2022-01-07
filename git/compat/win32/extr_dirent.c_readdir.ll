; ModuleID = '/home/carl/AnghaBench/git/compat/win32/extr_dirent.c_readdir.c'
source_filename = "/home/carl/AnghaBench/git/compat/win32/extr_dirent.c_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.TYPE_3__ = type { %struct.dirent, i64, i32 }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @readdir(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EBADF, align 4
  store i32 %9, i32* @errno, align 4
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @FindNextFileW(i32 %18, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @finddata2dirent(%struct.dirent* %23, i32* %4)
  br label %34

25:                                               ; preds = %15
  %26 = call i64 (...) @GetLastError()
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @err_win_to_posix(i64 %31)
  store i32 %32, i32* @errno, align 4
  br label %33

33:                                               ; preds = %30, %25
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %42

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.dirent* %41, %struct.dirent** %2, align 8
  br label %42

42:                                               ; preds = %35, %33, %8
  %43 = load %struct.dirent*, %struct.dirent** %2, align 8
  ret %struct.dirent* %43
}

declare dso_local i64 @FindNextFileW(i32, i32*) #1

declare dso_local i32 @finddata2dirent(%struct.dirent*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @err_win_to_posix(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
