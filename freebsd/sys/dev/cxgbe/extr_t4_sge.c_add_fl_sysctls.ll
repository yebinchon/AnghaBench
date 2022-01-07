; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_fl_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_fl_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"freelist\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bus address of descriptor ring\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dmalen\00", align 1
@EQ_ESIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"desc ring size in bytes\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cntxt_id\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_uint16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"SGE context id of the freelist\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@fl_pad = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"padding enabled\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"packing\00", align 1
@FL_BUF_PACKING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"packing enabled\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"consumer index\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"rx_offset\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"packing rx offset\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pidx\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"producer index\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"mbuf_allocated\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"# of mbuf allocated\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"mbuf_inlined\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"# of mbuf inlined in clusters\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"cluster_allocated\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"# of clusters allocated\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"cluster_recycled\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"# of clusters recycled\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"cluster_fast_recycled\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"# of clusters recycled (fast)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sysctl_ctx_list*, %struct.sysctl_oid*, %struct.sge_fl*)* @add_fl_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fl_sysctls(%struct.adapter* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid* %2, %struct.sge_fl* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sge_fl*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %6, align 8
  store %struct.sysctl_oid* %2, %struct.sysctl_oid** %7, align 8
  store %struct.sge_fl* %3, %struct.sge_fl** %8, align 8
  %10 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %11 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %10)
  store %struct.sysctl_oid_list* %11, %struct.sysctl_oid_list** %9, align 8
  %12 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %13 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i32, i32* @CTLFLAG_RD, align 4
  %16 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %12, %struct.sysctl_oid_list* %13, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %7, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %9, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 11
  %25 = call i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %31 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EQ_ESIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32* null, i64 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %44 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLTYPE_INT, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %50 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %49, i32 0, i32 10
  %51 = load i32, i32* @sysctl_uint16, align 4
  %52 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %43, %struct.sysctl_oid_list* %44, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32* %50, i32 0, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = load i64, i64* @fl_pad, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %56, i32* null, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %63 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLFLAG_RD, align 4
  %66 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %67 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FL_BUF_PACKING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %62, %struct.sysctl_oid_list* %63, i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32* null, i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLFLAG_RD, align 4
  %79 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %80 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %79, i32 0, i32 9
  %81 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %75, %struct.sysctl_oid_list* %76, i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %78, i32* %80, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %82 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %83 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FL_BUF_PACKING, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %4
  %89 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %90 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %94 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %93, i32 0, i32 8
  %95 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %89, %struct.sysctl_oid_list* %90, i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %92, i32* %94, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %96

96:                                               ; preds = %88, %4
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLFLAG_RD, align 4
  %101 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %102 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %101, i32 0, i32 7
  %103 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %100, i32* %102, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %104 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %105 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %106 = load i32, i32* @OID_AUTO, align 4
  %107 = load i32, i32* @CTLFLAG_RD, align 4
  %108 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %109 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %108, i32 0, i32 6
  %110 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %104, %struct.sysctl_oid_list* %105, i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %107, i32* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %111 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %112 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %113 = load i32, i32* @OID_AUTO, align 4
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %116 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %115, i32 0, i32 5
  %117 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %111, %struct.sysctl_oid_list* %112, i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %114, i32* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %118 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %119 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLFLAG_RD, align 4
  %122 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %123 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %122, i32 0, i32 4
  %124 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %118, %struct.sysctl_oid_list* %119, i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %121, i32* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %125 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %126 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLFLAG_RD, align 4
  %129 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %130 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %129, i32 0, i32 3
  %131 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %125, %struct.sysctl_oid_list* %126, i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %128, i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %133 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %134 = load i32, i32* @OID_AUTO, align 4
  %135 = load i32, i32* @CTLFLAG_RD, align 4
  %136 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %137 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %136, i32 0, i32 2
  %138 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid_list* %133, i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %135, i32* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i64, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
