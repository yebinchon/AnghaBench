; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_quoted_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_quoted_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"{k:%s}{d:%s/\22\22}\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"{:%s/%%s}\00", align 1
@PRINT_QUOTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"{P:/%c}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @quoted_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoted_print(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 (i8*, ...) @xo_emit(i8* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @free(i8* %20)
  br label %76

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 39)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %48

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strchr(i8* %30, i8 signext 34)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strchr(i8* %35, i8 signext 32)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strchr(i8* %39, i8 signext 9)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ true, %34 ], [ %41, %38 ]
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 34, i32 0
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i32 [ 39, %33 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i32 [ 34, %28 ], [ %47, %46 ]
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PRINT_QUOTED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %52, %48
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i8*, ...) @xo_emit(i8* %61, i8* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PRINT_QUOTED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %14, %73, %68, %60
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
