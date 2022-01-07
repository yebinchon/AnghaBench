; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_trace_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_trace_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P2_NOTRACE = common dso_local global i32 0, align 4
@P2_NOTRACE_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dandling P2_NOTRACE_EXEC\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @trace_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_ctl(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.proc*, %struct.proc** %6, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.proc*, %struct.proc** %6, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @P_TRACED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.proc*, %struct.proc** %6, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %4, align 4
  br label %91

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %88 [
    i32 128, label %26
    i32 129, label %43
    i32 130, label %51
  ]

26:                                               ; preds = %24
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.proc*, %struct.proc** %28, align 8
  %30 = load %struct.proc*, %struct.proc** %6, align 8
  %31 = icmp ne %struct.proc* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EPERM, align 4
  store i32 %33, i32* %4, align 4
  br label %91

34:                                               ; preds = %26
  %35 = load i32, i32* @P2_NOTRACE, align 4
  %36 = load i32, i32* @P2_NOTRACE_EXEC, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.proc*, %struct.proc** %6, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %90

43:                                               ; preds = %24
  %44 = load i32, i32* @P2_NOTRACE_EXEC, align 4
  %45 = load i32, i32* @P2_NOTRACE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.proc*, %struct.proc** %6, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %90

51:                                               ; preds = %24
  %52 = load %struct.proc*, %struct.proc** %6, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @P2_NOTRACE_EXEC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load %struct.proc*, %struct.proc** %6, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @P2_NOTRACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @KASSERT(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.thread*, %struct.thread** %5, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 0
  %69 = load %struct.proc*, %struct.proc** %68, align 8
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  %71 = icmp ne %struct.proc* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @EPERM, align 4
  store i32 %73, i32* %4, align 4
  br label %91

74:                                               ; preds = %58
  %75 = load i32, i32* @P2_NOTRACE_EXEC, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.proc*, %struct.proc** %6, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %87

81:                                               ; preds = %51
  %82 = load i32, i32* @P2_NOTRACE, align 4
  %83 = load %struct.proc*, %struct.proc** %6, align 8
  %84 = getelementptr inbounds %struct.proc, %struct.proc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  br label %90

88:                                               ; preds = %24
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %87, %43, %34
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %88, %72, %32, %22
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
