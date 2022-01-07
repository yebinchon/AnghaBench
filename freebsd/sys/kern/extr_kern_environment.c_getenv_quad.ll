; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_getenv_quad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_getenv_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getenv_quad(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @KENV_MNAMELEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @KENV_MVALLEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = add nsw i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @getenv_string(i8* %19, i8* %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

24:                                               ; preds = %2
  %25 = call i32 @strtoq(i8* %18, i8** %8, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, %18
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %24
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

41:                                               ; preds = %34, %28
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %59 [
    i32 116, label %46
    i32 84, label %46
    i32 103, label %49
    i32 71, label %49
    i32 109, label %52
    i32 77, label %52
    i32 107, label %55
    i32 75, label %55
    i32 0, label %58
  ]

46:                                               ; preds = %41, %41
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 1024
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %41, %41, %46
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 1024
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %41, %41, %49
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 1024
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %41, %41, %52
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 1024
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %41, %55
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %59, %40, %23
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getenv_string(i8*, i8*, i32) #2

declare dso_local i32 @strtoq(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
