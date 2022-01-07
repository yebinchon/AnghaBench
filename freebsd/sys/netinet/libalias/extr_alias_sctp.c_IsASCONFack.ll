; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_IsASCONFack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_IsASCONFack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sctp_paramhdr* }
%struct.sctp_paramhdr = type { i32, i32 }

@SN_ASCONFACK_PARAM_SIZE = common dso_local global i32 0, align 4
@SCTP_SUCCESS_REPORT = common dso_local global i64 0, align 8
@SN_MIN_PARAM_SIZE = common dso_local global i32 0, align 4
@sysctl_param_proc_limit = common dso_local global i32 0, align 4
@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Parameter parse limit exceeded (IsASCONFack)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.sctp_nat_msg*, i32)* @IsASCONFack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsASCONFack(%struct.libalias* %0, %struct.sctp_nat_msg* %1, i32 %2) #0 {
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
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %84

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SN_ASCONFACK_PARAM_SIZE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  %38 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %39 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  %42 = load i64, i64* @SCTP_SUCCESS_REPORT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SN_MIN_PARAM_SIZE, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %54 = call %struct.sctp_paramhdr* @SN_SCTP_NEXTPARAM(%struct.sctp_paramhdr* %53)
  store %struct.sctp_paramhdr* %54, %struct.sctp_paramhdr** %8, align 8
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %84

56:                                               ; preds = %52
  %57 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %8, align 8
  %58 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = call i32 @SCTP_SIZE32(i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %84

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @sysctl_param_proc_limit, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32, i32* @SN_LOG_EVENT, align 4
  %73 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %6, align 8
  %74 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @sysctl_param_proc_limit, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @logsctperror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = call i32 @SN_LOG(i32 %72, i32 %80)
  store i32 0, i32* %4, align 4
  br label %84

82:                                               ; preds = %66
  br label %33

83:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %71, %65, %55, %44, %31, %23
  %85 = load i32, i32* %4, align 4
  ret i32 %85
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
