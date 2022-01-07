; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.secasindex = type { i64, i32, i32, i32, i32 }
%struct.secasvar = type { i32 }

@TCP_SIGLEN = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPSEC_MODE_TCPMD5 = common dso_local global i32 0, align 4
@tcps_sig_err_buildsig = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@tcps_sig_rcvbadsig = common dso_local global i32 0, align 4
@tcps_sig_rcvgoodsig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, i32*)* @tcp_ipsec_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ipsec_input(%struct.mbuf* %0, %struct.tcphdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.secasindex, align 8
  %11 = alloca %struct.secasvar*, align 8
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @TCP_SIGLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %10, i32 0, i32 4
  %19 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %10, i32 0, i32 3
  %20 = call i32 @setsockaddrs(%struct.mbuf* %17, i32* %18, i32* %19)
  %21 = load i32, i32* @IPPROTO_TCP, align 4
  %22 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %10, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @IPSEC_MODE_TCPMD5, align 4
  %24 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %10, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = call %struct.secasvar* @key_allocsa_tcpmd5(%struct.secasindex* %10)
  store %struct.secasvar* %26, %struct.secasvar** %11, align 8
  %27 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  %28 = icmp eq %struct.secasvar* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @tcps_sig_err_buildsig, align 4
  %31 = call i32 @KMOD_TCPSTAT_INC(i32 %30)
  %32 = load i32, i32* @EACCES, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

33:                                               ; preds = %3
  %34 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %35 = call i32 @tcp_fields_to_net(%struct.tcphdr* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %38 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  %39 = call i32 @tcp_signature_compute(%struct.mbuf* %36, %struct.tcphdr* %37, %struct.secasvar* %38, i8* %16)
  %40 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %41 = call i32 @tcp_fields_to_host(%struct.tcphdr* %40)
  %42 = call i32 @key_freesav(%struct.secasvar** %11)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @TCP_SIGLEN, align 4
  %45 = call i64 @bcmp(i32* %43, i8* %16, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @tcps_sig_rcvbadsig, align 4
  %49 = call i32 @KMOD_TCPSTAT_INC(i32 %48)
  %50 = load i32, i32* @EACCES, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

51:                                               ; preds = %33
  %52 = load i32, i32* @tcps_sig_rcvgoodsig, align 4
  %53 = call i32 @KMOD_TCPSTAT_INC(i32 %52)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %47, %29
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setsockaddrs(%struct.mbuf*, i32*, i32*) #2

declare dso_local %struct.secasvar* @key_allocsa_tcpmd5(%struct.secasindex*) #2

declare dso_local i32 @KMOD_TCPSTAT_INC(i32) #2

declare dso_local i32 @tcp_fields_to_net(%struct.tcphdr*) #2

declare dso_local i32 @tcp_signature_compute(%struct.mbuf*, %struct.tcphdr*, %struct.secasvar*, i8*) #2

declare dso_local i32 @tcp_fields_to_host(%struct.tcphdr*) #2

declare dso_local i32 @key_freesav(%struct.secasvar**) #2

declare dso_local i64 @bcmp(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
