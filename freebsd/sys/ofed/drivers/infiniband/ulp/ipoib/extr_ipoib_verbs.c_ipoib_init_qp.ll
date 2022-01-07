; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_init_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_init_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, i64 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to modify QP to init, ret = %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to modify QP to RTR, ret = %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to modify QP to RTS, ret = %d\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to modify QP to RESET state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_init_qp(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp_attr, align 8
  %6 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  %7 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 3
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load i32, i32* @IB_QPS_INIT, align 4
  %15 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @IB_QP_QKEY, align 4
  %26 = load i32, i32* @IB_QP_PORT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IB_QP_STATE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ib_modify_qp(i32 %34, %struct.ib_qp_attr* %5, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %13
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %84

43:                                               ; preds = %13
  %44 = load i32, i32* @IB_QPS_RTR, align 4
  %45 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @IB_QP_PORT, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ib_modify_qp(i32 %52, %struct.ib_qp_attr* %5, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %84

61:                                               ; preds = %43
  %62 = load i32, i32* @IB_QPS_RTS, align 4
  %63 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ib_modify_qp(i32 %74, %struct.ib_qp_attr* %5, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %61
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %98

84:                                               ; preds = %79, %57, %39
  %85 = load i32, i32* @IB_QPS_RESET, align 4
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IB_QP_STATE, align 4
  %91 = call i32 @ib_modify_qp(i32 %89, %struct.ib_qp_attr* %5, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %95 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %83, %12
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
