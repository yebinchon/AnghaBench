; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@outfp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"====\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error decoding base64 input stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @base64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base64_decode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = mul nsw i32 %16, 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %24, align 16
  br label %25

25:                                               ; preds = %94, %0
  %26 = call i32 @strcpy(i8* %15, i8* %23)
  %27 = call i32 @strlen(i8* %15)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %15, i64 %28
  %30 = call i32 @strlen(i8* %15)
  %31 = sext i32 %30 to i64
  %32 = sub i64 %13, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @get_line(i8* %29, i32 %33)
  switch i32 %34, label %37 [
    i32 0, label %35
    i32 1, label %36
  ]

35:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %100

36:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %100

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i8* %15, i8** %7, align 8
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isalnum(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53, %48, %43
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %3, align 4
  %68 = srem i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = ptrtoint i8* %15 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  br label %38

79:                                               ; preds = %38
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %15, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @strcpy(i8* %23, i8* %83)
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %15, i64 %87
  store i8 0, i8* %88, align 1
  %89 = trunc i64 %18 to i32
  %90 = call i32 @b64_pton(i8* %15, i8* %19, i32 %89)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %98

94:                                               ; preds = %79
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @outfp, align 4
  %97 = call i32 @fwrite(i8* %19, i32 1, i32 %95, i32 %96)
  br label %25

98:                                               ; preds = %93
  %99 = call i32 @checkend(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %99, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %36, %35
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @get_line(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isalnum(i8 signext) #2

declare dso_local i32 @b64_pton(i8*, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #2

declare dso_local i32 @checkend(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
