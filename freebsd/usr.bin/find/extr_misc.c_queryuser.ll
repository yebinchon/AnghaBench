; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_misc.c_queryuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_misc.c_queryuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\22%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\22? \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queryuser(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  store i8** %0, i8*** %2, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8**, i8*** %2, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %2, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %9

19:                                               ; preds = %9
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* @stdin, align 4
  %26 = call i32* @fgets(i8* %24, i32 256, i32 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %29, align 16
  br label %30

30:                                               ; preds = %28, %19
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %32 = call i8* @strchr(i8* %31, i8 signext 10)
  store i8* %32, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  store i8 0, i8* %35, align 1
  br label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fflush(i32 %39)
  br label %41

41:                                               ; preds = %36, %34
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %43 = call i32 @rpmatch(i8* %42)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rpmatch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
