; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_getcounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_getcounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nicvf = type { %struct.nicvf_drv_stats, %struct.nicvf_hw_stats }
%struct.nicvf_drv_stats = type { i32, i32, i32, i32 }
%struct.nicvf_hw_stats = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @nicvf_if_getcounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_if_getcounter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.nicvf_hw_stats*, align 8
  %8 = alloca %struct.nicvf_drv_stats*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call %struct.nicvf* @if_getsoftc(%struct.ifnet* %9)
  store %struct.nicvf* %10, %struct.nicvf** %6, align 8
  %11 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %12 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %11, i32 0, i32 1
  store %struct.nicvf_hw_stats* %12, %struct.nicvf_hw_stats** %7, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 0
  store %struct.nicvf_drv_stats* %14, %struct.nicvf_drv_stats** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %45 [
    i32 132, label %16
    i32 129, label %20
    i32 134, label %24
    i32 130, label %28
    i32 133, label %32
    i32 135, label %36
    i32 131, label %37
    i32 128, label %41
  ]

16:                                               ; preds = %2
  %17 = load %struct.nicvf_drv_stats*, %struct.nicvf_drv_stats** %8, align 8
  %18 = getelementptr inbounds %struct.nicvf_drv_stats, %struct.nicvf_drv_stats* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.nicvf_drv_stats*, %struct.nicvf_drv_stats** %8, align 8
  %22 = getelementptr inbounds %struct.nicvf_drv_stats, %struct.nicvf_drv_stats* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %7, align 8
  %26 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %7, align 8
  %30 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %7, align 8
  %34 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.nicvf_drv_stats*, %struct.nicvf_drv_stats** %8, align 8
  %39 = getelementptr inbounds %struct.nicvf_drv_stats, %struct.nicvf_drv_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %2
  %42 = load %struct.nicvf_drv_stats*, %struct.nicvf_drv_stats** %8, align 8
  %43 = getelementptr inbounds %struct.nicvf_drv_stats, %struct.nicvf_drv_stats* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @if_get_counter_default(%struct.ifnet* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41, %37, %36, %32, %28, %24, %20, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nicvf* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
