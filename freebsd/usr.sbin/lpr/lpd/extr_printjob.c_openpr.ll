; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_openpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_openpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8**, i32, i64, i64* }

@ofd = common dso_local global i32 0, align 4
@of_pid = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: no line printer device or host name\00", align 1
@LPF_OUTPUT = common dso_local global i64 0, align 8
@LPF_INPUT = common dso_local global i64 0, align 8
@tfile = common dso_local global i32 0, align 4
@TFILENAME = common dso_local global i32 0, align 4
@tfd = common dso_local global i32 0, align 4
@DOABORT = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@pfd = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@length = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: execl(%s): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*)* @openpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpr(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %2, align 8
  %5 = load %struct.printer*, %struct.printer** %2, align 8
  %6 = getelementptr inbounds %struct.printer, %struct.printer* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.printer*, %struct.printer** %2, align 8
  %11 = call i32 @openrem(%struct.printer* %10)
  store i32 -1, i32* @ofd, align 4
  store i64 0, i64* @of_pid, align 8
  br label %144

12:                                               ; preds = %1
  %13 = load %struct.printer*, %struct.printer** %2, align 8
  %14 = getelementptr inbounds %struct.printer, %struct.printer* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.printer*, %struct.printer** %2, align 8
  %20 = getelementptr inbounds %struct.printer, %struct.printer* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = call i32* @strchr(i64* %21, i8 signext 64)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.printer*, %struct.printer** %2, align 8
  %26 = call i32 @opennet(%struct.printer* %25)
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.printer*, %struct.printer** %2, align 8
  %29 = call i32 @opentty(%struct.printer* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %38

31:                                               ; preds = %12
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load %struct.printer*, %struct.printer** %2, align 8
  %34 = getelementptr inbounds %struct.printer, %struct.printer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i32, ...) @syslog(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.printer*, %struct.printer** %2, align 8
  %41 = getelementptr inbounds %struct.printer, %struct.printer* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i64, i64* @LPF_OUTPUT, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %142

47:                                               ; preds = %39
  %48 = load %struct.printer*, %struct.printer** %2, align 8
  %49 = getelementptr inbounds %struct.printer, %struct.printer* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i64, i64* @LPF_INPUT, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %142, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* @of_pid, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %142, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %60 = call i32 @pipe(i32* %59)
  %61 = load %struct.printer*, %struct.printer** %2, align 8
  %62 = getelementptr inbounds %struct.printer, %struct.printer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @tfile, align 4
  %67 = load i32, i32* @TFILENAME, align 4
  %68 = call i32 @strcpy(i32 %66, i32 %67)
  %69 = load i32, i32* @tfile, align 4
  %70 = call i32 @mkstemp(i32 %69)
  store i32 %70, i32* @tfd, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.printer*, %struct.printer** %2, align 8
  %73 = load i32, i32* @DOABORT, align 4
  %74 = call i64 @dofork(%struct.printer* %72, i32 %73)
  store i64 %74, i64* @of_pid, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %136

76:                                               ; preds = %71
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @STDIN_FILENO, align 4
  %80 = call i32 @dup2(i32 %78, i32 %79)
  %81 = load %struct.printer*, %struct.printer** %2, align 8
  %82 = getelementptr inbounds %struct.printer, %struct.printer* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @tfd, align 4
  br label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @pfd, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* @STDOUT_FILENO, align 4
  %92 = call i32 @dup2(i32 %90, i32 %91)
  %93 = call i32 (...) @closelog()
  %94 = call i32 @closeallfds(i32 3)
  %95 = load %struct.printer*, %struct.printer** %2, align 8
  %96 = getelementptr inbounds %struct.printer, %struct.printer* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i64, i64* @LPF_OUTPUT, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @strrchr(i8* %100, i8 signext 47)
  store i8* %101, i8** %4, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %89
  %104 = load %struct.printer*, %struct.printer** %2, align 8
  %105 = getelementptr inbounds %struct.printer, %struct.printer* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @LPF_OUTPUT, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %4, align 8
  br label %113

110:                                              ; preds = %89
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.printer*, %struct.printer** %2, align 8
  %115 = getelementptr inbounds %struct.printer, %struct.printer* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* @LPF_OUTPUT, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* @width, align 4
  %122 = load i32, i32* @length, align 4
  %123 = call i32 @execl(i8* %119, i8* %120, i32 %121, i32 %122, i8* null)
  %124 = load i32, i32* @LOG_ERR, align 4
  %125 = load %struct.printer*, %struct.printer** %2, align 8
  %126 = getelementptr inbounds %struct.printer, %struct.printer* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.printer*, %struct.printer** %2, align 8
  %129 = getelementptr inbounds %struct.printer, %struct.printer* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* @LPF_OUTPUT, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, i32, ...) @syslog(i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %127, i8* %133)
  %135 = call i32 @exit(i32 1) #3
  unreachable

136:                                              ; preds = %71
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @close(i32 %138)
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* @ofd, align 4
  br label %144

142:                                              ; preds = %55, %47, %39
  %143 = load i32, i32* @pfd, align 4
  store i32 %143, i32* @ofd, align 4
  store i64 0, i64* @of_pid, align 8
  br label %144

144:                                              ; preds = %9, %142, %136
  ret void
}

declare dso_local i32 @openrem(%struct.printer*) #1

declare dso_local i32* @strchr(i64*, i8 signext) #1

declare dso_local i32 @opennet(%struct.printer*) #1

declare dso_local i32 @opentty(%struct.printer*) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i64 @dofork(%struct.printer*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @closeallfds(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @execl(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
