; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@sourcing = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@intr = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i32 0, align 4
@hangup = common dso_local global i64 0, align 8
@SIGTSTP = common dso_local global i32 0, align 4
@stop = common dso_local global i64 0, align 8
@SIGTTOU = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"autoinc\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"New mail has arrived.\0A\00", align 1
@reset_on_stop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@prompt = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@input = common dso_local global i32 0, align 4
@loading = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"ignoreeof\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Use \22quit\22 to quit.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commands() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @LINESIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i64, i64* @sourcing, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i64, i64* @SIG_IGN, align 8
  %14 = call i64 @signal(i32 %12, i64 %13)
  %15 = load i64, i64* @SIG_IGN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @SIGINT, align 4
  %19 = load i64, i64* @intr, align 8
  %20 = call i64 @signal(i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i32, i32* @SIGHUP, align 4
  %23 = load i64, i64* @SIG_IGN, align 8
  %24 = call i64 @signal(i32 %22, i64 %23)
  %25 = load i64, i64* @SIG_IGN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @SIGHUP, align 4
  %29 = load i64, i64* @hangup, align 8
  %30 = call i64 @signal(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @SIGTSTP, align 4
  %33 = load i64, i64* @stop, align 8
  %34 = call i64 @signal(i32 %32, i64 %33)
  %35 = load i32, i32* @SIGTTOU, align 4
  %36 = load i64, i64* @stop, align 8
  %37 = call i64 @signal(i32 %35, i64 %36)
  %38 = load i32, i32* @SIGTTIN, align 4
  %39 = load i64, i64* @stop, align 8
  %40 = call i64 @signal(i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %31, %0
  %42 = call i32 (...) @setexit()
  br label %43

43:                                               ; preds = %127, %120, %108, %41
  %44 = load i64, i64* @sourcing, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = call i32* @value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = call i32* @value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = call i64 (...) @incfile()
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52, %49
  store i32 1, i32* @reset_on_stop, align 4
  %58 = load i8*, i8** @prompt, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %46, %43
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  %63 = call i32 (...) @sreset()
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %93, %60
  %65 = load i32, i32* @input, align 4
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %8, i64 %67
  %69 = load i32, i32* @LINESIZE, align 4
  %70 = load i32, i32* %1, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i64 @readline(i32 %65, i8* %68, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* %1, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 -1, i32* %1, align 4
  br label %78

78:                                               ; preds = %77, %74
  br label %98

79:                                               ; preds = %64
  %80 = call i32 @strlen(i8* %8)
  store i32 %80, i32* %1, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %98

83:                                               ; preds = %79
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %8, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 92
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %98

93:                                               ; preds = %83
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %8, i64 %96
  store i8 32, i8* %97, align 1
  br label %64

98:                                               ; preds = %92, %82, %78
  store i32 0, i32* @reset_on_stop, align 4
  %99 = load i32, i32* %1, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i64, i64* @loading, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %128

105:                                              ; preds = %101
  %106 = load i64, i64* @sourcing, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @unstack()
  br label %43

110:                                              ; preds = %105
  %111 = call i32* @value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = call i32* @value(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %2, align 4
  %119 = icmp slt i32 %118, 25
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %43

122:                                              ; preds = %116, %113, %110
  br label %128

123:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  %124 = call i64 @execute(i8* %8, i32 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %128

127:                                              ; preds = %123
  br label %43

128:                                              ; preds = %126, %122, %104
  %129 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %129)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @signal(i32, i64) #2

declare dso_local i32 @setexit(...) #2

declare dso_local i32* @value(i8*) #2

declare dso_local i64 @incfile(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @sreset(...) #2

declare dso_local i64 @readline(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @unstack(...) #2

declare dso_local i64 @execute(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
