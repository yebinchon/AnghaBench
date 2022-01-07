; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_norfproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_norfproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32, %struct.filedesc* }
%struct.filedesc = type { i32 }

@RFPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"fork_norfproc called with RFPROC set\00", align 1
@P_HADTHREADS = common dso_local global i32 0, align 4
@P_SYSTEM = common dso_local global i32 0, align 4
@RFCFDG = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@SINGLE_BOUNDARY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @fork_norfproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_norfproc(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.filedesc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RFPROC, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @P_HADTHREADS, align 4
  %22 = load i32, i32* @P_SYSTEM, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @P_HADTHREADS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @RFCFDG, align 4
  %30 = load i32, i32* @RFFDG, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = call i32 @PROC_LOCK(%struct.proc* %35)
  %37 = load %struct.proc*, %struct.proc** %7, align 8
  %38 = load i32, i32* @SINGLE_BOUNDARY, align 4
  %39 = call i64 @thread_single(%struct.proc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.proc*, %struct.proc** %7, align 8
  %43 = call i32 @PROC_UNLOCK(%struct.proc* %42)
  %44 = load i32, i32* @ERESTART, align 4
  store i32 %44, i32* %3, align 4
  br label %108

45:                                               ; preds = %34
  %46 = load %struct.proc*, %struct.proc** %7, align 8
  %47 = call i32 @PROC_UNLOCK(%struct.proc* %46)
  br label %48

48:                                               ; preds = %45, %27, %2
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vm_forkproc(%struct.thread* %49, i32* null, i32* null, i32* null, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %81

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RFCFDG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load %struct.proc*, %struct.proc** %62, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 1
  %65 = load %struct.filedesc*, %struct.filedesc** %64, align 8
  %66 = call %struct.filedesc* @fdinit(%struct.filedesc* %65, i32 0)
  store %struct.filedesc* %66, %struct.filedesc** %8, align 8
  %67 = load %struct.thread*, %struct.thread** %4, align 8
  %68 = call i32 @fdescfree(%struct.thread* %67)
  %69 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %70 = load %struct.proc*, %struct.proc** %7, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 1
  store %struct.filedesc* %69, %struct.filedesc** %71, align 8
  br label %72

72:                                               ; preds = %60, %55
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @RFFDG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.thread*, %struct.thread** %4, align 8
  %79 = call i32 @fdunshare(%struct.thread* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.proc*, %struct.proc** %7, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @P_HADTHREADS, align 4
  %86 = load i32, i32* @P_SYSTEM, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* @P_HADTHREADS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %81
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @RFCFDG, align 4
  %94 = load i32, i32* @RFFDG, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.proc*, %struct.proc** %7, align 8
  %100 = call i32 @PROC_LOCK(%struct.proc* %99)
  %101 = load %struct.proc*, %struct.proc** %7, align 8
  %102 = load i32, i32* @SINGLE_BOUNDARY, align 4
  %103 = call i32 @thread_single_end(%struct.proc* %101, i32 %102)
  %104 = load %struct.proc*, %struct.proc** %7, align 8
  %105 = call i32 @PROC_UNLOCK(%struct.proc* %104)
  br label %106

106:                                              ; preds = %98, %91, %81
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %41
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @thread_single(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @vm_forkproc(%struct.thread*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.filedesc* @fdinit(%struct.filedesc*, i32) #1

declare dso_local i32 @fdescfree(%struct.thread*) #1

declare dso_local i32 @fdunshare(%struct.thread*) #1

declare dso_local i32 @thread_single_end(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
