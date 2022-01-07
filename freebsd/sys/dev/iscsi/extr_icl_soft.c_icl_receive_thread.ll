; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_receive_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_receive_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i64, i32, i32, i32, i64, %struct.socket* }
%struct.socket = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @icl_receive_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_receive_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socket*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.icl_conn*
  store %struct.icl_conn* %7, %struct.icl_conn** %3, align 8
  %8 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %9 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %8, i32 0, i32 5
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %5, align 8
  br label %11

11:                                               ; preds = %52, %1
  %12 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %13 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %59

17:                                               ; preds = %11
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = call i32 @SOCKBUF_LOCK(%struct.TYPE_4__* %19)
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = call i64 @sbavail(%struct.TYPE_4__* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %26 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %17
  %30 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %31 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.socket*, %struct.socket** %5, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %37 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %36, i32 0, i32 3
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = call i32 @cv_wait(i32* %37, i32* %40)
  br label %52

42:                                               ; preds = %17
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %42, %29
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_4__* %54)
  %56 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @icl_conn_receive_pdus(%struct.icl_conn* %56, i64 %57)
  br label %11

59:                                               ; preds = %16
  %60 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %61 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %60)
  %62 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %63 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %65 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %64, i32 0, i32 2
  %66 = call i32 @cv_signal(i32* %65)
  %67 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %68 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %67)
  %69 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_4__*) #1

declare dso_local i64 @sbavail(%struct.TYPE_4__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @icl_conn_receive_pdus(%struct.icl_conn*, i64) #1

declare dso_local i32 @ICL_CONN_LOCK(%struct.icl_conn*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @ICL_CONN_UNLOCK(%struct.icl_conn*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
