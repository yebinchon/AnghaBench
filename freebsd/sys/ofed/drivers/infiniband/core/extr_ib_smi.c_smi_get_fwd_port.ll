; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c_smi_get_fwd_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c_smi_get_fwd_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_get_fwd_port(%struct.ib_smp* %0) #0 {
  %2 = alloca %struct.ib_smp*, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %2, align 8
  %3 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %4 = call i32 @ib_get_smp_direction(%struct.ib_smp* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %8 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %11 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %19 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %22 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %17, %6
  %29 = phi i32 [ %16, %6 ], [ %27, %17 ]
  ret i32 %29
}

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
