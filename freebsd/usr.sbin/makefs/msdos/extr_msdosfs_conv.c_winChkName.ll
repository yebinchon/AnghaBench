; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_winChkName.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_winChkName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winentry = type { i32, i32, i32, i32, i32 }

@WIN_MAXLEN = common dso_local global i32 0, align 4
@WIN_CHARS = common dso_local global i32 0, align 4
@WIN_LAST = common dso_local global i32 0, align 4
@WIN_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winChkName(i32* %0, i64 %1, %struct.winentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.winentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.winentry* %2, %struct.winentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @WIN_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @WIN_CHARS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load %struct.winentry*, %struct.winentry** %8, align 8
  %25 = getelementptr inbounds %struct.winentry, %struct.winentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WIN_LAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.winentry*, %struct.winentry** %8, align 8
  %32 = getelementptr inbounds %struct.winentry, %struct.winentry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.winentry*, %struct.winentry** %8, align 8
  %37 = getelementptr inbounds %struct.winentry, %struct.winentry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %111

46:                                               ; preds = %42
  %47 = load %struct.winentry*, %struct.winentry** %8, align 8
  %48 = getelementptr inbounds %struct.winentry, %struct.winentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WIN_CNT, align 4
  %51 = and i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* @WIN_CHARS, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @WIN_MAXLEN, align 4
  %58 = call i32 @char8ucs2str(i32* %55, i64 %56, i32* %20, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @WIN_MAXLEN, align 4
  %61 = call i32 @ucs2pad(i32* %20, i32 %59, i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %111

67:                                               ; preds = %46
  %68 = load %struct.winentry*, %struct.winentry** %8, align 8
  %69 = getelementptr inbounds %struct.winentry, %struct.winentry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @WIN_LAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @WIN_CHARS, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %111

81:                                               ; preds = %74, %67
  %82 = getelementptr inbounds i32, i32* %23, i64 0
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.winentry*, %struct.winentry** %8, align 8
  %85 = getelementptr inbounds %struct.winentry, %struct.winentry* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32* %83, i32 %86, i32 4)
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.winentry*, %struct.winentry** %8, align 8
  %92 = getelementptr inbounds %struct.winentry, %struct.winentry* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32* %90, i32 %93, i32 4)
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32* %96, i32** %12, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load %struct.winentry*, %struct.winentry** %8, align 8
  %99 = getelementptr inbounds %struct.winentry, %struct.winentry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32* %97, i32 %100, i32 4)
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %20, i64 %103
  %105 = load i32, i32* @WIN_CHARS, align 4
  %106 = call i32 @char8match(i32* %104, i32* %23, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %81
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %111

109:                                              ; preds = %81
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %109, %108, %80, %66, %45
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @char8ucs2str(i32*, i64, i32*, i32) #2

declare dso_local i32 @ucs2pad(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @char8match(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
