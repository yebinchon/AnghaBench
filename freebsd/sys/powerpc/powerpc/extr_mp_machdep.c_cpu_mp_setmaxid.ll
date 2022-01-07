; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mp_machdep.c_cpu_mp_setmaxid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mp_machdep.c_cpu_mp_setmaxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32 }

@mp_ncpus = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_setmaxid() #0 {
  %1 = alloca %struct.cpuref, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* @mp_ncpus, align 4
  store i64 0, i64* @mp_maxid, align 8
  %3 = call i32 @platform_smp_first_cpu(%struct.cpuref* %1)
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32, i32* @mp_ncpus, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @mp_ncpus, align 4
  %11 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @mp_maxid, align 8
  %14 = call i64 @max(i32 %12, i64 %13)
  store i64 %14, i64* @mp_maxid, align 8
  %15 = call i32 @platform_smp_next_cpu(%struct.cpuref* %1)
  store i32 %15, i32* %2, align 4
  br label %4

16:                                               ; preds = %4
  %17 = load i32, i32* @mp_ncpus, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* @mp_ncpus, align 4
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @platform_smp_first_cpu(%struct.cpuref*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @platform_smp_next_cpu(%struct.cpuref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
