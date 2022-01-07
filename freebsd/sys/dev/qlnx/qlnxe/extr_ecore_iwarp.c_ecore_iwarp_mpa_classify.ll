; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_mpa_classify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_mpa_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_iwarp_fpdu = type { i32, i64 }

@ECORE_IWARP_MPA_PKT_UNALIGNED = common dso_local global i32 0, align 4
@ECORE_IWARP_MPA_PKT_PARTIAL = common dso_local global i32 0, align 4
@ECORE_IWARP_MPA_PKT_PACKED = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"MPA_ALIGN: %s: fpdu_length=0x%x tcp_payload_len:0x%x\0A\00", align 1
@pkt_type_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, i32, i32*)* @ecore_iwarp_mpa_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_mpa_classify(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_fpdu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_iwarp_fpdu* %1, %struct.ecore_iwarp_fpdu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ECORE_IWARP_MPA_PKT_UNALIGNED, align 4
  store i32 %16, i32* %9, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @ECORE_IWARP_MPA_PKT_PARTIAL, align 4
  store i32 %26, i32* %9, align 4
  br label %45

27:                                               ; preds = %17
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ECORE_IWARP_FPDU_LEN_WITH_PAD(i32 %31)
  %33 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @ECORE_IWARP_MPA_PKT_PACKED, align 4
  store i32 %41, i32* %9, align 4
  br label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @ECORE_IWARP_MPA_PKT_PARTIAL, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %20, %15
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %48 = load i32*, i32** @pkt_type_str, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %46, i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ECORE_IWARP_FPDU_LEN_WITH_PAD(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
