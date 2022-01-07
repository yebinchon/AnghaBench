; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_upd_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_upd_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pfsync_state_peer = type { i64, i32 }

@PF_TCPS_PROXY_SRC = common dso_local global i64 0, align 8
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state*, %struct.pfsync_state_peer*, %struct.pfsync_state_peer*)* @pfsync_upd_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_upd_tcp(%struct.pf_state* %0, %struct.pfsync_state_peer* %1, %struct.pfsync_state_peer* %2) #0 {
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.pfsync_state_peer*, align 8
  %6 = alloca %struct.pfsync_state_peer*, align 8
  %7 = alloca i32, align 4
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store %struct.pfsync_state_peer* %1, %struct.pfsync_state_peer** %5, align 8
  store %struct.pfsync_state_peer* %2, %struct.pfsync_state_peer** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %9 = call i32 @PF_STATE_LOCK_ASSERT(%struct.pf_state* %8)
  %10 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %11 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %15 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %20 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PF_TCPS_PROXY_SRC, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %51, label %25

25:                                               ; preds = %18
  %26 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %27 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PF_TCPS_PROXY_SRC, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %25, %3
  %32 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %33 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %37 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %42 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %46 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ntohl(i32 %47)
  %49 = call i64 @SEQ_GT(i32 %44, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40, %25, %18
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %40, %31
  %55 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %56 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %57 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %56, i32 0, i32 1
  %58 = call i32 @pf_state_peer_ntoh(%struct.pfsync_state_peer* %55, %struct.TYPE_2__* %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %61 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %6, align 8
  %65 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %59
  %69 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TCPS_SYN_SENT, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %77 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %6, align 8
  %81 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ntohl(i32 %82)
  %84 = call i64 @SEQ_GT(i32 %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75, %59
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %94

89:                                               ; preds = %75, %68
  %90 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %6, align 8
  %91 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %92 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %91, i32 0, i32 0
  %93 = call i32 @pf_state_peer_ntoh(%struct.pfsync_state_peer* %90, %struct.TYPE_2__* %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @PF_STATE_LOCK_ASSERT(%struct.pf_state*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pf_state_peer_ntoh(%struct.pfsync_state_peer*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
