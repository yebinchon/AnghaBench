; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { i64, i32*, i64, i64, i32 }
%struct.vfpf_first_tlv = type { i64 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"preparing to send %s tlv over vf pf channel\0A\00", align 1
@ecore_channel_tlvs_string = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ecore_hwfn*, i64, i64)* @ecore_vf_pf_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ecore_vf_pf_prep(%struct.ecore_hwfn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecore_vf_iov*, align 8
  %8 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %10, align 8
  store %struct.ecore_vf_iov* %11, %struct.ecore_vf_iov** %7, align 8
  %12 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %12, i32 0, i32 4
  %14 = call i32 @OSAL_MUTEX_ACQUIRE(i32* %13)
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = load i32, i32* @ECORE_MSG_IOV, align 4
  %17 = load i32*, i32** @ecore_channel_tlvs_string, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %15, i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %27 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %29 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @OSAL_MEMSET(i64 %30, i32 0, i32 4)
  %32 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @OSAL_MEMSET(i64 %34, i32 0, i32 4)
  %36 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %36, i32 0, i32 1
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @ecore_add_tlv(i32** %37, i64 %38, i64 %39)
  store i8* %40, i8** %8, align 8
  %41 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %42 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.vfpf_first_tlv*
  %46 = getelementptr inbounds %struct.vfpf_first_tlv, %struct.vfpf_first_tlv* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load i8*, i8** %8, align 8
  ret i8* %47
}

declare dso_local i32 @OSAL_MUTEX_ACQUIRE(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(i64, i32, i32) #1

declare dso_local i8* @ecore_add_tlv(i32**, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
