; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_prepkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_prepkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@fflag = common dso_local global i64 0, align 8
@dflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @prepkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prepkey(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32* @malloc(i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @err(i32 2, i32* null)
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %54, %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @MB_LEN_MAX, align 4
  %26 = call i64 @mbrtowc(i32* %8, i8* %24, i32 %25, i32* null)
  store i64 %26, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, -2
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @EILSEQ, align 4
  %36 = call i32 @errc(i32 2, i32 %35, i32* null)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @fflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @towlower(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @dflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @iswalnum(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %5, align 8
  br label %23

58:                                               ; preds = %23
  %59 = load i32*, i32** %7, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32* @wcschr(i32* %63, i32 %64)
  store i32* %65, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %62, %58
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i32 @errc(i32, i32, i32*) #1

declare dso_local i32 @towlower(i32) #1

declare dso_local i64 @iswalnum(i32) #1

declare dso_local i32* @wcschr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
