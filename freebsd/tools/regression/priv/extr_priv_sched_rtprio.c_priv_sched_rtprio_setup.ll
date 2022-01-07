; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_rtprio.c_priv_sched_rtprio_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_rtprio.c_priv_sched_rtprio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64 }

@priv_sched_rtprio_aproc_normal = common dso_local global i64 0, align 8
@priv_sched_rtprio_aproc_idle = common dso_local global i64 0, align 8
@priv_sched_rtprio_aproc_realtime = common dso_local global i64 0, align 8
@priv_sched_rtprio_myproc_normal = common dso_local global i64 0, align 8
@priv_sched_rtprio_myproc_idle = common dso_local global i64 0, align 8
@priv_sched_rtprio_myproc_realtime = common dso_local global i64 0, align 8
@childproc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"priv_sched_setup: fork\00", align 1
@UID_THIRD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"setresuid(%d)\00", align 1
@childproc_running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_sched_rtprio_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.test*, %struct.test** %7, align 8
  %11 = getelementptr inbounds %struct.test, %struct.test* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @priv_sched_rtprio_aproc_normal, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load %struct.test*, %struct.test** %7, align 8
  %17 = getelementptr inbounds %struct.test, %struct.test* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @priv_sched_rtprio_aproc_idle, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.test*, %struct.test** %7, align 8
  %23 = getelementptr inbounds %struct.test, %struct.test* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @priv_sched_rtprio_aproc_realtime, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15, %3
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.test*, %struct.test** %7, align 8
  %30 = getelementptr inbounds %struct.test, %struct.test* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @priv_sched_rtprio_myproc_normal, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.test*, %struct.test** %7, align 8
  %36 = getelementptr inbounds %struct.test, %struct.test* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @priv_sched_rtprio_myproc_idle, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.test*, %struct.test** %7, align 8
  %42 = getelementptr inbounds %struct.test, %struct.test* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @priv_sched_rtprio_myproc_realtime, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34, %28
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = call i64 (...) @fork()
  store i64 %51, i64* @childproc, align 8
  %52 = load i64, i64* @childproc, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %78

56:                                               ; preds = %50
  %57 = load i64, i64* @childproc, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* @UID_THIRD, align 4
  %64 = load i32, i32* @UID_THIRD, align 4
  %65 = load i32, i32* @UID_THIRD, align 4
  %66 = call i64 @setresuid(i32 %63, i32 %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @UID_THIRD, align 4
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %73
  %74 = call i32 @sleep(i32 1)
  br label %73

75:                                               ; preds = %56
  store i32 1, i32* @childproc_running, align 4
  %76 = call i32 @sleep(i32 1)
  br label %77

77:                                               ; preds = %75, %47
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
