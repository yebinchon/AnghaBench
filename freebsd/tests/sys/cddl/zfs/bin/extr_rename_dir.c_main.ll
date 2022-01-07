; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_rename_dir.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_rename_dir.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"rename() fails to handle race situation\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a/b/c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1/2/3/c\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"c_count: %d,\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"a/b/c/d/e/1\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"p_count: %d,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = call i32 (...) @fork()
  switch i32 %7, label %42 [
    i32 -1, label %8
    i32 0, label %11
  ]

8:                                                ; preds = %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  %16 = call i32 @rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = call i32 @rename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = call i32 @strlcat(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 256)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlcat(i8* %33, i8* %34, i32 256)
  %36 = load i32, i32* @stderr, align 4
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @fprintf(i32 %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %27
  br label %12

41:                                               ; preds = %12
  br label %73

42:                                               ; preds = %0
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  %47 = call i32 @rename(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = call i32 @rename(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %63 = call i32 @strlcat(i8* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 256)
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlcat(i8* %64, i8* %65, i32 256)
  %67 = load i32, i32* @stderr, align 4
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @fprintf(i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %58
  br label %43

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72, %41
  ret i32 0
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
