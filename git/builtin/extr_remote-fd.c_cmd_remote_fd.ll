; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote-fd.c_cmd_remote_fd.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote-fd.c_cmd_remote_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bad URL syntax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_remote_fd(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @usage_msg, align 4
  %15 = call i32 @usage(i32 %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strtoul(i8* %19, i8** %9, i32 10)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %16
  %43 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37, %32, %27
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  br label %77

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i64 @strtoul(i8* %57, i8** %10, i32 10)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = icmp eq i8* %60, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %55
  %75 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69, %64
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @command_loop(i32 %78, i32 %79)
  ret i32 0
}

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @command_loop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
