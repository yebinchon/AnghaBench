; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32 }
%union.ib_gid = type { i32 }
%struct.ib_qp_attr = type { i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to modify QP, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to attach to multicast group, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_mcast_attach(%struct.ipoib_dev_priv* %0, i32 %1, %union.ib_gid* %2, i32 %3) #0 {
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ib_qp_attr* null, %struct.ib_qp_attr** %9, align 8
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ib_find_pkey(i32 %14, i32 %17, i32 %20, i32* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 2
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %78

30:                                               ; preds = %4
  %31 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 2
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ib_qp_attr* @kmalloc(i32 4, i32 %40)
  store %struct.ib_qp_attr* %41, %struct.ib_qp_attr** %9, align 8
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %43 = icmp ne %struct.ib_qp_attr* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %78

45:                                               ; preds = %37
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %50 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %55 = load i32, i32* @IB_QP_QKEY, align 4
  %56 = call i32 @ib_modify_qp(i32 %53, %struct.ib_qp_attr* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %78

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %30
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ib_attach_mcast(i32 %67, %union.ib_gid* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %64
  br label %78

78:                                               ; preds = %77, %59, %44, %23
  %79 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %80 = call i32 @kfree(%struct.ib_qp_attr* %79)
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ib_attach_mcast(i32, %union.ib_gid*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
