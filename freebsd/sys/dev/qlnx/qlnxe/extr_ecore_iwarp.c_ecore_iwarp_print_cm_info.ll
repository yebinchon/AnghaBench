; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_print_cm_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_print_cm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_iwarp_cm_info = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ip_version = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"remote_ip %x.%x.%x.%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"local_ip %x.%x.%x.%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"remote_port = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"local_port = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"vlan = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"private_data_len = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ord = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ird = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_iwarp_cm_info*)* @ecore_iwarp_print_cm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_print_cm_info(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_cm_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_iwarp_cm_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_iwarp_cm_info* %1, %struct.ecore_iwarp_cm_info** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %7 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %5, i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %13 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %29 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %11, i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %22, i32 %27, i32 %32)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %36 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %47 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %34, i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %45, i32 %50, i32 %55)
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %58 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %59 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %60 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %57, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %64 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %65 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %63, i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %70 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %71 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %72 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %76 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %77 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %78 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %75, i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %82 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %83 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %84 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %81, i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %88 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %89 = load %struct.ecore_iwarp_cm_info*, %struct.ecore_iwarp_cm_info** %4, align 8
  %90 = getelementptr inbounds %struct.ecore_iwarp_cm_info, %struct.ecore_iwarp_cm_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
