; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pcpu.c_pcpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pcpu.c_pcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pcpu_init: invalid cpuid %d\00", align 1
@cpuid_to_pcpu = common dso_local global %struct.pcpu** null, align 8
@cpuhead = common dso_local global i32 0, align 4
@pc_allcpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcpu_init(%struct.pcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pcpu* %0, %struct.pcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @bzero(%struct.pcpu* %7, i64 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAXCPU, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %25 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %27 = load %struct.pcpu**, %struct.pcpu*** @cpuid_to_pcpu, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pcpu*, %struct.pcpu** %27, i64 %29
  store %struct.pcpu* %26, %struct.pcpu** %30, align 8
  %31 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %32 = load i32, i32* @pc_allcpu, align 4
  %33 = call i32 @STAILQ_INSERT_TAIL(i32* @cpuhead, %struct.pcpu* %31, i32 %32)
  %34 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @cpu_pcpu_init(%struct.pcpu* %34, i32 %35, i64 %36)
  %38 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %39 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %38, i32 0, i32 1
  %40 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %41 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %44 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %43, i32 0, i32 1
  %45 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %46 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %47, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.pcpu*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pcpu*, i32) #1

declare dso_local i32 @cpu_pcpu_init(%struct.pcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
