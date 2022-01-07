; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)*, i64 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }
%struct.qlnxr_iw_ep = type { %struct.qlnxr_qp*, i32, %struct.iw_cm_id*, %struct.qlnxr_dev* }
%struct.qlnxr_qp = type { i32, %struct.qlnxr_iw_ep* }
%struct.qlnxr_dev = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_iwarp_accept_in = type { i32, i32, i32, i32, i32, %struct.qlnxr_iw_ep*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"enter  qpid=%d\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"idr_find failed invalid qpn = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ecore_iwarp_accept failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"exit rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_iw_accept(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.qlnxr_iw_ep*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.ecore_iwarp_accept_in, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  %12 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %13 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.qlnxr_iw_ep*
  store %struct.qlnxr_iw_ep* %15, %struct.qlnxr_iw_ep** %6, align 8
  %16 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %17 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %16, i32 0, i32 3
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %17, align 8
  store %struct.qlnxr_dev* %18, %struct.qlnxr_dev** %7, align 8
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %24 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %121

38:                                               ; preds = %2
  %39 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %40 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %39, i32 0, i32 1
  %41 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %42 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.qlnxr_qp* @idr_find(i32* %40, i32 %43)
  store %struct.qlnxr_qp* %44, %struct.qlnxr_qp** %8, align 8
  %45 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %46 = icmp ne %struct.qlnxr_qp* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %50 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @QL_DPRINT11(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %121

55:                                               ; preds = %38
  %56 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %57 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %58 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %57, i32 0, i32 0
  store %struct.qlnxr_qp* %56, %struct.qlnxr_qp** %58, align 8
  %59 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %60 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %61 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %60, i32 0, i32 1
  store %struct.qlnxr_iw_ep* %59, %struct.qlnxr_iw_ep** %61, align 8
  %62 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %63 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %62, i32 0, i32 1
  %64 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %63, align 8
  %65 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %66 = call i32 %64(%struct.iw_cm_id* %65)
  %67 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %68 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %69 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %68, i32 0, i32 2
  store %struct.iw_cm_id* %67, %struct.iw_cm_id** %69, align 8
  %70 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %71 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 6
  store i32 %72, i32* %73, align 8
  %74 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %75 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 5
  store %struct.qlnxr_iw_ep* %74, %struct.qlnxr_iw_ep** %75, align 8
  %76 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %6, align 8
  %77 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %76, i32 0, i32 0
  %78 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %77, align 8
  %79 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %83 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %87 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %91 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %95 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %9, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %99 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ecore_iwarp_accept(i32 %100, %struct.ecore_iwarp_accept_in* %9)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %55
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @QL_DPRINT11(%struct.TYPE_6__* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %111

108:                                              ; preds = %55
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_6__* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

111:                                              ; preds = %104
  %112 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %113 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %112, i32 0, i32 0
  %114 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %113, align 8
  %115 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %116 = call i32 %114(%struct.iw_cm_id* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_6__* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %111, %108, %47, %35
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.qlnxr_qp* @idr_find(i32*, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ecore_iwarp_accept(i32, %struct.ecore_iwarp_accept_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
