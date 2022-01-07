; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_proc_calc_pctcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_proc_calc_pctcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.kinfo_proc = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@previous_interval = common dso_local global double 0.000000e+00, align 8
@previous_wall_time = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.kinfo_proc*)* @proc_calc_pctcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @proc_calc_pctcpu(%struct.kinfo_proc* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %5 = load double, double* @previous_interval, align 8
  %6 = fcmp une double %5, 0.000000e+00
  br i1 %6, label %7, label %53

7:                                                ; preds = %1
  %8 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %9 = call %struct.kinfo_proc* @get_old_proc(%struct.kinfo_proc* %8)
  store %struct.kinfo_proc* %9, %struct.kinfo_proc** %4, align 8
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %11 = icmp ne %struct.kinfo_proc* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %14 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %17 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sitofp i64 %19 to double
  %21 = load double, double* @previous_interval, align 8
  %22 = fdiv double %20, %21
  store double %22, double* %2, align 8
  br label %58

23:                                               ; preds = %7
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %25 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @previous_wall_time, i32 0, i32 0), align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @previous_wall_time, i32 0, i32 0), align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %39 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @previous_wall_time, i32 0, i32 1), align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37, %23
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load double, double* @previous_interval, align 8
  %50 = fdiv double %48, %49
  store double %50, double* %2, align 8
  br label %58

51:                                               ; preds = %37, %30
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %55 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call double @pctdouble(i32 %56)
  store double %57, double* %2, align 8
  br label %58

58:                                               ; preds = %53, %44, %12
  %59 = load double, double* %2, align 8
  ret double %59
}

declare dso_local %struct.kinfo_proc* @get_old_proc(%struct.kinfo_proc*) #1

declare dso_local double @pctdouble(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
