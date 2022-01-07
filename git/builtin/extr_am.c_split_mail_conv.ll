; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_conv.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32, i32, i32, i32 }

@split_mail_conv.stdin_only = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s/%0*d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"could not parse patch '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32*, i32*, i32)*, %struct.am_state*, i8**, i32)* @split_mail_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_mail_conv(i32 (i32*, i32*, i32)* %0, %struct.am_state* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32*, i32*, i32)*, align 8
  %7 = alloca %struct.am_state*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 (i32*, i32*, i32)* %0, i32 (i32*, i32*, i32)** %6, align 8
  store %struct.am_state* %1, %struct.am_state** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @split_mail_conv.stdin_only, i64 0, i64 0), i8*** %8, align 8
  br label %19

19:                                               ; preds = %18, %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %91, %19
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %96

24:                                               ; preds = %20
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** @stdin, align 8
  store i32* %30, i32** %11, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i8**, i8*** %8, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @error_errno(i32 %39, i8* %41)
  store i32 %42, i32* %5, align 4
  br label %102

43:                                               ; preds = %35
  %44 = load %struct.am_state*, %struct.am_state** %7, align 8
  %45 = getelementptr inbounds %struct.am_state, %struct.am_state* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.am_state*, %struct.am_state** %7, align 8
  %48 = getelementptr inbounds %struct.am_state, %struct.am_state* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i8* @mkpath(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49, i32 %51)
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %43
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** @stdin, align 8
  %60 = icmp ne i32* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @fclose(i32* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @error_errno(i32 %65, i8* %66)
  store i32 %67, i32* %5, align 4
  br label %102

68:                                               ; preds = %43
  %69 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %6, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %69(i32* %70, i32* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @fclose(i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** @stdin, align 8
  %78 = icmp ne i32* %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @fclose(i32* %80)
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i8**, i8*** %8, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @error(i32 %86, i8* %88)
  store i32 %89, i32* %5, align 4
  br label %102

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load i8**, i8*** %8, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %20

96:                                               ; preds = %20
  %97 = load %struct.am_state*, %struct.am_state** %7, align 8
  %98 = getelementptr inbounds %struct.am_state, %struct.am_state* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.am_state*, %struct.am_state** %7, align 8
  %101 = getelementptr inbounds %struct.am_state, %struct.am_state* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %85, %64, %38
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @mkpath(i8*, i32, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
