; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_bcopy.c_sdp_nagle_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_bcopy.c_sdp_nagle_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i32, %struct.socket*, i64 }
%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"last_unacked = %ld\0A\00", align 1
@TCPS_CLOSED = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@SDP_NAGLE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdp_nagle_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_nagle_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.socket*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sdp_sock*
  store %struct.sdp_sock* %6, %struct.sdp_sock** %3, align 8
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %7, i32 0, i32 2
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %4, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sdp_dbg_data(%struct.socket* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 1
  %17 = call i32 @callout_active(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 1
  %23 = call i32 @callout_deactivate(i32* %22)
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCPS_CLOSED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %38 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = call i32 @sdp_post_sends(%struct.sdp_sock* %39, i32 %40)
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %42, i32 0, i32 2
  %44 = load %struct.socket*, %struct.socket** %43, align 8
  %45 = call i32 @sowwakeup(%struct.socket* %44)
  br label %46

46:                                               ; preds = %36, %28
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %54 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %53, i32 0, i32 1
  %55 = load i32, i32* @SDP_NAGLE_TIMEOUT, align 4
  %56 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %57 = call i32 @callout_reset(i32* %54, i32 %55, void (i8*)* @sdp_nagle_timeout, %struct.sdp_sock* %56)
  br label %58

58:                                               ; preds = %19, %35, %52, %46
  ret void
}

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, i64) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @sdp_post_sends(%struct.sdp_sock*, i32) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
