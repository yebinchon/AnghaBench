; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_pdu_append_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_pdu_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.icl_pdu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i32 }

@ISCSI_BHS_OPCODE_LOGIN_REQUEST = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_TEXT_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"copy to login buff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_pdu_append_data(%struct.icl_conn* %0, %struct.icl_pdu* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.icl_conn*, align 8
  %7 = alloca %struct.icl_pdu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iser_conn*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %6, align 8
  store %struct.icl_pdu* %1, %struct.icl_pdu** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.icl_conn*, %struct.icl_conn** %6, align 8
  %13 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %12)
  store %struct.iser_conn* %13, %struct.iser_conn** %11, align 8
  %14 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %15 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISCSI_BHS_OPCODE_LOGIN_REQUEST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %5
  %23 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %24 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISCSI_BHS_OPCODE_TEXT_REQUEST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22, %5
  %32 = call i32 @ISER_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memcpy(i32 %35, i8* %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %41 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %31, %22
  ret i32 0
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local i32 @ISER_DBG(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
