; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_smp_next_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_smp_next_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32, i32 }

@cpu = common dso_local global i64 0, align 8
@maxcpu = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"powerpc_smp_next_cpu: cpuid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuref*)* @mpc85xx_smp_next_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_smp_next_cpu(i32 %0, %struct.cpuref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuref*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpuref* %1, %struct.cpuref** %5, align 8
  %6 = load i64, i64* @cpu, align 8
  %7 = load i64, i64* @maxcpu, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  store i32 %10, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* @cpu, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @cpu, align 8
  %14 = trunc i64 %12 to i32
  %15 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %16 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %18 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %21 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* @bootverbose, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %11
  %25 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %26 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %11
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
