; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_dmi_check_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_dmi_check_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i64 (%struct.dmi_system_id*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmi_check_system(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = alloca %struct.dmi_system_id*, align 8
  %4 = alloca i32, align 4
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  store %struct.dmi_system_id* %5, %struct.dmi_system_id** %3, align 8
  br label %6

6:                                                ; preds = %33, %1
  %7 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %8 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %6
  %15 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %16 = call i64 @dmi_found(%struct.dmi_system_id* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  %19 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %20 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %19, i32 0, i32 0
  %21 = load i64 (%struct.dmi_system_id*)*, i64 (%struct.dmi_system_id*)** %20, align 8
  %22 = icmp ne i64 (%struct.dmi_system_id*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %25 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %24, i32 0, i32 0
  %26 = load i64 (%struct.dmi_system_id*)*, i64 (%struct.dmi_system_id*)** %25, align 8
  %27 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %28 = call i64 %26(%struct.dmi_system_id* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %36

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %14
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %35 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %34, i32 1
  store %struct.dmi_system_id* %35, %struct.dmi_system_id** %3, align 8
  br label %6

36:                                               ; preds = %30, %6
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @dmi_found(%struct.dmi_system_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
