; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_update_nirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_update_nirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intrs_and_queues = type { i32, i32, i32, i32, i32, i32, i32 }

@T4_EXTRA_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intrs_and_queues*, i32)* @update_nirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_nirq(%struct.intrs_and_queues* %0, i32 %1) #0 {
  %3 = alloca %struct.intrs_and_queues*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intrs_and_queues* %0, %struct.intrs_and_queues** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @T4_EXTRA_INTR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %9 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %12 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %15 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = mul nsw i32 %10, %17
  %19 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %20 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %25 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = mul nsw i32 %23, %27
  %29 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %30 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %33 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @max(i32 %31, i32 %34)
  %36 = mul nsw i32 %28, %35
  %37 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %38 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %43 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 %41, %45
  %47 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %48 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %3, align 8
  %52 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
