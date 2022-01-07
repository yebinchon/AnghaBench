; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_mbssep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_mbssep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64*)* @mbssep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbssep(i8** %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %59

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %58, %16
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @MB_LEN_MAX, align 4
  %21 = call i64 @mbrtowc(i64* %9, i8* %19, i32 %20, i32* null)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, -2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @EILSEQ, align 4
  %29 = call i32 @errc(i32 1, i32 %28, i32* null)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %6, align 8
  %34 = load i64*, i64** %5, align 8
  store i64* %34, i64** %8, align 8
  br label %35

35:                                               ; preds = %55, %30
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %8, align 8
  %38 = load i64, i64* %36, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %6, align 8
  br label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i8*, i8** %6, align 8
  %52 = load i8**, i8*** %4, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %3, align 8
  br label %59

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %35, label %58

58:                                               ; preds = %55
  br label %18

59:                                               ; preds = %50, %15
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i64 @mbrtowc(i64*, i8*, i32, i32*) #1

declare dso_local i32 @errc(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
