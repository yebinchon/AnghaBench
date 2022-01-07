; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_check_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matchline = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" ;,\00", align 1
@FNM_CASEFOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_match(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** @matchline, align 8
  store i8* %9, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** @matchline, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %19, %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcspn(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %6, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %28
  %42 = load i8*, i8** %4, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @FNM_CASEFOLD, align 4
  %46 = call i64 @fnmatch(i8* %43, i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i8, i8* %6, align 1
  %50 = load i8*, i8** %4, align 8
  store i8 %49, i8* %50, align 1
  store i32 1, i32* %2, align 4
  br label %68

51:                                               ; preds = %41
  %52 = load i8, i8* %6, align 1
  %53 = load i8*, i8** %4, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strspn(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %5, align 8
  br label %65

59:                                               ; preds = %28
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strspn(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %59, %51
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %48, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
