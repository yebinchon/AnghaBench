; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_pr.c_start_pr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_pr.c_start_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@diffargs = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@PD_CLOEXEC = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No more processes\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@_PATH_PR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@EVFILT_PROCDESC = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pr* @start_pr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call %struct.pr* @xcalloc(i32 1, i32 12)
  store %struct.pr* %10, %struct.pr** %9, align 8
  %11 = load i32, i32* @diffargs, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12, i8* %13)
  %15 = load i32, i32* @SIGPIPE, align 4
  %16 = load i32, i32* @SIG_IGN, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @rewind(i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %23 = call i32 @pipe(i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i32, i32* @PD_CLOEXEC, align 4
  %29 = call i32 @pdfork(i32* %6, i32 %28)
  store i32 %29, i32* %7, align 4
  switch i32 %29, label %58 [
    i32 -1, label %30
    i32 0, label %36
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @status, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* @status, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  %35 = call i32 @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %27, %30
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STDIN_FILENO, align 4
  %45 = call i32 @dup2(i32 %43, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* @_PATH_PR, align 4
  %54 = load i32, i32* @_PATH_PR, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @execl(i32 %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* null)
  %57 = call i32 @_exit(i32 127) #3
  unreachable

58:                                               ; preds = %27
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @STDOUT_FILENO, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* @STDOUT_FILENO, align 4
  %65 = call i32 @dup(i32 %64)
  %66 = load %struct.pr*, %struct.pr** %9, align 8
  %67 = getelementptr inbounds %struct.pr, %struct.pr* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @STDOUT_FILENO, align 4
  %71 = call i32 @dup2(i32 %69, i32 %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %63, %58
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @rewind(i32 %82)
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @free(i8* %84)
  %86 = call i32 (...) @kqueue()
  %87 = load %struct.pr*, %struct.pr** %9, align 8
  %88 = getelementptr inbounds %struct.pr, %struct.pr* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pr*, %struct.pr** %9, align 8
  %90 = getelementptr inbounds %struct.pr, %struct.pr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = call i32 @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %78
  %96 = call i32 @xmalloc(i32 4)
  %97 = load %struct.pr*, %struct.pr** %9, align 8
  %98 = getelementptr inbounds %struct.pr, %struct.pr* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.pr*, %struct.pr** %9, align 8
  %100 = getelementptr inbounds %struct.pr, %struct.pr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @EVFILT_PROCDESC, align 4
  %104 = load i32, i32* @EV_ADD, align 4
  %105 = load i32, i32* @NOTE_EXIT, align 4
  %106 = call i32 @EV_SET(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 0, i32* null)
  %107 = load %struct.pr*, %struct.pr** %9, align 8
  %108 = getelementptr inbounds %struct.pr, %struct.pr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pr*, %struct.pr** %9, align 8
  %111 = getelementptr inbounds %struct.pr, %struct.pr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @kevent(i32 %109, i32 %112, i32 1, i32* null, i32 0, i32* null)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %95
  %116 = call i32 @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %95
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.pr*, %struct.pr** %9, align 8
  ret %struct.pr* %119
}

declare dso_local %struct.pr* @xcalloc(i32, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @rewind(i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execl(i32, i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @EV_SET(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
