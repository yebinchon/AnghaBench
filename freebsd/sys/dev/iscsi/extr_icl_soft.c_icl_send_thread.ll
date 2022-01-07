; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_send_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_send_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32, i32, i32, %struct.icl_pdu_stailq, i32, i64 }
%struct.icl_pdu_stailq = type { i32 }

@icl_pdu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @icl_send_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_send_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca %struct.icl_pdu_stailq, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.icl_conn*
  store %struct.icl_conn* %6, %struct.icl_conn** %3, align 8
  %7 = call i32 @STAILQ_INIT(%struct.icl_pdu_stailq* %4)
  %8 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %9 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %8)
  br label %10

10:                                               ; preds = %49, %1
  br label %11

11:                                               ; preds = %41, %32, %10
  %12 = call i64 @STAILQ_EMPTY(%struct.icl_pdu_stailq* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %16 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %15, i32 0, i32 3
  %17 = load i32, i32* @icl_pdu, align 4
  %18 = call i32 @STAILQ_SWAP(%struct.icl_pdu_stailq* %16, %struct.icl_pdu_stailq* %4, i32 %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %21 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %23 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %22)
  %24 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %25 = call i32 @icl_conn_send_pdus(%struct.icl_conn* %24, %struct.icl_pdu_stailq* %4)
  %26 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %27 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %26)
  %28 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %29 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %11

33:                                               ; preds = %19
  %34 = call i64 @STAILQ_EMPTY(%struct.icl_pdu_stailq* %4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %38 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %37, i32 0, i32 3
  %39 = call i64 @STAILQ_EMPTY(%struct.icl_pdu_stailq* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %11

42:                                               ; preds = %36, %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %45 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %51 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %50, i32 0, i32 2
  %52 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %53 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cv_wait(i32* %51, i32 %54)
  br label %10

56:                                               ; preds = %48
  %57 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %58 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %57, i32 0, i32 3
  %59 = call i32 @STAILQ_CONCAT(%struct.icl_pdu_stailq* %58, %struct.icl_pdu_stailq* %4)
  %60 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %61 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %63 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %62, i32 0, i32 2
  %64 = call i32 @cv_signal(i32* %63)
  %65 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %66 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %65)
  %67 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @STAILQ_INIT(%struct.icl_pdu_stailq*) #1

declare dso_local i32 @ICL_CONN_LOCK(%struct.icl_conn*) #1

declare dso_local i64 @STAILQ_EMPTY(%struct.icl_pdu_stailq*) #1

declare dso_local i32 @STAILQ_SWAP(%struct.icl_pdu_stailq*, %struct.icl_pdu_stailq*, i32) #1

declare dso_local i32 @ICL_CONN_UNLOCK(%struct.icl_conn*) #1

declare dso_local i32 @icl_conn_send_pdus(%struct.icl_conn*, %struct.icl_pdu_stailq*) #1

declare dso_local i32 @cv_wait(i32*, i32) #1

declare dso_local i32 @STAILQ_CONCAT(%struct.icl_pdu_stailq*, %struct.icl_pdu_stailq*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
