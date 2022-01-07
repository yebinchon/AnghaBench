; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qlnxr_qp = type { i64, i32, i32, i32, i32, i32, %struct.qlnxr_dev* }
%struct.qlnxr_dev = type { i32* }
%struct.ib_qp_attr = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"enter qp = %p, qp_type=%d\0A\00", align 1
@ECORE_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_INIT = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.qlnxr_qp*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp_attr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %10 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %9)
  store %struct.qlnxr_qp* %10, %struct.qlnxr_qp** %3, align 8
  %11 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %11, i32 0, i32 6
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  store %struct.qlnxr_dev* %13, %struct.qlnxr_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %19 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %20 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %18, i64 %21)
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %24 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %26 = call i64 @QLNX_IS_ROCE(%struct.qlnxr_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %30 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ECORE_ROCE_QP_STATE_RESET, align 4
  %33 = load i32, i32* @ECORE_ROCE_QP_STATE_ERR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ECORE_ROCE_QP_STATE_INIT, align 4
  %36 = or i32 %34, %35
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* @IB_QPS_ERR, align 4
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IB_QP_STATE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @qlnxr_modify_qp(%struct.ib_qp* %44, %struct.ib_qp_attr* %6, i32 %45, i32* null)
  br label %47

47:                                               ; preds = %38, %28, %1
  %48 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %49 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_QPT_GSI, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %55 = call i32 @qlnxr_destroy_gsi_qp(%struct.qlnxr_dev* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %58 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %59, -1
  %61 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %62 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %64 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %65 = call i32 @qlnxr_free_qp_resources(%struct.qlnxr_dev* %63, %struct.qlnxr_qp* %64)
  %66 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %67 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %66, i32 0, i32 4
  %68 = call i64 @atomic_dec_and_test(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %72 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %73 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @qlnxr_idr_remove(%struct.qlnxr_dev* %71, i32 %74)
  %76 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %77 = call i32 @kfree(%struct.qlnxr_qp* %76)
  br label %78

78:                                               ; preds = %70, %56
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i64 @QLNX_IS_ROCE(%struct.qlnxr_dev*) #1

declare dso_local i32 @qlnxr_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i32 @qlnxr_destroy_gsi_qp(%struct.qlnxr_dev*) #1

declare dso_local i32 @qlnxr_free_qp_resources(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @qlnxr_idr_remove(%struct.qlnxr_dev*, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
