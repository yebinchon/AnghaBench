; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_to_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_to_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@PACKET_TAG_MACLABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.label*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca %struct.label*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = icmp eq %struct.mbuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.label* null, %struct.label** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = load i32, i32* @PACKET_TAG_MACLABEL, align 4
  %12 = call %struct.m_tag* @m_tag_find(%struct.mbuf* %10, i32 %11, i32* null)
  store %struct.m_tag* %12, %struct.m_tag** %4, align 8
  %13 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %14 = icmp eq %struct.m_tag* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.label* null, %struct.label** %2, align 8
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %18 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %17, i64 1
  %19 = bitcast %struct.m_tag* %18 to %struct.label*
  store %struct.label* %19, %struct.label** %5, align 8
  %20 = load %struct.label*, %struct.label** %5, align 8
  store %struct.label* %20, %struct.label** %2, align 8
  br label %21

21:                                               ; preds = %16, %15, %8
  %22 = load %struct.label*, %struct.label** %2, align 8
  ret %struct.label* %22
}

declare dso_local %struct.m_tag* @m_tag_find(%struct.mbuf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
