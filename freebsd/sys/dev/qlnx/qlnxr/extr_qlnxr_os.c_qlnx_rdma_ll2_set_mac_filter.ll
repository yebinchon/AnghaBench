; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnx_rdma_ll2_set_mac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnx_rdma_ll2_set_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.qlnx_host = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"enter rdma_ctx (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"exit rdma_ctx (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnx_rdma_ll2_set_mac_filter(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.qlnx_host*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.qlnx_host*
  store %struct.qlnx_host* %15, %struct.qlnx_host** %8, align 8
  %16 = load %struct.qlnx_host*, %struct.qlnx_host** %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @QL_DPRINT2(%struct.qlnx_host* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ecore_llh_remove_mac_filter(i64 %24, i32 0, i32* %25)
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @ecore_llh_add_mac_filter(i64 %33, i32 0, i32* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.qlnx_host*, %struct.qlnx_host** %8, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @QL_DPRINT2(%struct.qlnx_host* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @QL_DPRINT2(%struct.qlnx_host*, i8*, i8*) #1

declare dso_local i32 @ecore_llh_remove_mac_filter(i64, i32, i32*) #1

declare dso_local i32 @ecore_llh_add_mac_filter(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
