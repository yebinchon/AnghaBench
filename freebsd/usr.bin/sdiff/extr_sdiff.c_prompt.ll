; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@outfp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@sflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prompt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @putchar(i8 signext 37)
  br label %8

8:                                                ; preds = %64, %2
  %9 = load i32, i32* @stdin, align 4
  %10 = call i8* @xfgets(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %20, %12
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %56 [
    i32 101, label %27
    i32 108, label %37
    i32 49, label %37
    i32 113, label %45
    i32 114, label %46
    i32 50, label %46
    i32 115, label %54
    i32 118, label %55
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @eparse(i8* %30, i8* %31, i8* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %57

36:                                               ; preds = %27
  br label %61

37:                                               ; preds = %23, %23
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @outfp, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %61

45:                                               ; preds = %23
  br label %68

46:                                               ; preds = %23, %23
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @outfp, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %61

54:                                               ; preds = %23
  store i32 1, i32* @sflag, align 4
  br label %59

55:                                               ; preds = %23
  store i32 0, i32* @sflag, align 4
  br label %56

56:                                               ; preds = %23, %55
  br label %57

57:                                               ; preds = %56, %35
  %58 = call i32 (...) @int_usage()
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 @putchar(i8 signext 37)
  br label %64

61:                                               ; preds = %53, %44, %36
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @free(i8* %62)
  ret void

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @free(i8* %65)
  br label %8

67:                                               ; preds = %8
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* @outfp, align 4
  %70 = call i32 @fclose(i32 %69)
  %71 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @xfgets(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @eparse(i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @int_usage(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32) #1

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
