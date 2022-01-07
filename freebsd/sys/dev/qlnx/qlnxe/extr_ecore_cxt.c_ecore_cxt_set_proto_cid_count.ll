; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_proto_cid_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_proto_cid_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { %struct.TYPE_4__*, %struct.ecore_conn_type_cfg* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_conn_type_cfg = type { i32, i8* }

@DQ_RANGE_ALIGN = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32, i32, i32)* @ecore_cxt_set_proto_cid_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_cxt_mngr*, align 8
  %10 = alloca %struct.ecore_conn_type_cfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %16, align 8
  store %struct.ecore_cxt_mngr* %17, %struct.ecore_cxt_mngr** %9, align 8
  %18 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %9, align 8
  %19 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %18, i32 0, i32 1
  %20 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %20, i64 %22
  store %struct.ecore_conn_type_cfg* %23, %struct.ecore_conn_type_cfg** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DQ_RANGE_ALIGN, align 4
  %26 = call i8* @ROUNDUP(i32 %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %10, align 8
  %29 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DQ_RANGE_ALIGN, align 4
  %32 = call i8* @ROUNDUP(i32 %30, i32 %31)
  %33 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %10, align 8
  %34 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %4
  %39 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @ILT_CLI_CDUC, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = call i32 @CONN_CXT_SIZE(%struct.ecore_hwfn* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ILT_PAGE_IN_BYTES(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @DQ_RANGE_ALIGN, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %10, align 8
  %57 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @ROUNDUP(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %10, align 8
  %63 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %38, %4
  ret void
}

declare dso_local i8* @ROUNDUP(i32, i32) #1

declare dso_local i32 @CONN_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
