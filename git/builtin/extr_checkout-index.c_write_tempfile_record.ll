; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_write_tempfile_record.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_write_tempfile_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECKOUT_ALL = common dso_local global i64 0, align 8
@checkout_stage = common dso_local global i64 0, align 8
@topath = common dso_local global i64** null, align 8
@stdout = common dso_local global i32 0, align 4
@nul_term_line = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @write_tempfile_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tempfile_record(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* @CHECKOUT_ALL, align 8
  %7 = load i64, i64* @checkout_stage, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @putchar(i8 signext 32)
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64**, i64*** @topath, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %19, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i64**, i64*** @topath, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i64* %32, i32 %33)
  br label %37

35:                                               ; preds = %18
  %36 = call i32 @putchar(i8 signext 46)
  br label %37

37:                                               ; preds = %35, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %10
  br label %49

42:                                               ; preds = %2
  %43 = load i64**, i64*** @topath, align 8
  %44 = load i64, i64* @checkout_stage, align 8
  %45 = getelementptr inbounds i64*, i64** %43, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fputs(i64* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %41
  %50 = call i32 @putchar(i8 signext 9)
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @stdout, align 4
  %54 = load i64, i64* @nul_term_line, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 10
  %58 = trunc i32 %57 to i8
  %59 = call i32 @write_name_quoted_relative(i8* %51, i8* %52, i32 %53, i8 signext %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %70, %49
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i64**, i64*** @topath, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %60

73:                                               ; preds = %60
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i64*, i32) #1

declare dso_local i32 @write_name_quoted_relative(i8*, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
