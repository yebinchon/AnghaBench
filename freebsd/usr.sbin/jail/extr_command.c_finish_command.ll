; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_finish_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32, i64*, i64, i32* }

@JF_SLEEPQ = common dso_local global i32 0, align 4
@IP_STOP_TIMEOUT = common dso_local global i64 0, align 8
@JF_TIMEOUT = common dso_local global i32 0, align 4
@paralimit = common dso_local global i32 0, align 4
@runnable = common dso_local global i32 0, align 4
@JF_FROM_RUNQ = common dso_local global i32 0, align 4
@ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: timed out\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: exited on signal %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s: failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_command(%struct.cfjail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfjail*, align 8
  %4 = alloca %struct.cfjail*, align 8
  %5 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %3, align 8
  %6 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %7 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @JF_SLEEPQ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

13:                                               ; preds = %1
  %14 = load i32, i32* @JF_SLEEPQ, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %17 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %21 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IP_STOP_TIMEOUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load i32, i32* @JF_TIMEOUT, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %30 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %34 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %126

35:                                               ; preds = %13
  %36 = load i32, i32* @paralimit, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @paralimit, align 4
  %38 = call i32 @TAILQ_EMPTY(i32* @runnable)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = call %struct.cfjail* @TAILQ_FIRST(i32* @runnable)
  store %struct.cfjail* %41, %struct.cfjail** %4, align 8
  %42 = load i32, i32* @JF_FROM_RUNQ, align 4
  %43 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %44 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %48 = call i32 @requeue(%struct.cfjail* %47, i32* @ready)
  br label %49

49:                                               ; preds = %40, %35
  store i32 0, i32* %5, align 4
  %50 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %51 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @JF_TIMEOUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load i32, i32* @JF_TIMEOUT, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %60 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %64 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IP_STOP_TIMEOUT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %71 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %72 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 (%struct.cfjail*, i8*, i32*, ...) @jail_warnx(%struct.cfjail* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %73)
  %75 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %76 = call i32 @failed(%struct.cfjail* %75)
  store i32 -1, i32* %5, align 4
  br label %84

77:                                               ; preds = %56
  %78 = load i64, i64* @verbose, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %82 = call i32 @jail_note(%struct.cfjail* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %69
  br label %118

85:                                               ; preds = %49
  %86 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %87 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %92 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @WIFSIGNALED(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %98 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %99 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %102 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @WTERMSIG(i64 %103)
  %105 = call i32 (%struct.cfjail*, i8*, i32*, ...) @jail_warnx(%struct.cfjail* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %100, i32 %104)
  br label %112

106:                                              ; preds = %90
  %107 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %108 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %109 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (%struct.cfjail*, i8*, i32*, ...) @jail_warnx(%struct.cfjail* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %106, %96
  %113 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %114 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %116 = call i32 @failed(%struct.cfjail* %115)
  store i32 -1, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %85
  br label %118

118:                                              ; preds = %117, %84
  %119 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %120 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %124 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %123, i32 0, i32 3
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %118, %26, %12
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cfjail* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @requeue(%struct.cfjail*, i32*) #1

declare dso_local i32 @jail_warnx(%struct.cfjail*, i8*, i32*, ...) #1

declare dso_local i32 @failed(%struct.cfjail*) #1

declare dso_local i32 @jail_note(%struct.cfjail*, i8*) #1

declare dso_local i64 @WIFSIGNALED(i64) #1

declare dso_local i32 @WTERMSIG(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
