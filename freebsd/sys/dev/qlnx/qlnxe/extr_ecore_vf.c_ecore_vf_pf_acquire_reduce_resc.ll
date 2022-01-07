; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_acquire_reduce_resc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_acquire_reduce_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.vf_pf_resc_request = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pf_vf_resc = type { i32, i32, i32, i32, i32, i32, i32 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [183 x i8] c"PF unwilling to fullill resource request: rxq [%02x/%02x] txq [%02x/%02x] sbs [%02x/%02x] mac [%02x/%02x] vlan [%02x/%02x] mc [%02x/%02x] cids [%02x/%02x]. Try PF recommended amount\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.vf_pf_resc_request*, %struct.pf_vf_resc*)* @ecore_vf_pf_acquire_reduce_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_vf_pf_acquire_reduce_resc(%struct.ecore_hwfn* %0, %struct.vf_pf_resc_request* %1, %struct.pf_vf_resc* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.vf_pf_resc_request*, align 8
  %6 = alloca %struct.pf_vf_resc*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.vf_pf_resc_request* %1, %struct.vf_pf_resc_request** %5, align 8
  store %struct.pf_vf_resc* %2, %struct.pf_vf_resc** %6, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = load i32, i32* @ECORE_MSG_IOV, align 4
  %9 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %10 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %13 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %16 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %19 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %22 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %25 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %28 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %31 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %34 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %37 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %40 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %43 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %46 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %49 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %7, i32 %8, i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %53 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %56 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %58 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %61 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %63 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %66 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %68 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %71 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %73 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %76 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %78 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %81 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pf_vf_resc*, %struct.pf_vf_resc** %6, align 8
  %83 = getelementptr inbounds %struct.pf_vf_resc, %struct.pf_vf_resc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %86 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
