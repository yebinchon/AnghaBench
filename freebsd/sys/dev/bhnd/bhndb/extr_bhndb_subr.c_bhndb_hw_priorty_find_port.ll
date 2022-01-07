; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_hw_priorty_find_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_hw_priorty_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_port_priority = type { i64, i64, i64 }
%struct.bhndb_hw_priority = type { i64, %struct.bhndb_port_priority* }
%struct.bhnd_core_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_port_priority* @bhndb_hw_priorty_find_port(%struct.bhndb_hw_priority* %0, %struct.bhnd_core_info* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.bhndb_port_priority*, align 8
  %7 = alloca %struct.bhndb_hw_priority*, align 8
  %8 = alloca %struct.bhnd_core_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bhndb_hw_priority*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bhndb_port_priority*, align 8
  store %struct.bhndb_hw_priority* %0, %struct.bhndb_hw_priority** %7, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %7, align 8
  %16 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %17 = call %struct.bhndb_hw_priority* @bhndb_hw_priority_find_core(%struct.bhndb_hw_priority* %15, %struct.bhnd_core_info* %16)
  store %struct.bhndb_hw_priority* %17, %struct.bhndb_hw_priority** %12, align 8
  %18 = icmp eq %struct.bhndb_hw_priority* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store %struct.bhndb_port_priority* null, %struct.bhndb_port_priority** %6, align 8
  br label %59

20:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i64, i64* %13, align 8
  %23 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %12, align 8
  %24 = getelementptr inbounds %struct.bhndb_hw_priority, %struct.bhndb_hw_priority* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load %struct.bhndb_hw_priority*, %struct.bhndb_hw_priority** %12, align 8
  %29 = getelementptr inbounds %struct.bhndb_hw_priority, %struct.bhndb_hw_priority* %28, i32 0, i32 1
  %30 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %29, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.bhndb_port_priority, %struct.bhndb_port_priority* %30, i64 %31
  store %struct.bhndb_port_priority* %32, %struct.bhndb_port_priority** %14, align 8
  %33 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %14, align 8
  %34 = getelementptr inbounds %struct.bhndb_port_priority, %struct.bhndb_port_priority* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %55

39:                                               ; preds = %27
  %40 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %14, align 8
  %41 = getelementptr inbounds %struct.bhndb_port_priority, %struct.bhndb_port_priority* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %14, align 8
  %48 = getelementptr inbounds %struct.bhndb_port_priority, %struct.bhndb_port_priority* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  %54 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %14, align 8
  store %struct.bhndb_port_priority* %54, %struct.bhndb_port_priority** %6, align 8
  br label %59

55:                                               ; preds = %52, %45, %38
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %21

58:                                               ; preds = %21
  store %struct.bhndb_port_priority* null, %struct.bhndb_port_priority** %6, align 8
  br label %59

59:                                               ; preds = %58, %53, %19
  %60 = load %struct.bhndb_port_priority*, %struct.bhndb_port_priority** %6, align 8
  ret %struct.bhndb_port_priority* %60
}

declare dso_local %struct.bhndb_hw_priority* @bhndb_hw_priority_find_core(%struct.bhndb_hw_priority*, %struct.bhnd_core_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
