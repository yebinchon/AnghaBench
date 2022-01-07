; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_dump_tp_bucket_logbufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_dump_tp_bucket_logbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.tcp_log_id_bucket* }
%struct.tcp_log_id_bucket = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@TREE_UNLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_log_dump_tp_bucket_logbufs(%struct.tcpcb* %0, i8* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_log_id_bucket*, align 8
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @INP_WLOCK_ASSERT(i32 %9)
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 1
  %13 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %12, align 8
  store %struct.tcp_log_id_bucket* %13, %struct.tcp_log_id_bucket** %5, align 8
  %14 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %5, align 8
  %15 = icmp eq %struct.tcp_log_id_bucket* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i32 @tcp_log_dump_tp_logbuf(%struct.tcpcb* %17, i8* %18, i32 %19, i32 1)
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @INP_WUNLOCK(i32 %23)
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %5, align 8
  %27 = call i32 @TCPID_BUCKET_REF(%struct.tcp_log_id_bucket* %26)
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @INP_WUNLOCK(i32 %30)
  %32 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %5, align 8
  %33 = call i32 @TCPID_BUCKET_LOCK(%struct.tcp_log_id_bucket* %32)
  %34 = load i32, i32* @TREE_UNLOCKED, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %5, align 8
  %36 = call i64 @tcp_log_unref_bucket(%struct.tcp_log_id_bucket* %35, i32* %6, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %44 [
    i32 128, label %40
    i32 129, label %42
  ]

40:                                               ; preds = %38
  %41 = call i32 (...) @TCPID_TREE_WUNLOCK()
  br label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @TCPID_TREE_RUNLOCK()
  br label %44

44:                                               ; preds = %38, %42, %40
  br label %49

45:                                               ; preds = %25
  %46 = load %struct.tcp_log_id_bucket*, %struct.tcp_log_id_bucket** %5, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @tcp_log_dumpbucketlogs(%struct.tcp_log_id_bucket* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %44, %16
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @tcp_log_dump_tp_logbuf(%struct.tcpcb*, i8*, i32, i32) #1

declare dso_local i32 @INP_WUNLOCK(i32) #1

declare dso_local i32 @TCPID_BUCKET_REF(%struct.tcp_log_id_bucket*) #1

declare dso_local i32 @TCPID_BUCKET_LOCK(%struct.tcp_log_id_bucket*) #1

declare dso_local i64 @tcp_log_unref_bucket(%struct.tcp_log_id_bucket*, i32*, i32*) #1

declare dso_local i32 @TCPID_TREE_WUNLOCK(...) #1

declare dso_local i32 @TCPID_TREE_RUNLOCK(...) #1

declare dso_local i32 @tcp_log_dumpbucketlogs(%struct.tcp_log_id_bucket*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
