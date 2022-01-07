; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }

@NBF_RECVLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.mbuf**, %struct.thread*)* @smb_nbst_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_recv(%struct.smb_vc* %0, %struct.mbuf** %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.nbpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %11 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %12 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %11, i32 0, i32 0
  %13 = load %struct.nbpcb*, %struct.nbpcb** %12, align 8
  store %struct.nbpcb* %13, %struct.nbpcb** %7, align 8
  %14 = load i32, i32* @NBF_RECVLOCK, align 4
  %15 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %16 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %20 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %21 = load %struct.thread*, %struct.thread** %6, align 8
  %22 = call i32 @nbssn_recv(%struct.nbpcb* %19, %struct.mbuf** %20, i32* %10, i32* %8, %struct.thread* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @NBF_RECVLOCK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %26 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @nbssn_recv(%struct.nbpcb*, %struct.mbuf**, i32*, i32*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
