; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_adjust_comment_line_char.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_adjust_comment_line_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@__const.adjust_comment_line_char.candidates = private unnamed_addr constant [11 x i8] c"#;@!$%^&|:\00", align 1
@comment_line_char = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [84 x i8] c"unable to select a comment character that is not used\0Ain the current commit message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @adjust_comment_line_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_comment_line_char(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca [11 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %6 = bitcast [11 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.adjust_comment_line_char.candidates, i32 0, i32 0), i64 11, i1 false)
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* @comment_line_char, align 1
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* @comment_line_char, align 1
  %13 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @memchr(i8* %11, i8 signext %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i8* @strchr(i8* %23, i8 signext %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  store i8 32, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %19
  %32 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %69, %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %68

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = call i8* @strchr(i8* %58, i8 signext %61)
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i8*, i8** %4, align 8
  store i8 32, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %57
  br label %68

68:                                               ; preds = %67, %51, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  br label %35

72:                                               ; preds = %35
  %73 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %80, %72
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  br label %74

83:                                               ; preds = %74
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @die(i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* @comment_line_char, align 1
  br label %93

93:                                               ; preds = %90, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
