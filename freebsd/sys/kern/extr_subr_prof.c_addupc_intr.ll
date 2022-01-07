; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_addupc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_addupc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.uprof }
%struct.uprof = type { i64, i64 }

@TDP_OWEUPC = common dso_local global i32 0, align 4
@TDF_ASTPENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addupc_intr(%struct.thread* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uprof*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %65

11:                                               ; preds = %3
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.uprof* %17, %struct.uprof** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @PROC_PROFLOCK(%struct.TYPE_5__* %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.uprof*, %struct.uprof** %7, align 8
  %24 = getelementptr inbounds %struct.uprof, %struct.uprof* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %11
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.uprof*, %struct.uprof** %7, align 8
  %30 = call i64 @PC_TO_INDEX(i64 %28, %struct.uprof* %29)
  %31 = load %struct.uprof*, %struct.uprof** %7, align 8
  %32 = getelementptr inbounds %struct.uprof, %struct.uprof* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %11
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @PROC_PROFUNLOCK(%struct.TYPE_5__* %38)
  br label %65

40:                                               ; preds = %27
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @PROC_PROFUNLOCK(%struct.TYPE_5__* %43)
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @TDP_OWEUPC, align 4
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call i32 @thread_lock(%struct.thread* %56)
  %58 = load i32, i32* @TDF_ASTPENDING, align 4
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = call i32 @thread_unlock(%struct.thread* %63)
  br label %65

65:                                               ; preds = %40, %35, %10
  ret void
}

declare dso_local i32 @PROC_PROFLOCK(%struct.TYPE_5__*) #1

declare dso_local i64 @PC_TO_INDEX(i64, %struct.uprof*) #1

declare dso_local i32 @PROC_PROFUNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
