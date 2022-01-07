; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.secasindex = type { i64, i32, i32, i32, i32 }
%struct.secasvar = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPSEC_MODE_TCPMD5 = common dso_local global i32 0, align 4
@tcps_sig_err_buildsig = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, i32*)* @tcp_ipsec_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ipsec_output(%struct.mbuf* %0, %struct.tcphdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.secasindex, align 8
  %9 = alloca %struct.secasvar*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %8, i32 0, i32 4
  %12 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %8, i32 0, i32 3
  %13 = call i32 @setsockaddrs(%struct.mbuf* %10, i32* %11, i32* %12)
  %14 = load i32, i32* @IPPROTO_TCP, align 4
  %15 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @IPSEC_MODE_TCPMD5, align 4
  %17 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %8, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = call %struct.secasvar* @key_allocsa_tcpmd5(%struct.secasindex* %8)
  store %struct.secasvar* %19, %struct.secasvar** %9, align 8
  %20 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %21 = icmp eq %struct.secasvar* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @tcps_sig_err_buildsig, align 4
  %24 = call i32 @KMOD_TCPSTAT_INC(i32 %23)
  %25 = load i32, i32* @EACCES, align 4
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %29 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @tcp_signature_compute(%struct.mbuf* %27, %struct.tcphdr* %28, %struct.secasvar* %29, i32* %30)
  %32 = call i32 @key_freesav(%struct.secasvar** %9)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @setsockaddrs(%struct.mbuf*, i32*, i32*) #1

declare dso_local %struct.secasvar* @key_allocsa_tcpmd5(%struct.secasindex*) #1

declare dso_local i32 @KMOD_TCPSTAT_INC(i32) #1

declare dso_local i32 @tcp_signature_compute(%struct.mbuf*, %struct.tcphdr*, %struct.secasvar*, i32*) #1

declare dso_local i32 @key_freesav(%struct.secasvar**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
