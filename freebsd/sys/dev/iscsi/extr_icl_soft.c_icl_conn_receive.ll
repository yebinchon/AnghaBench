; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.icl_conn = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.uio = type { i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"soreceive error %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"short read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.icl_conn*, i64)* @icl_conn_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @icl_conn_receive(%struct.icl_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.icl_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uio, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %12 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %7, align 8
  %14 = call i32 @memset(%struct.uio* %6, i32 0, i32 8)
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = call i32 @soreceive(%struct.socket* %18, i32* null, %struct.uio* %6, %struct.mbuf** %8, i32* null, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %35

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = call i32 @m_freem(%struct.mbuf* %30)
  %32 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %34, %struct.mbuf** %3, align 8
  br label %35

35:                                               ; preds = %33, %29, %22
  %36 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %36
}

declare dso_local i32 @memset(%struct.uio*, i32, i32) #1

declare dso_local i32 @soreceive(%struct.socket*, i32*, %struct.uio*, %struct.mbuf**, i32*, i32*) #1

declare dso_local i32 @ICL_DEBUG(i8*, ...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
