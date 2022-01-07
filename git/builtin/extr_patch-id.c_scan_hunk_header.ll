; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_patch-id.c_scan_hunk_header.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_patch-id.c_scan_hunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan_hunk_header.digits = internal constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @scan_hunk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_hunk_header(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @scan_hunk_header.digits, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i8*, i8** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strspn(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @scan_hunk_header.digits, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %50, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 43
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %33, %30
  store i32 0, i32* %4, align 4
  br label %85

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strspn(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @scan_hunk_header.digits, i64 0, i64 0))
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 44
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i8*, i8** %9, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strspn(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @scan_hunk_header.digits, i64 0, i64 0))
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %66, %51
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %85

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @atoi(i8* %79)
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @atoi(i8* %82)
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %77, %50
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
