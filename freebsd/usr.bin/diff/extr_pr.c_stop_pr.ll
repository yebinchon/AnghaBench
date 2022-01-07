; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_pr.c_stop_pr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_pr.c_stop_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pr exited abnormally\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pr killed by signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_pr(%struct.pr* %0) #0 {
  %2 = alloca %struct.pr*, align 8
  %3 = alloca i32, align 4
  store %struct.pr* %0, %struct.pr** %2, align 8
  %4 = load %struct.pr*, %struct.pr** %2, align 8
  %5 = icmp eq %struct.pr* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %69

7:                                                ; preds = %1
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = load %struct.pr*, %struct.pr** %2, align 8
  %11 = getelementptr inbounds %struct.pr, %struct.pr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STDOUT_FILENO, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = load i64, i64* @STDOUT_FILENO, align 8
  %17 = call i32 @close(i64 %16)
  %18 = load %struct.pr*, %struct.pr** %2, align 8
  %19 = getelementptr inbounds %struct.pr, %struct.pr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STDOUT_FILENO, align 8
  %22 = call i32 @dup2(i64 %20, i64 %21)
  %23 = load %struct.pr*, %struct.pr** %2, align 8
  %24 = getelementptr inbounds %struct.pr, %struct.pr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @close(i64 %25)
  br label %27

27:                                               ; preds = %15, %7
  %28 = load %struct.pr*, %struct.pr** %2, align 8
  %29 = getelementptr inbounds %struct.pr, %struct.pr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pr*, %struct.pr** %2, align 8
  %32 = getelementptr inbounds %struct.pr, %struct.pr* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @kevent(i64 %30, i32* null, i32 0, %struct.TYPE_2__* %33, i32 1, i32* null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load %struct.pr*, %struct.pr** %2, align 8
  %40 = getelementptr inbounds %struct.pr, %struct.pr* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  %45 = load %struct.pr*, %struct.pr** %2, align 8
  %46 = getelementptr inbounds %struct.pr, %struct.pr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @close(i64 %47)
  %49 = load %struct.pr*, %struct.pr** %2, align 8
  %50 = call i32 @free(%struct.pr* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @WIFEXITED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @WEXITSTATUS(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %69

60:                                               ; preds = %54, %38
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @WIFSIGNALED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @WTERMSIG(i32 %65)
  %67 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %6, %68, %58
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @dup2(i64, i64) #1

declare dso_local i32 @kevent(i64, i32*, i32, %struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @free(%struct.pr*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
