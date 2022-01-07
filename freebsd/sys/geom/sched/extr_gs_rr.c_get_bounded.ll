; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_get_bounded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_get_bounded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x_bound = type { i32, i32, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x_bound*, i32)* @get_bounded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bounded(%struct.x_bound* %0, i32 %1) #0 {
  %3 = alloca %struct.x_bound*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x_bound* %0, %struct.x_bound** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.x_bound*, %struct.x_bound** %3, align 8
  %7 = getelementptr inbounds %struct.x_bound, %struct.x_bound* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.x_bound*, %struct.x_bound** %3, align 8
  %11 = getelementptr inbounds %struct.x_bound, %struct.x_bound* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.x_bound*, %struct.x_bound** %3, align 8
  %16 = getelementptr inbounds %struct.x_bound, %struct.x_bound* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.x_bound*, %struct.x_bound** %3, align 8
  %21 = getelementptr inbounds %struct.x_bound, %struct.x_bound* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.x_bound*, %struct.x_bound** %3, align 8
  %26 = getelementptr inbounds %struct.x_bound, %struct.x_bound* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @hz, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 1000
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %32
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
