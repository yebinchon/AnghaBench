; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_cpu_pcpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_cpu_pcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.intr_request*, %struct.intr_request*, i32, i32* }
%struct.intr_request = type { %struct.intr_request* }

@IR_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_pcpu_init(%struct.pcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.intr_request*, align 8
  %8 = alloca i32, align 4
  store %struct.pcpu* %0, %struct.pcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %10 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %9, i32 0, i32 2
  %11 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %12 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IR_FREE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %19 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %18, i32 0, i32 1
  %20 = load %struct.intr_request*, %struct.intr_request** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.intr_request, %struct.intr_request* %20, i64 %22
  store %struct.intr_request* %23, %struct.intr_request** %7, align 8
  %24 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %25 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %24, i32 0, i32 0
  %26 = load %struct.intr_request*, %struct.intr_request** %25, align 8
  %27 = load %struct.intr_request*, %struct.intr_request** %7, align 8
  %28 = getelementptr inbounds %struct.intr_request, %struct.intr_request* %27, i32 0, i32 0
  store %struct.intr_request* %26, %struct.intr_request** %28, align 8
  %29 = load %struct.intr_request*, %struct.intr_request** %7, align 8
  %30 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %31 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %30, i32 0, i32 0
  store %struct.intr_request* %29, %struct.intr_request** %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %13

35:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
