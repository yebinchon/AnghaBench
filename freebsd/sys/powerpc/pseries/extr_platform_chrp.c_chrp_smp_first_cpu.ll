; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_smp_first_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_smp_first_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpuref = type { i32, i64 }

@platform_cpuref_valid = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@platform_cpuref = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuref*)* @chrp_smp_first_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chrp_smp_first_cpu(i32 %0, %struct.cpuref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuref*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpuref* %1, %struct.cpuref** %5, align 8
  %6 = load i64, i64* @platform_cpuref_valid, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %12 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_cpuref, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %18 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %10, %8
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
