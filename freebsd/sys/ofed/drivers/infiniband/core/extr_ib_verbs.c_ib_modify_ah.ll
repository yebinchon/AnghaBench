; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_ah_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %5 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %6 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.ib_ah*, %struct.ib_ah_attr*)**
  %10 = load i32 (%struct.ib_ah*, %struct.ib_ah_attr*)*, i32 (%struct.ib_ah*, %struct.ib_ah_attr*)** %9, align 8
  %11 = icmp ne i32 (%struct.ib_ah*, %struct.ib_ah_attr*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %14 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.ib_ah*, %struct.ib_ah_attr*)**
  %18 = load i32 (%struct.ib_ah*, %struct.ib_ah_attr*)*, i32 (%struct.ib_ah*, %struct.ib_ah_attr*)** %17, align 8
  %19 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %20 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %21 = call i32 %18(%struct.ib_ah* %19, %struct.ib_ah_attr* %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %21, %12 ], [ %24, %22 ]
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
