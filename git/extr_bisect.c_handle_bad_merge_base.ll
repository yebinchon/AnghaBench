; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_handle_bad_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_handle_bad_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_bad_oid = common dso_local global i32 0, align 4
@good_revs = common dso_local global i32 0, align 4
@term_bad = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@term_good = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"The merge base %s is bad.\0AThis means the bug has been fixed between %s and [%s].\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"The merge base %s is new.\0AThe property has changed between %s and [%s].\0A\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"The merge base %s is %s.\0AThis means the first '%s' commit is between %s and [%s].\0A\00", align 1
@.str.7 = private unnamed_addr constant [127 x i8] c"Some %s revs are not ancestors of the %s rev.\0Agit bisect cannot work properly in this case.\0AMaybe you mistook %s and %s revs?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_bad_merge_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_bad_merge_base() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @current_bad_oid, align 4
  %4 = call i64 @is_expected_rev(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %0
  %7 = load i32, i32* @current_bad_oid, align 4
  %8 = call i8* @oid_to_hex(i32 %7)
  store i8* %8, i8** %1, align 8
  %9 = call i8* @join_sha1_array_hex(i32* @good_revs, i8 signext 32)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** @term_bad, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %6
  %14 = load i8*, i8** @term_good, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i8*, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %18, i8* %19, i8* %20, i8* %21, i8* %22)
  br label %49

24:                                               ; preds = %13, %6
  %25 = load i8*, i8** @term_bad, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** @term_good, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i8*, i8** %1, align 8
  %36 = load i8*, i8** %1, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %33, i8* %34, i8* %35, i8* %36, i8* %37)
  br label %48

39:                                               ; preds = %28, %24
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i8*, i8** %1, align 8
  %43 = load i8*, i8** @term_bad, align 8
  %44 = load i8*, i8** @term_good, align 8
  %45 = load i8*, i8** %1, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %40, i8* %41, i8* %42, i8* %43, i8* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %39, %32
  br label %49

49:                                               ; preds = %48, %17
  %50 = call i32 @exit(i32 3) #3
  unreachable

51:                                               ; preds = %0
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @_(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i8*, i8** @term_good, align 8
  %55 = load i8*, i8** @term_bad, align 8
  %56 = load i8*, i8** @term_good, align 8
  %57 = load i8*, i8** @term_bad, align 8
  %58 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %52, i8* %53, i8* %54, i8* %55, i8* %56, i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i64 @is_expected_rev(i32) #1

declare dso_local i8* @oid_to_hex(i32) #1

declare dso_local i8* @join_sha1_array_hex(i32*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
