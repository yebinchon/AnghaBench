; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_dp_tlv_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_dp_tlv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.channel_tlv = type { i64, i64 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLV number %d: type %s, length %d\0A\00", align 1
@ecore_channel_tlvs_string = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"TLV number %d: type %d, length %d\0A\00", align 1
@CHANNEL_TLV_LIST_END = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"TLV of length 0 found\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TLV ==> Buffer overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_dp_tlv_list(%struct.ecore_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel_tlv*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %77, %2
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = bitcast i32* %13 to %struct.channel_tlv*
  store %struct.channel_tlv* %14, %struct.channel_tlv** %7, align 8
  %15 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %16 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @ecore_iov_tlv_supported(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = load i32, i32* @ECORE_MSG_IOV, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64*, i64** @ecore_channel_tlvs_string, align 8
  %25 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %26 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %31 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %29, i64 %32)
  br label %45

34:                                               ; preds = %8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = load i32, i32* @ECORE_MSG_IOV, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %39 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %42 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %35, i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %40, i64 %43)
  br label %45

45:                                               ; preds = %34, %20
  %46 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %47 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHANNEL_TLV_LIST_END, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %78

52:                                               ; preds = %45
  %53 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %54 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %59 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %58, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %78

60:                                               ; preds = %52
  %61 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %62 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %73 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %72, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %78

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74
  br i1 true, label %8, label %78

78:                                               ; preds = %51, %57, %71, %77
  ret void
}

declare dso_local i64 @ecore_iov_tlv_supported(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
