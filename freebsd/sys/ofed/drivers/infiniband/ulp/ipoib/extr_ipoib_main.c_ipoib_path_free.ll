; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_path_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_path_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_path = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_path_free(%struct.ipoib_dev_priv* %0, %struct.ipoib_path* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_path*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %4, align 8
  %5 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %6 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %5, i32 0, i32 1
  %7 = call i32 @_IF_DRAIN(i32* %6)
  %8 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %9 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %14 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ipoib_put_ah(i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %19 = call i64 @ipoib_cm_get(%struct.ipoib_path* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %23 = call i64 @ipoib_cm_get(%struct.ipoib_path* %22)
  %24 = call i32 @ipoib_cm_destroy_tx(i64 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %27 = call i32 @kfree(%struct.ipoib_path* %26)
  ret void
}

declare dso_local i32 @_IF_DRAIN(i32*) #1

declare dso_local i32 @ipoib_put_ah(i64) #1

declare dso_local i64 @ipoib_cm_get(%struct.ipoib_path*) #1

declare dso_local i32 @ipoib_cm_destroy_tx(i64) #1

declare dso_local i32 @kfree(%struct.ipoib_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
