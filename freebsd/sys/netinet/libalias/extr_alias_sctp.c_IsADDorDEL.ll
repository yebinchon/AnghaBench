; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_IsADDorDEL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_IsADDorDEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sctp_paramhdr* }
%struct.sctp_paramhdr = type { i32, i32 }

@SN_ASCONFACK_PARAM_SIZE = common dso_local global i32 0, align 4
@SCTP_ADD_IP_ADDRESS = common dso_local global i64 0, align 8
@SCTP_DEL_IP_ADDRESS = common dso_local global i64 0, align 8
@SN_MIN_PARAM_SIZE = common dso_local global i32 0, align 4
@sysctl_param_proc_limit = common dso_local global i32 0, align 4
@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Parameter parse limit exceeded IsADDorDEL)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.sctp_nat_msg*, i32)* @IsADDorDEL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsADDorDEL(%struct.libalias* %0, %struct.sctp_nat_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.sctp_nat_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_paramhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.sctp_nat_msg* %1, %struct.sctp_nat_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  store %struct.sctp_paramhdr* %15, %struct.sctp_paramhdr** %8, align 8
  %16 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ntohs(i32 %18)
  %20 = call i32 @SCTP_SIZE32(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %91, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SN_ASCONFACK_PARAM_SIZE, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %35 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  %38 = load i64, i64* @SCTP_ADD_IP_ADDRESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* @SCTP_ADD_IP_ADDRESS, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %93

43:                                               ; preds = %33
  %44 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %45 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohs(i32 %46)
  %48 = load i64, i64* @SCTP_DEL_IP_ADDRESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* @SCTP_DEL_IP_ADDRESS, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %93

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SN_MIN_PARAM_SIZE, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %63 = call %struct.sctp_paramhdr* @SN_SCTP_NEXTPARAM(%struct.sctp_paramhdr* %62)
  store %struct.sctp_paramhdr* %63, %struct.sctp_paramhdr** %8, align 8
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %93

65:                                               ; preds = %61
  %66 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %67 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohs(i32 %68)
  %70 = call i32 @SCTP_SIZE32(i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %93

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @sysctl_param_proc_limit, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i32, i32* @SN_LOG_EVENT, align 4
  %82 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %6, align 8
  %83 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @sysctl_param_proc_limit, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @logsctperror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  %90 = call i32 @SN_LOG(i32 %81, i32 %89)
  store i32 0, i32* %4, align 4
  br label %93

91:                                               ; preds = %75
  br label %29

92:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %80, %74, %64, %50, %40, %27
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @SCTP_SIZE32(i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_paramhdr* @SN_SCTP_NEXTPARAM(%struct.sctp_paramhdr*) #1

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @logsctperror(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
