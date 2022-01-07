; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_execfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_execfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@DORETURN = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: after execv(%s), wait() returned: %m\00", align 1
@tempstderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: cannot execv(%s): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer*, i8*, i8**, i32, i32)* @execfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execfilter(%struct.printer* %0, i8* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.printer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @BUFSIZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load %struct.printer*, %struct.printer** %6, align 8
  %25 = load i32, i32* @DORETURN, align 4
  %26 = call i64 @dofork(%struct.printer* %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 100, i32* %14, align 4
  br label %58

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %43, %33
  %35 = call i64 @wait(i32* %15)
  store i64 %35, i64* %12, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %34

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  store i32 100, i32* %14, align 4
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = load %struct.printer*, %struct.printer** %6, align 8
  %50 = getelementptr inbounds %struct.printer, %struct.printer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @syslog(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %52)
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @WEXITSTATUS(i32 %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* @tempstderr, align 4
  %60 = call i32* @fopen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %69, %63
  %65 = trunc i64 %21 to i32
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @fgets(i8* %23, i32 %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fputs(i8* %23, i32 %70)
  br label %64

72:                                               ; preds = %64
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @fclose(i32* %73)
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76

78:                                               ; preds = %5
  %79 = load i8**, i8*** %8, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 47)
  store i8* %82, i8** %19, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8*, i8** %19, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8**, i8*** %8, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @STDIN_FILENO, align 4
  %93 = call i32 @dup2(i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @STDOUT_FILENO, align 4
  %96 = call i32 @dup2(i32 %94, i32 %95)
  %97 = load i32, i32* @tempstderr, align 4
  %98 = load i32, i32* @O_WRONLY, align 4
  %99 = load i32, i32* @O_TRUNC, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @open(i32 %97, i32 %100, i32 436)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %90
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @STDERR_FILENO, align 4
  %107 = call i32 @dup2(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %90
  %109 = call i32 (...) @closelog()
  %110 = call i32 @closeallfds(i32 3)
  %111 = load i8*, i8** %7, align 8
  %112 = load i8**, i8*** %8, align 8
  %113 = call i32 @execv(i8* %111, i8** %112)
  %114 = load i32, i32* @LOG_ERR, align 4
  %115 = load %struct.printer*, %struct.printer** %6, align 8
  %116 = getelementptr inbounds %struct.printer, %struct.printer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @syslog(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %117, i8* %118)
  %120 = call i32 @exit(i32 2) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dofork(%struct.printer*, i32) #2

declare dso_local i64 @wait(i32*) #2

declare dso_local i32 @syslog(i32, i8*, i32, i8*) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @closelog(...) #2

declare dso_local i32 @closeallfds(i32) #2

declare dso_local i32 @execv(i8*, i8**) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
