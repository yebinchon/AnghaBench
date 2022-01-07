; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_check_header_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_check_header_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.TYPE_3__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ISCSI_HEADER_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to receive header digest\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"header digest check failed; got 0x%x, should be 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*, i64*)* @icl_pdu_check_header_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pdu_check_header_digest(%struct.icl_pdu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %9 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @ISCSI_HEADER_DIGEST_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 8, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @CTASSERT(i32 %19)
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %22 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @ISCSI_HEADER_DIGEST_SIZE, align 4
  %25 = call i64 @icl_conn_receive_buf(%struct.TYPE_4__* %23, i64* %6, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

29:                                               ; preds = %15
  %30 = load i32, i32* @ISCSI_HEADER_DIGEST_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %36 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %39 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32* %37, i32** %41, align 8
  %42 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i64 @icl_mbuf_to_crc32c(%struct.TYPE_3__* %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %47 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %29
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @ICL_WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55)
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %53, %27, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i64 @icl_conn_receive_buf(%struct.TYPE_4__*, i64*, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*) #1

declare dso_local i64 @icl_mbuf_to_crc32c(%struct.TYPE_3__*) #1

declare dso_local i32 @ICL_WARN(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
