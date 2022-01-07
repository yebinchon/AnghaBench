; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_udp_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_udp_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"Can not set udp ports, invalid vfid [%d]\0A\00", align 1
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Can not set udp ports to malicious VF [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_bulletin_set_udp_ports(%struct.ecore_hwfn* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %10, i8* %13, i32 1)
  store %struct.ecore_vf_info* %14, %struct.ecore_vf_info** %9, align 8
  %15 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %16 = icmp ne %struct.ecore_vf_info* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DP_NOTICE(i32 %20, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %46

23:                                               ; preds = %4
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %25 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %30 = load i32, i32* @ECORE_MSG_IOV, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %29, i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %46

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %36 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %34, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %42 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %40, i8** %45, align 8
  br label %46

46:                                               ; preds = %33, %28, %17
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
