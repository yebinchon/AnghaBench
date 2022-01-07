; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_command_loop.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCOMMAND = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Command input error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"*connect\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"connect \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Bad command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @command_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_loop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @MAXCOMMAND, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  br label %12

12:                                               ; preds = %65, %1
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @MAXCOMMAND, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @stdin, align 4
  %17 = call i32 @fgets(i8* %11, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @stdin, align 4
  %21 = call i64 @ferror(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = call i32 @exit(i32 0) #4
  unreachable

27:                                               ; preds = %13
  %28 = call i64 @strlen(i8* %11)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i64, i64* %6, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %11, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i1 [ false, %29 ], [ %38, %32 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %11, i64 %43
  store i8 0, i8* %44, align 1
  br label %29

45:                                               ; preds = %39
  %46 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fflush(i32 %50)
  br label %65

52:                                               ; preds = %45
  %53 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fflush(i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %11, i64 8
  %61 = call i32 @run_child(i8* %59, i8* %60)
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %66

65:                                               ; preds = %48
  br label %12

66:                                               ; preds = %62, %55
  %67 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i32 @die(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @run_child(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
