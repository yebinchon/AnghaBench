; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_newbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_newbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @uether_newbuf() #0 {
  %1 = alloca %struct.mbuf*, align 8
  %2 = alloca %struct.mbuf*, align 8
  %3 = load i32, i32* @M_NOWAIT, align 4
  %4 = load i32, i32* @MT_DATA, align 4
  %5 = load i32, i32* @M_PKTHDR, align 4
  %6 = call %struct.mbuf* @m_getcl(i32 %3, i32 %4, i32 %5)
  store %struct.mbuf* %6, %struct.mbuf** %2, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %8 = icmp eq %struct.mbuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.mbuf* null, %struct.mbuf** %1, align 8
  br label %21

10:                                               ; preds = %0
  %11 = load i32, i32* @MCLBYTES, align 4
  %12 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %18 = load i32, i32* @ETHER_ALIGN, align 4
  %19 = call i32 @m_adj(%struct.mbuf* %17, i32 %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  store %struct.mbuf* %20, %struct.mbuf** %1, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.mbuf*, %struct.mbuf** %1, align 8
  ret %struct.mbuf* %22
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
