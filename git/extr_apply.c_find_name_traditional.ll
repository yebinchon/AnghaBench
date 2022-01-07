; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_find_name_traditional.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_find_name_traditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@TERM_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i8*, i8*, i32)* @find_name_traditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_name_traditional(%struct.strbuf* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @find_name_gnu(%struct.strbuf* %18, i8* %19, i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** %12, align 8
  store i8* %25, i8** %5, align 8
  br label %58

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strchrnul(i8* %28, i8 signext 10)
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @diff_timestamp_len(i8* %34, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %27
  %40 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @TERM_TAB, align 4
  %45 = call i8* @find_name_common(%struct.strbuf* %40, i8* %41, i8* %42, i32 %43, i8* null, i32 %44)
  store i8* %45, i8** %5, align 8
  br label %58

46:                                               ; preds = %27
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = call i8* @find_name_common(%struct.strbuf* %50, i8* %51, i8* %52, i32 %53, i8* %56, i32 0)
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %46, %39, %24
  %59 = load i8*, i8** %5, align 8
  ret i8* %59
}

declare dso_local i8* @find_name_gnu(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @diff_timestamp_len(i8*, i64) #1

declare dso_local i8* @find_name_common(%struct.strbuf*, i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
