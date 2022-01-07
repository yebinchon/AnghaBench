; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_send_accounting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_send_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i32 }
%struct.tcp_bbr = type { i64 }
%struct.bbr_sendmap = type { i32, i64 }

@TF_FORCEDATA = common dso_local global i32 0, align 4
@tcps_sndprobe = common dso_local global i32 0, align 4
@BBR_TLP = common dso_local global i32 0, align 4
@tcps_sndrexmitpack = common dso_local global i32 0, align 4
@tcps_sndrexmitbyte = common dso_local global i32 0, align 4
@bbr_state_lost = common dso_local global i32* null, align 8
@BBR_STATE_PROBE_BW = common dso_local global i64 0, align 8
@bbr_state_resend = common dso_local global i32* null, align 8
@tcps_sndpack = common dso_local global i32 0, align 4
@tcps_sndbyte = common dso_local global i32 0, align 4
@VOI_TCP_RETXPB = common dso_local global i32 0, align 4
@VOI_TCP_TXPB = common dso_local global i32 0, align 4
@tcps_tlpresend_bytes = common dso_local global i32 0, align 4
@tcps_tlpresends = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32)* @bbr_do_send_accounting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_do_send_accounting(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.bbr_sendmap* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_bbr*, align 8
  %8 = alloca %struct.bbr_sendmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %7, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %16 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @bbr_do_error_accounting(%struct.tcpcb* %14, %struct.tcp_bbr* %15, %struct.bbr_sendmap* %16, i32 %17, i32 %18)
  br label %131

20:                                               ; preds = %5
  %21 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TF_FORCEDATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @tcps_sndprobe, align 4
  %32 = call i32 @TCPSTAT_INC(i32 %31)
  br label %131

33:                                               ; preds = %27, %20
  %34 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %35 = icmp ne %struct.bbr_sendmap* %34, null
  br i1 %35, label %36, label %114

36:                                               ; preds = %33
  %37 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %38 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BBR_TLP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %54

44:                                               ; preds = %36
  %45 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @tcps_sndrexmitpack, align 4
  %50 = call i32 @TCPSTAT_INC(i32 %49)
  %51 = load i32, i32* @tcps_sndrexmitbyte, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @TCPSTAT_ADD(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %43
  %55 = load i32*, i32** @bbr_state_lost, align 8
  %56 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %57 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @counter_u64_add(i32 %60, i32 %61)
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BBR_STATE_PROBE_BW, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load i32*, i32** @bbr_state_resend, align 8
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @counter_u64_add(i32 %74, i32 %75)
  br label %93

77:                                               ; preds = %54
  %78 = load i32*, i32** @bbr_state_resend, align 8
  %79 = load i64, i64* @BBR_STATE_PROBE_BW, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @counter_u64_add(i32 %81, i32 %82)
  %84 = load i32*, i32** @bbr_state_resend, align 8
  %85 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %86 = call i32 @bbr_state_val(%struct.tcp_bbr* %85)
  %87 = add nsw i32 %86, 5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @counter_u64_add(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %77, %68
  %94 = load i32*, i32** @bbr_state_lost, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 16
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @counter_u64_add(i32 %96, i32 %97)
  %99 = load i32*, i32** @bbr_state_resend, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @counter_u64_add(i32 %101, i32 %102)
  %104 = load i32*, i32** @bbr_state_resend, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 17
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @counter_u64_add(i32 %106, i32 %107)
  %109 = load i32*, i32** @bbr_state_lost, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 17
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @counter_u64_add(i32 %111, i32 %112)
  br label %130

114:                                              ; preds = %33
  %115 = load i32, i32* @tcps_sndpack, align 4
  %116 = call i32 @TCPSTAT_INC(i32 %115)
  %117 = load i32, i32* @tcps_sndbyte, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @TCPSTAT_ADD(i32 %117, i32 %118)
  %120 = load i32*, i32** @bbr_state_resend, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 17
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @counter_u64_add(i32 %122, i32 %123)
  %125 = load i32*, i32** @bbr_state_lost, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 17
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @counter_u64_add(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %114, %93
  br label %131

131:                                              ; preds = %13, %130, %30
  ret void
}

declare dso_local i32 @bbr_do_error_accounting(%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @bbr_state_val(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
