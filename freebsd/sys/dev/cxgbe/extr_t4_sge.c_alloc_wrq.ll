; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_wrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_wrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.sysctl_ctx_list }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.vi_info = type { %struct.sysctl_ctx_list }
%struct.sge_wrq = type { i32, i32, i32, %struct.TYPE_6__, i64, i64, i32, i32, i32, %struct.adapter* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@wrq_tx_drain = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bus address of descriptor ring\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dmalen\00", align 1
@EQ_ESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"desc ring size in bytes\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cntxt_id\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SGE context id of the queue\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_uint16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"consumer index\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pidx\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"producer index\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"sidx\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"status page index\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"tx_wrs_direct\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"# of work requests (direct)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"tx_wrs_copied\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"# of work requests (copied)\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tx_wrs_sspace\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"# of work requests (copied from scratch space)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.vi_info*, %struct.sge_wrq*, %struct.sysctl_oid*)* @alloc_wrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_wrq(%struct.adapter* %0, %struct.vi_info* %1, %struct.sge_wrq* %2, %struct.sysctl_oid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.vi_info*, align 8
  %8 = alloca %struct.sge_wrq*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_ctx_list*, align 8
  %12 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.vi_info* %1, %struct.vi_info** %7, align 8
  store %struct.sge_wrq* %2, %struct.sge_wrq** %8, align 8
  store %struct.sysctl_oid* %3, %struct.sysctl_oid** %9, align 8
  %13 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %14 = icmp ne %struct.vi_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %17 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %16, i32 0, i32 0
  br label %21

18:                                               ; preds = %4
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.sysctl_ctx_list* [ %17, %15 ], [ %20, %18 ]
  store %struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_list** %11, align 8
  %23 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %24 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %23)
  store %struct.sysctl_oid_list* %24, %struct.sysctl_oid_list** %12, align 8
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %27 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %28 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %27, i32 0, i32 3
  %29 = call i32 @alloc_eq(%struct.adapter* %25, %struct.vi_info* %26, %struct.TYPE_6__* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %139

34:                                               ; preds = %21
  %35 = load %struct.adapter*, %struct.adapter** %6, align 8
  %36 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %37 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %36, i32 0, i32 9
  store %struct.adapter* %35, %struct.adapter** %37, align 8
  %38 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %39 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %38, i32 0, i32 8
  %40 = load i32, i32* @wrq_tx_drain, align 4
  %41 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %42 = call i32 @TASK_INIT(i32* %39, i32 0, i32 %40, %struct.sge_wrq* %41)
  %43 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %44 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %43, i32 0, i32 7
  %45 = call i32 @TAILQ_INIT(i32* %44)
  %46 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %47 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %46, i32 0, i32 6
  %48 = call i32 @STAILQ_INIT(i32* %47)
  %49 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %50 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %52 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %58 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = call i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56, i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RD, align 4
  %65 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %66 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @EQ_ESIZE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.adapter*, %struct.adapter** %6, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %70, %75
  %77 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32* null, i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %79 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %83 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %78, %struct.sysctl_oid_list* %79, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32* %84, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %87 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLTYPE_INT, align 4
  %90 = load i32, i32* @CTLFLAG_RD, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %93 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* @sysctl_uint16, align 4
  %96 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %86, %struct.sysctl_oid_list* %87, i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32* %94, i32 0, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_INT, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %104 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* @sysctl_uint16, align 4
  %107 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32* %105, i32 0, i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %108 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %109 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLFLAG_RD, align 4
  %112 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %113 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %108, %struct.sysctl_oid_list* %109, i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %111, i32* null, i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %117 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %118 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %119 = load i32, i32* @OID_AUTO, align 4
  %120 = load i32, i32* @CTLFLAG_RD, align 4
  %121 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %122 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %121, i32 0, i32 2
  %123 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %117, %struct.sysctl_oid_list* %118, i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %120, i32* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %124 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %125 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %126 = load i32, i32* @OID_AUTO, align 4
  %127 = load i32, i32* @CTLFLAG_RD, align 4
  %128 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %129 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %128, i32 0, i32 1
  %130 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %124, %struct.sysctl_oid_list* %125, i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %127, i32* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %133 = load i32, i32* @OID_AUTO, align 4
  %134 = load i32, i32* @CTLFLAG_RD, align 4
  %135 = load %struct.sge_wrq*, %struct.sge_wrq** %8, align 8
  %136 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %135, i32 0, i32 0
  %137 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %134, i32* %136, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %34, %32
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @alloc_eq(%struct.adapter*, %struct.vi_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.sge_wrq*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
