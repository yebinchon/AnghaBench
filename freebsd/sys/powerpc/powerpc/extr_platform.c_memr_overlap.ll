; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_memr_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_memr_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_region*, %struct.mem_region*)* @memr_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memr_overlap(%struct.mem_region* %0, %struct.mem_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_region*, align 8
  %5 = alloca %struct.mem_region*, align 8
  store %struct.mem_region* %0, %struct.mem_region** %4, align 8
  store %struct.mem_region* %1, %struct.mem_region** %5, align 8
  %6 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %7 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %10 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %14 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %19 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %22 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %26 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17, %2
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
