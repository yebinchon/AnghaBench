; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_CheckTimers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_CheckTimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32* }
%struct.sctp_nat_assoc = type { i64, i64, i32 }

@timer_Q = common dso_local global i32 0, align 4
@SN_CL = common dso_local global i64 0, align 8
@SN_LOG_DEBUG = common dso_local global i32 0, align 4
@SN_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Timer Expired\00", align 1
@SN_TO_NODIR = common dso_local global i32 0, align 4
@SN_TIMER_QUEUE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_CheckTimers(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca %struct.sctp_nat_assoc*, align 8
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %4 = load %struct.libalias*, %struct.libalias** %2, align 8
  %5 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %4)
  br label %6

6:                                                ; preds = %100, %1
  %7 = load %struct.libalias*, %struct.libalias** %2, align 8
  %8 = getelementptr inbounds %struct.libalias, %struct.libalias* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.libalias*, %struct.libalias** %2, align 8
  %11 = getelementptr inbounds %struct.libalias, %struct.libalias* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %9, %13
  br i1 %14, label %15, label %101

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %82, %15
  %17 = load %struct.libalias*, %struct.libalias** %2, align 8
  %18 = getelementptr inbounds %struct.libalias, %struct.libalias* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.libalias*, %struct.libalias** %2, align 8
  %22 = getelementptr inbounds %struct.libalias, %struct.libalias* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = call i32 @LIST_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %83

29:                                               ; preds = %16
  %30 = load %struct.libalias*, %struct.libalias** %2, align 8
  %31 = getelementptr inbounds %struct.libalias, %struct.libalias* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.libalias*, %struct.libalias** %2, align 8
  %35 = getelementptr inbounds %struct.libalias, %struct.libalias* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = call %struct.sctp_nat_assoc* @LIST_FIRST(i32* %38)
  store %struct.sctp_nat_assoc* %39, %struct.sctp_nat_assoc** %3, align 8
  %40 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %41 = load i32, i32* @timer_Q, align 4
  %42 = call i32 @LIST_REMOVE(%struct.sctp_nat_assoc* %40, i32 %41)
  %43 = load %struct.libalias*, %struct.libalias** %2, align 8
  %44 = getelementptr inbounds %struct.libalias, %struct.libalias* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %47 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %29
  %51 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %52 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SN_CL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @SN_LOG_DEBUG, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @SN_LOG_INFO, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %63 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %66 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @SN_TO_NODIR, align 4
  %69 = call i32 @logsctperror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %67, i32 %68)
  %70 = call i32 @SN_LOG(i32 %61, i32 %69)
  %71 = load %struct.libalias*, %struct.libalias** %2, align 8
  %72 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %73 = call i32 @RmSctpAssoc(%struct.libalias* %71, %struct.sctp_nat_assoc* %72)
  %74 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %75 = call i32 @freeGlobalAddressList(%struct.sctp_nat_assoc* %74)
  %76 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %77 = call i32 @sn_free(%struct.sctp_nat_assoc* %76)
  br label %82

78:                                               ; preds = %29
  %79 = load %struct.libalias*, %struct.libalias** %2, align 8
  %80 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %81 = call i32 @sctp_AddTimeOut(%struct.libalias* %79, %struct.sctp_nat_assoc* %80)
  br label %82

82:                                               ; preds = %78, %60
  br label %16

83:                                               ; preds = %16
  %84 = load %struct.libalias*, %struct.libalias** %2, align 8
  %85 = getelementptr inbounds %struct.libalias, %struct.libalias* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.libalias*, %struct.libalias** %2, align 8
  %90 = getelementptr inbounds %struct.libalias, %struct.libalias* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* @SN_TIMER_QUEUE_SIZE, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load %struct.libalias*, %struct.libalias** %2, align 8
  %98 = getelementptr inbounds %struct.libalias, %struct.libalias* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %83
  br label %6

101:                                              ; preds = %6
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.sctp_nat_assoc* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @logsctperror(i8*, i32, i64, i32) #1

declare dso_local i32 @RmSctpAssoc(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @freeGlobalAddressList(%struct.sctp_nat_assoc*) #1

declare dso_local i32 @sn_free(%struct.sctp_nat_assoc*) #1

declare dso_local i32 @sctp_AddTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
