; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_new_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_new_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pcpu_state = type { i32, i32, i32, i32 }

@busy = common dso_local global i64 0, align 8
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"new co at %d:    on %d at %d.%08x - %d.%08x\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Absent CPU %d\00", align 1
@timerstate = common dso_local global i32 0, align 4
@periodic = common dso_local global i64 0, align 8
@timer = common dso_local global %struct.TYPE_2__* null, align 8
@ET_FLAGS_PERCPU = common dso_local global i32 0, align 4
@IPI_HARDCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_new_callout(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu_state*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @busy, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %84

11:                                               ; preds = %3
  %12 = load i32, i32* @KTR_SPARE2, align 4
  %13 = load i32, i32* @curcpu, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 32
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CTR6(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %16, i32 %17, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CPU_ABSENT(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @timerstate, align 4
  %33 = call %struct.pcpu_state* @DPCPU_ID_PTR(i32 %31, i32 %32)
  store %struct.pcpu_state* %33, %struct.pcpu_state** %7, align 8
  %34 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %35 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %38 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %41 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %11
  br label %76

45:                                               ; preds = %11
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %48 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %51 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %76

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %58 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* @periodic, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %76

62:                                               ; preds = %55
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ET_FLAGS_PERCPU, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @curcpu, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %62
  %74 = call i32 (...) @sbinuptime()
  %75 = call i32 @loadtimer(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %73, %61, %54, %44
  %77 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %78 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %77)
  br label %84

79:                                               ; preds = %69
  %80 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %81 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.pcpu_state*, %struct.pcpu_state** %7, align 8
  %83 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %82)
  br label %84

84:                                               ; preds = %79, %76, %10
  ret void
}

declare dso_local i32 @CTR6(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CPU_ABSENT(i32) #1

declare dso_local %struct.pcpu_state* @DPCPU_ID_PTR(i32, i32) #1

declare dso_local i32 @ET_HW_LOCK(%struct.pcpu_state*) #1

declare dso_local i32 @loadtimer(i32, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @ET_HW_UNLOCK(%struct.pcpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
