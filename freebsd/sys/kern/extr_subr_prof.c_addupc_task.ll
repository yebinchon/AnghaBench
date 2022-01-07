; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_addupc_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_addupc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uprof }
%struct.uprof = type { i64, i64, i64 }

@P_PROFIL = common dso_local global i32 0, align 4
@P_STOPPROF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addupc_task(%struct.thread* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.uprof*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %120

19:                                               ; preds = %3
  %20 = load %struct.proc*, %struct.proc** %7, align 8
  %21 = call i32 @PROC_LOCK(%struct.proc* %20)
  %22 = load %struct.proc*, %struct.proc** %7, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @P_PROFIL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load %struct.proc*, %struct.proc** %7, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  br label %120

31:                                               ; preds = %19
  %32 = load %struct.proc*, %struct.proc** %7, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.proc*, %struct.proc** %7, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.uprof* %39, %struct.uprof** %8, align 8
  %40 = load %struct.proc*, %struct.proc** %7, align 8
  %41 = call i32 @PROC_PROFLOCK(%struct.proc* %40)
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.uprof*, %struct.uprof** %8, align 8
  %44 = getelementptr inbounds %struct.uprof, %struct.uprof* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.uprof*, %struct.uprof** %8, align 8
  %50 = call i64 @PC_TO_INDEX(i64 %48, %struct.uprof* %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.uprof*, %struct.uprof** %8, align 8
  %52 = getelementptr inbounds %struct.uprof, %struct.uprof* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %31
  %56 = load %struct.proc*, %struct.proc** %7, align 8
  %57 = call i32 @PROC_PROFUNLOCK(%struct.proc* %56)
  br label %87

58:                                               ; preds = %47
  %59 = load %struct.uprof*, %struct.uprof** %8, align 8
  %60 = getelementptr inbounds %struct.uprof, %struct.uprof* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %9, align 8
  %64 = load %struct.proc*, %struct.proc** %7, align 8
  %65 = call i32 @PROC_PROFUNLOCK(%struct.proc* %64)
  %66 = load %struct.proc*, %struct.proc** %7, align 8
  %67 = call i32 @PROC_UNLOCK(%struct.proc* %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @copyin(i64 %68, i32* %11, i32 4)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %58
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @copyout(i32* %11, i64 %77, i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.proc*, %struct.proc** %7, align 8
  %82 = call i32 @PROC_LOCK(%struct.proc* %81)
  br label %87

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %58
  store i32 1, i32* %12, align 4
  %85 = load %struct.proc*, %struct.proc** %7, align 8
  %86 = call i32 @PROC_LOCK(%struct.proc* %85)
  br label %87

87:                                               ; preds = %84, %80, %55
  %88 = load %struct.proc*, %struct.proc** %7, align 8
  %89 = getelementptr inbounds %struct.proc, %struct.proc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = load %struct.proc*, %struct.proc** %7, align 8
  %95 = getelementptr inbounds %struct.proc, %struct.proc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @P_STOPPROF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.proc*, %struct.proc** %7, align 8
  %102 = getelementptr inbounds %struct.proc, %struct.proc* %101, i32 0, i32 1
  %103 = call i32 @wakeup(i64* %102)
  %104 = load i32, i32* @P_STOPPROF, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.proc*, %struct.proc** %7, align 8
  %107 = getelementptr inbounds %struct.proc, %struct.proc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %100, %93
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.proc*, %struct.proc** %7, align 8
  %116 = call i32 @stopprofclock(%struct.proc* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.proc*, %struct.proc** %7, align 8
  %119 = call i32 @PROC_UNLOCK(%struct.proc* %118)
  br label %120

120:                                              ; preds = %117, %28, %18
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_PROFLOCK(%struct.proc*) #1

declare dso_local i64 @PC_TO_INDEX(i64, %struct.uprof*) #1

declare dso_local i32 @PROC_PROFUNLOCK(%struct.proc*) #1

declare dso_local i64 @copyin(i64, i32*, i32) #1

declare dso_local i64 @copyout(i32*, i64, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @stopprofclock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
