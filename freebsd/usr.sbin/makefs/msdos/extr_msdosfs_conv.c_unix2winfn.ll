; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_unix2winfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_unix2winfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winentry = type { i32, i32, i32, i32, i32, i64, i64, i32 }

@WIN_MAXLEN = common dso_local global i32 0, align 4
@WIN_CHARS = common dso_local global i32 0, align 4
@ATTR_WIN95 = common dso_local global i32 0, align 4
@WIN_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix2winfn(i8* %0, i64 %1, %struct.winentry* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.winentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.winentry* %2, %struct.winentry** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @WIN_MAXLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %17, align 8
  br label %26

26:                                               ; preds = %42, %5
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8*, i8** %17, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %17, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %17, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 46
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %8, align 8
  br label %26

45:                                               ; preds = %40, %26
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @WIN_CHARS, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %15, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* @WIN_MAXLEN, align 4
  %53 = call i32 @char8ucs2str(i8* %50, i64 %51, i32* %22, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @WIN_MAXLEN, align 4
  %56 = call i32 @ucs2pad(i32* %22, i32 %54, i32 %55)
  %57 = load %struct.winentry*, %struct.winentry** %9, align 8
  %58 = call i32 @memset(%struct.winentry* %57, i32 255, i32 48)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.winentry*, %struct.winentry** %9, align 8
  %61 = getelementptr inbounds %struct.winentry, %struct.winentry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @ATTR_WIN95, align 4
  %63 = load %struct.winentry*, %struct.winentry** %9, align 8
  %64 = getelementptr inbounds %struct.winentry, %struct.winentry* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.winentry*, %struct.winentry** %9, align 8
  %66 = getelementptr inbounds %struct.winentry, %struct.winentry* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.winentry*, %struct.winentry** %9, align 8
  %69 = getelementptr inbounds %struct.winentry, %struct.winentry* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.winentry*, %struct.winentry** %9, align 8
  %71 = getelementptr inbounds %struct.winentry, %struct.winentry* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %22, i64 %73
  store i32* %74, i32** %14, align 8
  %75 = load %struct.winentry*, %struct.winentry** %9, align 8
  %76 = getelementptr inbounds %struct.winentry, %struct.winentry* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @memcpy(i32 %77, i32* %78, i32 4)
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32* %81, i32** %14, align 8
  %82 = load %struct.winentry*, %struct.winentry** %9, align 8
  %83 = getelementptr inbounds %struct.winentry, %struct.winentry* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @memcpy(i32 %84, i32* %85, i32 4)
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32* %88, i32** %14, align 8
  %89 = load %struct.winentry*, %struct.winentry** %9, align 8
  %90 = getelementptr inbounds %struct.winentry, %struct.winentry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @memcpy(i32 %91, i32* %92, i32 4)
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @WIN_CHARS, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %106

100:                                              ; preds = %45
  %101 = load i32, i32* @WIN_LAST, align 4
  %102 = load %struct.winentry*, %struct.winentry** %9, align 8
  %103 = getelementptr inbounds %struct.winentry, %struct.winentry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %106

106:                                              ; preds = %100, %99
  %107 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @char8ucs2str(i8*, i64, i32*, i32) #2

declare dso_local i32 @ucs2pad(i32*, i32, i32) #2

declare dso_local i32 @memset(%struct.winentry*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
