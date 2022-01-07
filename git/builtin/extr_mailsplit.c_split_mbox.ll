; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_mbox.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot open mbox %s\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"empty mbox: '%s'\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot read mbox %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s/%0*d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @split_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_mbox(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** @stdin, align 8
  br label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32* [ %20, %19 ], [ %23, %21 ]
  store i32* %25, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @error_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %97

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @fgetc(i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** @stdin, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %11, align 4
  br label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @error(i8* %47, i8* %48)
  br label %50

50:                                               ; preds = %44, %42
  br label %97

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @isspace(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %32, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @ungetc(i32 %57, i32* %58)
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @strbuf_getwholeline(i32* @buf, i32* %60, i8 signext 10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** @stdin, align 8
  %66 = icmp ne i32* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %97

70:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = call i8* @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %78, i32 %80)
  store i8* %81, i8** %15, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @split_one(i32* %82, i8* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @free(i8* %86)
  br label %72

88:                                               ; preds = %72
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** @stdin, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @fclose(i32* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %67, %50, %28
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i64 @strbuf_getwholeline(i32*, i32*, i8 signext) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i32, i32) #1

declare dso_local i32 @split_one(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
