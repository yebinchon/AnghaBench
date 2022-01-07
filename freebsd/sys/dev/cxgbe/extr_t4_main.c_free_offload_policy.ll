; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_free_offload_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_free_offload_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_offload_policy = type { i32, %struct.t4_offload_policy*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.t4_offload_policy* }
%struct.offload_rule = type { i32, %struct.offload_rule*, %struct.TYPE_2__ }

@M_CXGBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_offload_policy*)* @free_offload_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_offload_policy(%struct.t4_offload_policy* %0) #0 {
  %2 = alloca %struct.t4_offload_policy*, align 8
  %3 = alloca %struct.offload_rule*, align 8
  %4 = alloca i32, align 4
  store %struct.t4_offload_policy* %0, %struct.t4_offload_policy** %2, align 8
  %5 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %2, align 8
  %6 = icmp eq %struct.t4_offload_policy* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %2, align 8
  %10 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %9, i32 0, i32 1
  %11 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %10, align 8
  %12 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %11, i64 0
  %13 = bitcast %struct.t4_offload_policy* %12 to %struct.offload_rule*
  store %struct.offload_rule* %13, %struct.offload_rule** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %27, %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %2, align 8
  %17 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.offload_rule*, %struct.offload_rule** %3, align 8
  %22 = getelementptr inbounds %struct.offload_rule, %struct.offload_rule* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %23, align 8
  %25 = load i32, i32* @M_CXGBE, align 4
  %26 = call i32 @free(%struct.t4_offload_policy* %24, i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.offload_rule*, %struct.offload_rule** %3, align 8
  %31 = getelementptr inbounds %struct.offload_rule, %struct.offload_rule* %30, i32 1
  store %struct.offload_rule* %31, %struct.offload_rule** %3, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %2, align 8
  %34 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %33, i32 0, i32 1
  %35 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %34, align 8
  %36 = load i32, i32* @M_CXGBE, align 4
  %37 = call i32 @free(%struct.t4_offload_policy* %35, i32 %36)
  %38 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %2, align 8
  %39 = load i32, i32* @M_CXGBE, align 4
  %40 = call i32 @free(%struct.t4_offload_policy* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @free(%struct.t4_offload_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
