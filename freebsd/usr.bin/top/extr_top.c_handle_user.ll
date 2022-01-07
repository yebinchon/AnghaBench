; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_top.c_handle_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_top.c_handle_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MT_standout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Username to show (+ for all): \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" %s: unknown user\00", align 1
@ps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c" too many users, reset with '+'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @handle_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_user(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* @MT_standout, align 4
  %11 = call i32 (i32, i8*, ...) @new_message(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @readline(i8* %12, i64 %13, i32 0)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @clear_message()
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 43
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %43

31:                                               ; preds = %25, %19
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @reset_uids()
  br label %78

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @userid(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @MT_standout, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i32, i8*, ...) @new_message(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 1, i32* %6, align 4
  br label %78

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i32 (...) @reset_uids()
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  br label %78

60:                                               ; preds = %51
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 43
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @add_uid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @MT_standout, align 4
  %72 = call i32 (i32, i8*, ...) @new_message(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %78

73:                                               ; preds = %66
  br label %77

74:                                               ; preds = %60
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @rem_uid(i32 %75)
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %70, %55, %47, %37
  %79 = call i32 @putchar(i8 signext 13)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @new_message(i32, i8*, ...) #1

declare dso_local i64 @readline(i8*, i64, i32) #1

declare dso_local i32 @clear_message(...) #1

declare dso_local i32 @reset_uids(...) #1

declare dso_local i32 @userid(i8*) #1

declare dso_local i64 @add_uid(i32) #1

declare dso_local i32 @rem_uid(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
