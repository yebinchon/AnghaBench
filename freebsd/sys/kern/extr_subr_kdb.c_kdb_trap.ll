; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kdb_dbbe = type { i32 (i32, i32)*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.trapframe = type { i32 }

@kdb_dbbe = common dso_local global %struct.kdb_dbbe* null, align 8
@kdb_active = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@kdb_frame = common dso_local global %struct.trapframe* null, align 8
@kdb_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Switching to %s back-end\0A\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@stopped_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_trap(i32 %0, i32 %1, %struct.trapframe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.kdb_dbbe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.trapframe* %2, %struct.trapframe** %7, align 8
  %12 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** @kdb_dbbe, align 8
  store %struct.kdb_dbbe* %12, %struct.kdb_dbbe** %8, align 8
  %13 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %14 = icmp eq %struct.kdb_dbbe* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %17 = getelementptr inbounds %struct.kdb_dbbe, %struct.kdb_dbbe* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = icmp eq i32 (i32, i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %84

21:                                               ; preds = %15
  %22 = load i64, i64* @kdb_active, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %84

25:                                               ; preds = %21
  %26 = call i32 (...) @intr_disable()
  store i32 %26, i32* %9, align 4
  %27 = call i32 (...) @SCHEDULER_STOPPED()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i32 1, i32* %11, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* @kdb_active, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @kdb_active, align 8
  %36 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %36, %struct.trapframe** @kdb_frame, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @kdb_cpu_trap(i32 %37, i32 %38)
  %40 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %41 = call i32 @makectx(%struct.trapframe* %40, i32* @kdb_pcb)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %43 = call i32 @kdb_thr_select(%struct.TYPE_3__* %42)
  %44 = call i32 (...) @cngrab()
  br label %45

45:                                               ; preds = %66, %33
  %46 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %47 = getelementptr inbounds %struct.kdb_dbbe, %struct.kdb_dbbe* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %48(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %53 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** @kdb_dbbe, align 8
  %54 = icmp eq %struct.kdb_dbbe* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %71

56:                                               ; preds = %45
  %57 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** @kdb_dbbe, align 8
  store %struct.kdb_dbbe* %57, %struct.kdb_dbbe** %8, align 8
  %58 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %59 = icmp eq %struct.kdb_dbbe* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %62 = getelementptr inbounds %struct.kdb_dbbe, %struct.kdb_dbbe* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = icmp eq i32 (i32, i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %56
  br label %71

66:                                               ; preds = %60
  %67 = load %struct.kdb_dbbe*, %struct.kdb_dbbe** %8, align 8
  %68 = getelementptr inbounds %struct.kdb_dbbe, %struct.kdb_dbbe* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %69)
  br label %45

71:                                               ; preds = %65, %55
  %72 = call i32 (...) @cnungrab()
  %73 = load i64, i64* @kdb_active, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* @kdb_active, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @intr_restore(i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %24, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @kdb_cpu_trap(i32, i32) #1

declare dso_local i32 @makectx(%struct.trapframe*, i32*) #1

declare dso_local i32 @kdb_thr_select(%struct.TYPE_3__*) #1

declare dso_local i32 @cngrab(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @cnungrab(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
