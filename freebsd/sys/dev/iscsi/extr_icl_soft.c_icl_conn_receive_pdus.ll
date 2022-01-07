; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive_pdus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i64, i32 (%struct.icl_pdu*)*, i64, %struct.socket* }
%struct.icl_pdu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"NULL socket\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"connection error %d; dropping connection\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"received PDU with unsupported AHS; opcode 0x%x; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_conn*, i64)* @icl_conn_receive_pdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_conn_receive_pdus(%struct.icl_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.icl_pdu*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %8 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %7, i32 0, i32 3
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = icmp ne %struct.socket* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %62, %44, %2
  %15 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %16 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %68

20:                                               ; preds = %14
  %21 = load %struct.socket*, %struct.socket** %6, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, i64, ...) @ICL_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %31 = call i32 @icl_conn_fail(%struct.icl_conn* %30)
  br label %68

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %35 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %68

39:                                               ; preds = %32
  %40 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %41 = call %struct.icl_pdu* @icl_conn_receive_pdu(%struct.icl_conn* %40, i64* %4)
  store %struct.icl_pdu* %41, %struct.icl_pdu** %5, align 8
  %42 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %43 = icmp eq %struct.icl_pdu* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %14

45:                                               ; preds = %39
  %46 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %47 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %52 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ICL_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %58 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %59 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %57, %struct.icl_pdu* %58)
  %60 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %61 = call i32 @icl_conn_fail(%struct.icl_conn* %60)
  br label %68

62:                                               ; preds = %45
  %63 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %64 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %63, i32 0, i32 1
  %65 = load i32 (%struct.icl_pdu*)*, i32 (%struct.icl_pdu*)** %64, align 8
  %66 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %67 = call i32 %65(%struct.icl_pdu* %66)
  br label %14

68:                                               ; preds = %50, %38, %25, %19
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ICL_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @icl_conn_fail(%struct.icl_conn*) #1

declare dso_local %struct.icl_pdu* @icl_conn_receive_pdu(%struct.icl_conn*, i64*) #1

declare dso_local i32 @ICL_WARN(i8*, i32) #1

declare dso_local i32 @icl_soft_conn_pdu_free(%struct.icl_conn*, %struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
