; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_read_time_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_read_time_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvclock_vcpu_time_info*, i64*, i32*)* @pvclock_read_time_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvclock_read_time_info(%struct.pvclock_vcpu_time_info* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %8

8:                                                ; preds = %37, %3
  %9 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %10 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @rmb()
  %13 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %14 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %17 = call i64 @pvclock_get_nsec_offset(%struct.pvclock_vcpu_time_info* %16)
  %18 = add nsw i64 %15, %17
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  %20 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %21 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @rmb()
  br label %25

25:                                               ; preds = %8
  %26 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %27 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %33 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  br i1 %38, label %8, label %39

39:                                               ; preds = %37
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @pvclock_get_nsec_offset(%struct.pvclock_vcpu_time_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
