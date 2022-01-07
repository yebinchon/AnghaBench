; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_get_gid_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_get_gid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.qlnxr_dev = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.qlnxr_qp = type { i64 }
%struct.ecore_rdma_modify_qp_in_params = type { %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i8**, i32* }
%struct.TYPE_11__ = type { i8**, i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ecore_rdma_modify_qp_in_params*)* @get_gid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_gid_info(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.qlnxr_dev* %3, %struct.qlnxr_qp* %4, %struct.ecore_rdma_modify_qp_in_params* %5) #0 {
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlnxr_dev*, align 8
  %11 = alloca %struct.qlnxr_qp*, align 8
  %12 = alloca %struct.ecore_rdma_modify_qp_in_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.qlnxr_dev* %3, %struct.qlnxr_dev** %10, align 8
  store %struct.qlnxr_qp* %4, %struct.qlnxr_qp** %11, align 8
  store %struct.ecore_rdma_modify_qp_in_params* %5, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32 @QL_DPRINT12(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %21 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %29 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @memcpy(i32* %24, i32* %34, i32 8)
  %36 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %37 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %42 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @memcpy(i32* %40, i32* %47, i32 16)
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %53 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %52, i32 0, i32 2
  %54 = call i32 @qlnxr_get_vlan_id_qp(i32* %49, %struct.ib_qp_attr* %50, i32 %51, i32* %53)
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %92, %6
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 2
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %61 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @ntohl(i8* %67)
  %69 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %70 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %68, i8** %75, align 8
  %76 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @ntohl(i8* %83)
  %85 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %12, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %84, i8** %91, align 8
  br label %92

92:                                               ; preds = %59
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %55

95:                                               ; preds = %55
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @QL_DPRINT12(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qlnxr_get_vlan_id_qp(i32*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i8* @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
