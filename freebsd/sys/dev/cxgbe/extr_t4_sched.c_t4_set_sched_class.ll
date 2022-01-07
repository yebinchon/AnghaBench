; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_t4_set_sched_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_t4_set_sched_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_sched_params = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCHED_CLASS_TYPE_PACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCHED_CLASS_SUBCMD_CONFIG = common dso_local global i64 0, align 8
@SCHED_CLASS_SUBCMD_PARAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_sched_class(%struct.adapter* %0, %struct.t4_sched_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_sched_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_sched_params* %1, %struct.t4_sched_params** %5, align 8
  %6 = load %struct.t4_sched_params*, %struct.t4_sched_params** %5, align 8
  %7 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCHED_CLASS_TYPE_PACKET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.t4_sched_params*, %struct.t4_sched_params** %5, align 8
  %15 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SCHED_CLASS_SUBCMD_CONFIG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load %struct.t4_sched_params*, %struct.t4_sched_params** %5, align 8
  %22 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_sched_class_config(%struct.adapter* %20, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %13
  %28 = load %struct.t4_sched_params*, %struct.t4_sched_params** %5, align 8
  %29 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCHED_CLASS_SUBCMD_PARAMS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = load %struct.t4_sched_params*, %struct.t4_sched_params** %5, align 8
  %36 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @set_sched_class_params(%struct.adapter* %34, i32* %37, i32 1)
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %33, %19, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @set_sched_class_config(%struct.adapter*, i32) #1

declare dso_local i32 @set_sched_class_params(%struct.adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
