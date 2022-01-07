; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_get_curr_fpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_get_curr_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_fpdu = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_iwarp_info }
%struct.ecore_iwarp_info = type { i64, %struct.ecore_iwarp_fpdu* }

@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid cid %x max_num_partial_fpdus=%x\0A\00", align 1
@OSAL_NULL = common dso_local global %struct.ecore_iwarp_fpdu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecore_iwarp_fpdu* (%struct.ecore_hwfn*, i64)* @ecore_iwarp_get_curr_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecore_iwarp_fpdu* @ecore_iwarp_get_curr_fpdu(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_iwarp_info*, align 8
  %7 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %8 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ecore_iwarp_info* %12, %struct.ecore_iwarp_info** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %16 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %14, i32 %15)
  %17 = sub i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @DP_ERR(%struct.ecore_hwfn* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  %30 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** @OSAL_NULL, align 8
  store %struct.ecore_iwarp_fpdu* %30, %struct.ecore_iwarp_fpdu** %3, align 8
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %32, i32 0, i32 1
  %34 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %34, i64 %35
  store %struct.ecore_iwarp_fpdu* %36, %struct.ecore_iwarp_fpdu** %7, align 8
  %37 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %7, align 8
  store %struct.ecore_iwarp_fpdu* %37, %struct.ecore_iwarp_fpdu** %3, align 8
  br label %38

38:                                               ; preds = %31, %23
  %39 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %3, align 8
  ret %struct.ecore_iwarp_fpdu* %39
}

declare dso_local i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
