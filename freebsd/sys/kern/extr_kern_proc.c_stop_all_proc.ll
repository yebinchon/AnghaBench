; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_stop_all_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_stop_all_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@curproc = common dso_local global %struct.proc* null, align 8
@allproc_lock = common dso_local global i32 0, align 4
@allproc_gen = common dso_local global i32 0, align 4
@p_list = common dso_local global i32 0, align 4
@allproc = common dso_local global i32 0, align 4
@P_KPROC = common dso_local global i32 0, align 4
@P_SYSTEM = common dso_local global i32 0, align 4
@P_TOTAL_STOP = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@P_STOPPED_SINGLE = common dso_local global i64 0, align 8
@SINGLE_ALLPROC = common dso_local global i32 0, align 4
@PRI_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_all_proc() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %9, %struct.proc** %1, align 8
  br label %10

10:                                               ; preds = %102, %0
  %11 = call i32 @sx_xlock(i32* @allproc_lock)
  %12 = load i32, i32* @allproc_gen, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.proc*, %struct.proc** %1, align 8
  %14 = load i32, i32* @p_list, align 4
  %15 = call i32 @LIST_REMOVE(%struct.proc* %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %1, align 8
  %17 = load i32, i32* @p_list, align 4
  %18 = call i32 @LIST_INSERT_HEAD(i32* @allproc, %struct.proc* %16, i32 %17)
  br label %19

19:                                               ; preds = %78, %64, %56, %46, %10
  %20 = load %struct.proc*, %struct.proc** %1, align 8
  %21 = load i32, i32* @p_list, align 4
  %22 = call %struct.proc* @LIST_NEXT(%struct.proc* %20, i32 %21)
  store %struct.proc* %22, %struct.proc** %2, align 8
  %23 = load %struct.proc*, %struct.proc** %2, align 8
  %24 = icmp eq %struct.proc* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %84

26:                                               ; preds = %19
  %27 = load %struct.proc*, %struct.proc** %1, align 8
  %28 = load i32, i32* @p_list, align 4
  %29 = call i32 @LIST_REMOVE(%struct.proc* %27, i32 %28)
  %30 = load %struct.proc*, %struct.proc** %2, align 8
  %31 = load %struct.proc*, %struct.proc** %1, align 8
  %32 = load i32, i32* @p_list, align 4
  %33 = call i32 @LIST_INSERT_AFTER(%struct.proc* %30, %struct.proc* %31, i32 %32)
  %34 = load %struct.proc*, %struct.proc** %2, align 8
  %35 = call i32 @PROC_LOCK(%struct.proc* %34)
  %36 = load %struct.proc*, %struct.proc** %2, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @P_KPROC, align 4
  %40 = load i32, i32* @P_SYSTEM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @P_TOTAL_STOP, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load %struct.proc*, %struct.proc** %2, align 8
  %48 = call i32 @PROC_UNLOCK(%struct.proc* %47)
  br label %19

49:                                               ; preds = %26
  %50 = load %struct.proc*, %struct.proc** %2, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @P_WEXIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  %57 = load %struct.proc*, %struct.proc** %2, align 8
  %58 = call i32 @PROC_UNLOCK(%struct.proc* %57)
  br label %19

59:                                               ; preds = %49
  %60 = load %struct.proc*, %struct.proc** %2, align 8
  %61 = call i64 @P_SHOULDSTOP(%struct.proc* %60)
  %62 = load i64, i64* @P_STOPPED_SINGLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  %65 = load %struct.proc*, %struct.proc** %2, align 8
  %66 = call i32 @PROC_UNLOCK(%struct.proc* %65)
  br label %19

67:                                               ; preds = %59
  %68 = call i32 @sx_xunlock(i32* @allproc_lock)
  %69 = load %struct.proc*, %struct.proc** %2, align 8
  %70 = call i32 @_PHOLD(%struct.proc* %69)
  %71 = load %struct.proc*, %struct.proc** %2, align 8
  %72 = load i32, i32* @SINGLE_ALLPROC, align 4
  %73 = call i32 @thread_single(%struct.proc* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.proc*, %struct.proc** %2, align 8
  %80 = call i32 @_PRELE(%struct.proc* %79)
  %81 = load %struct.proc*, %struct.proc** %2, align 8
  %82 = call i32 @PROC_UNLOCK(%struct.proc* %81)
  %83 = call i32 @sx_xlock(i32* @allproc_lock)
  br label %19

84:                                               ; preds = %25
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @allproc_gen, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %84
  %90 = call i32 @sx_xunlock(i32* @allproc_lock)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %96, %93, %89
  %103 = load i32, i32* @PRI_USER, align 4
  %104 = call i32 @kern_yield(i32 %103)
  br label %10

105:                                              ; preds = %99
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proc*, i32) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @thread_single(%struct.proc*, i32) #1

declare dso_local i32 @_PRELE(%struct.proc*) #1

declare dso_local i32 @kern_yield(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
