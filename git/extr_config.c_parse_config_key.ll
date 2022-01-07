; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_parse_config_key.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_parse_config_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_config_key(i8* %0, i8* %1, i8** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @skip_prefix(i8* %13, i8* %14, i8** %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 46
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %5
  store i32 -1, i32* %6, align 4
  br label %56

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8**, i8*** %11, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8**, i8*** %9, align 8
  store i8* null, i8** %36, align 8
  %37 = load i32*, i32** %10, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %55

39:                                               ; preds = %23
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %56

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8**, i8*** %9, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %47 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %43, %38
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %42, %22
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
