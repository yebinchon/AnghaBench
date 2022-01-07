; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ipoib_dev_priv* }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed modifying CQ (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ethtool_coalesce*)* @ipoib_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_set_coalesce(%struct.ifnet* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %6, align 8
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 65535
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %96

23:                                               ; preds = %15
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 1
  store i32 65535, i32* %39, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 0
  store i32 65535, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ib_modify_cq(i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ENOSYS, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %63, %50
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %73, %68, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ib_modify_cq(i32, i32, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
