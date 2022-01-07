; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chap = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@SIGTERM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Chap: wait: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Chap: Child received signal %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Chap: Child exited %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chap*, i32)* @chap_Cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_Cleanup(%struct.chap* %0, i32 %1) #0 {
  %3 = alloca %struct.chap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.chap* %0, %struct.chap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.chap*, %struct.chap** %3, align 8
  %7 = getelementptr inbounds %struct.chap, %struct.chap* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = load %struct.chap*, %struct.chap** %3, align 8
  %13 = getelementptr inbounds %struct.chap, %struct.chap* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @close(i32 %15)
  %17 = load %struct.chap*, %struct.chap** %3, align 8
  %18 = getelementptr inbounds %struct.chap, %struct.chap* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.chap*, %struct.chap** %3, align 8
  %24 = getelementptr inbounds %struct.chap, %struct.chap* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = call i32 @kill(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %11
  %30 = load %struct.chap*, %struct.chap** %3, align 8
  %31 = getelementptr inbounds %struct.chap, %struct.chap* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.chap*, %struct.chap** %3, align 8
  %34 = getelementptr inbounds %struct.chap, %struct.chap* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = call i32 @wait(i32* %5)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* @LogERROR, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i64 @strerror(i32 %41)
  %43 = call i32 @log_Printf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %68

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @WIFSIGNALED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @LogWARN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @WTERMSIG(i32 %50)
  %52 = call i32 @log_Printf(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  br label %67

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @WIFEXITED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @WEXITSTATUS(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @LogERROR, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @WEXITSTATUS(i32 %63)
  %65 = call i32 @log_Printf(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %61, %57, %53
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68, %2
  %70 = load %struct.chap*, %struct.chap** %3, align 8
  %71 = getelementptr inbounds %struct.chap, %struct.chap* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8 0, i8* %73, align 1
  %74 = load %struct.chap*, %struct.chap** %3, align 8
  %75 = getelementptr inbounds %struct.chap, %struct.chap* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8 0, i8* %77, align 1
  %78 = load %struct.chap*, %struct.chap** %3, align 8
  %79 = getelementptr inbounds %struct.chap, %struct.chap* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
