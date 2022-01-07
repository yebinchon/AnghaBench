; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_counter.c_counter_ratecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_counter.c_counter_ratecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_rate = type { i32, i32, i64, i32 }

@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_ratecheck(%struct.counter_rate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_rate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.counter_rate* %0, %struct.counter_rate** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %9 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @ticks, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %14 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @hz, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %22 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %27 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %26, i32 0, i32 2
  %28 = call i64 @atomic_cmpset_acq_int(i64* %27, i32 0, i32 1)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %33 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @hz, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %41 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @counter_u64_fetch(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %45 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @counter_u64_zero(i32 %46)
  %48 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %49 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %52 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %60 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %59, i32 0, i32 2
  %61 = call i32 @atomic_store_rel_int(i64* %60, i32 0)
  br label %64

62:                                               ; preds = %25, %20
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %87

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %67 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @counter_u64_add(i32 %68, i32 1)
  %70 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %71 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %77 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @counter_u64_fetch(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.counter_rate*, %struct.counter_rate** %4, align 8
  %84 = getelementptr inbounds %struct.counter_rate, %struct.counter_rate* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  store i32 -1, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %74, %62
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @atomic_cmpset_acq_int(i64*, i32, i32) #1

declare dso_local i32 @counter_u64_fetch(i32) #1

declare dso_local i32 @counter_u64_zero(i32) #1

declare dso_local i32 @atomic_store_rel_int(i64*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
