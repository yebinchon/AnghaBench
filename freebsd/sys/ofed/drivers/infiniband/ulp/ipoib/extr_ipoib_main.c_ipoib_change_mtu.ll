; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mtu > %d will cause multicast packet drops.\0A\00", align 1
@ipoib_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_change_mtu(%struct.ipoib_dev_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %11 = call i64 @ipoib_cm_admin_enabled(%struct.ipoib_dev_priv* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = call i32 @ipoib_cm_max_mtu(%struct.ipoib_dev_priv* %15)
  %17 = call i32 @IPOIB_CM_MTU(i32 %16)
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ipoib_propagate_ifnet_mtu(%struct.ipoib_dev_priv* %35, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IPOIB_UD_MTU(i32 %43)
  %45 = icmp sgt i32 %40, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %84

49:                                               ; preds = %39
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %58 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @min(i32 %59, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ipoib_propagate_ifnet_mtu(%struct.ipoib_dev_priv* %56, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %49
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @ipoib_workqueue, align 4
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %74, i32 0, i32 2
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %72, %68
  br label %82

78:                                               ; preds = %49
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %81 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %46, %34, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @ipoib_cm_admin_enabled(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @IPOIB_CM_MTU(i32) #1

declare dso_local i32 @ipoib_cm_max_mtu(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ipoib_propagate_ifnet_mtu(%struct.ipoib_dev_priv*, i32, i32) #1

declare dso_local i32 @IPOIB_UD_MTU(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
