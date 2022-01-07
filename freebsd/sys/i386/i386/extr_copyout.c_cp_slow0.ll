; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_cp_slow0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_cp_slow0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pcpu = type { i32, i32, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_6__* null, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_QUICK_NOFAULT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@TDP_NOFAULTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_slow0(i64 %0, i64 %1, i32 %2, void (i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pcpu*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store void (i64, i8*)* %3, void (i64, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @trunc_page(i64 %20)
  %22 = sub nsw i64 %19, %21
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @howmany(i64 %24, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %29 = call i32 @nitems(i32* %28)
  %30 = icmp sle i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @MPASS(i32 %31)
  store i32 0, i32* %15, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curproc, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %45

43:                                               ; preds = %5
  %44 = load i32, i32* @VM_PROT_READ, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* @VM_PROT_QUICK_NOFAULT, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %51 = call i32 @nitems(i32* %50)
  %52 = call i32 @vm_fault_quick_hold_pages(i32* %36, i64 %37, i64 %38, i32 %48, i32* %49, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @EFAULT, align 4
  store i32 %57, i32* %6, align 4
  br label %119

58:                                               ; preds = %45
  %59 = call i32 (...) @sched_pin()
  %60 = call %struct.pcpu* (...) @get_pcpu()
  store %struct.pcpu* %60, %struct.pcpu** %12, align 8
  %61 = call i32 (...) @THREAD_CAN_SLEEP()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TDP_NOFAULTING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68, %63, %58
  store i32 0, i32* %18, align 4
  %76 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %77 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %76, i32 0, i32 0
  %78 = call i32 @mtx_lock(i32* %77)
  %79 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %80 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %14, align 8
  br label %89

82:                                               ; preds = %68
  store i32 1, i32* %18, align 4
  %83 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %84 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %83, i32 0, i32 1
  %85 = call i32 @sx_xlock(i32* %84)
  %86 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %87 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* %17, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %93 = call i32 @pmap_cp_slow0_map(i64 %90, i32 %91, i32* %92)
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @trunc_page(i64 %95)
  %97 = sub nsw i64 %94, %96
  %98 = load i64, i64* %14, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %14, align 8
  %100 = load void (i64, i8*)*, void (i64, i8*)** %10, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i8*, i8** %11, align 8
  call void %100(i64 %101, i8* %102)
  %103 = call i32 (...) @sched_unpin()
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %89
  %107 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %108 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %107, i32 0, i32 1
  %109 = call i32 @sx_xunlock(i32* %108)
  br label %114

110:                                              ; preds = %89
  %111 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %112 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %111, i32 0, i32 0
  %113 = call i32 @mtx_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @vm_page_unhold_pages(i32* %115, i32 %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %56
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @vm_fault_quick_hold_pages(i32*, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local %struct.pcpu* @get_pcpu(...) #1

declare dso_local i32 @THREAD_CAN_SLEEP(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @pmap_cp_slow0_map(i64, i32, i32*) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_page_unhold_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
