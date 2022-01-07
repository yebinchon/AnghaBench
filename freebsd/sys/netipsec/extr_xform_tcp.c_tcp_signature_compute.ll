; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_signature_compute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_signature_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.secasvar = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@tcp_signature_apply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.secasvar*, i32*)* @tcp_signature_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_signature_compute(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.secasvar* %2, i32* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.secasvar*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store %struct.secasvar* %2, %struct.secasvar** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call i32 @MD5Init(i32* %9)
  %13 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @EAFNOSUPPORT, align 4
  ret i32 %22
}

declare dso_local i32 @MD5Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
