; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_check_data_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_check_data_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISCSI_DATA_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to receive data digest\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"data digest check failed; got 0x%x, should be 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*, i64*)* @icl_pdu_check_data_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pdu_check_data_digest(%struct.icl_pdu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %9 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i32, i32* @ISCSI_DATA_DIGEST_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 8, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @CTASSERT(i32 %25)
  %27 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %28 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @ISCSI_DATA_DIGEST_SIZE, align 4
  %31 = call i64 @icl_conn_receive_buf(%struct.TYPE_2__* %29, i64* %6, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

35:                                               ; preds = %21
  %36 = load i32, i32* @ISCSI_DATA_DIGEST_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %37
  store i64 %40, i64* %38, align 8
  %41 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %42 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @icl_mbuf_to_crc32c(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ICL_WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50)
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48, %33, %20, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i64 @icl_conn_receive_buf(%struct.TYPE_2__*, i64*, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*) #1

declare dso_local i64 @icl_mbuf_to_crc32c(i32) #1

declare dso_local i32 @ICL_WARN(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
