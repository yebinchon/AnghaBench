; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_sendmail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_sendmail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8* }
%struct.stat = type { i32 }

@DORETURN = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@_PATH_SENDMAIL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"To: %s@%s\0A\00", align 1
@origin_host = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Subject: %s printer job \22%s\22\0A\00", align 1
@jobname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Reply-To: root@%s\0A\0A\00", align 1
@local_host = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Your printer job \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\0Acompleted successfully\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"FATALERR\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\0Acould not be printed\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"NOACCT\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"\0Acould not be printed without an account on %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"FILTERERR\00", align 1
@tempstderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\0Ahad some errors and may not have printed\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"\0Ahad the following errors and may not have printed:\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"ACCESS\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"\0Awas not printed because it was not linked to the original file\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"unable to send mail to %s: %m\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [53 x i8] c"mail sent to user %s about job %s on printer %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*, i8*, i32)* @sendmail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendmail(%struct.printer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32*, align 8
  store %struct.printer* %0, %struct.printer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %14 = call i32 @pipe(i32* %13)
  %15 = load %struct.printer*, %struct.printer** %4, align 8
  %16 = load i32, i32* @DORETURN, align 4
  %17 = call i32 @dofork(%struct.printer* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STDIN_FILENO, align 4
  %23 = call i32 @dup2(i32 %21, i32 %22)
  %24 = call i32 (...) @closelog()
  %25 = call i32 @closeallfds(i32 3)
  %26 = load i8*, i8** @_PATH_SENDMAIL, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  br label %34

32:                                               ; preds = %19
  %33 = load i8*, i8** @_PATH_SENDMAIL, align 8
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** @_PATH_SENDMAIL, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @execl(i8* %35, i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null)
  %38 = call i32 @_exit(i32 0) #3
  unreachable

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @STDOUT_FILENO, align 4
  %46 = call i32 @dup2(i32 %44, i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** @origin_host, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.printer*, %struct.printer** %4, align 8
  %51 = getelementptr inbounds %struct.printer, %struct.printer* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @jobname, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i8*, i8** @jobname, align 8
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %59 ]
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %61)
  %63 = load i8*, i8** @local_host, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** @jobname, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i8*, i8** @jobname, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %76 [
    i32 128, label %74
    i32 131, label %77
    i32 129, label %79
    i32 130, label %82
    i32 132, label %109
  ]

74:                                               ; preds = %72
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %111

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %72, %76
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %111

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  %80 = load i8*, i8** @local_host, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* %80)
  br label %111

82:                                               ; preds = %72
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  %83 = load i32, i32* @tempstderr, align 4
  %84 = call i32 @stat(i32 %83, %struct.stat* %11)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @tempstderr, align 4
  %92 = call i32* @fopen(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32* %92, i32** %12, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %86, %82
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  br label %111

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  br label %98

98:                                               ; preds = %103, %96
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @getc(i32* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @EOF, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @putchar(i32 %104)
  br label %98

106:                                              ; preds = %98
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @fclose(i32* %107)
  br label %111

109:                                              ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106, %94, %79, %77, %74
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fflush(i32 %112)
  %114 = load i32, i32* @STDOUT_FILENO, align 4
  %115 = call i32 @close(i32 %114)
  br label %120

116:                                              ; preds = %39
  %117 = load i32, i32* @LOG_WARNING, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* %118)
  br label %145

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @close(i32 %123)
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @close(i32 %126)
  %128 = call i32 @wait(i32* null)
  %129 = load i32, i32* @LOG_INFO, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** @jobname, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load i8*, i8** @jobname, align 8
  br label %138

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %137 ]
  %140 = load %struct.printer*, %struct.printer** %4, align 8
  %141 = getelementptr inbounds %struct.printer, %struct.printer* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %129, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i8* %130, i8* %139, i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %138, %116
  ret void
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @dofork(%struct.printer*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @closeallfds(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
