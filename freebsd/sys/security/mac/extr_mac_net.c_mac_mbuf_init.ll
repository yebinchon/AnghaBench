; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_MBUF = common dso_local global i32 0, align 4
@PACKET_TAG_MACLABEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_mbuf_init(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_tag*, align 8
  %7 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %8)
  %10 = load i32, i32* @mac_labeled, align 4
  %11 = load i32, i32* @MPC_OBJECT_MBUF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @PACKET_TAG_MACLABEL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.m_tag* @m_tag_get(i32 %15, i32 4, i32 %16)
  store %struct.m_tag* %17, %struct.m_tag** %6, align 8
  %18 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %19 = icmp eq %struct.m_tag* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %14
  %23 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mac_mbuf_tag_init(%struct.m_tag* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %30 = call i32 @m_tag_free(%struct.m_tag* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %35 = call i32 @m_tag_prepend(%struct.mbuf* %33, %struct.m_tag* %34)
  br label %36

36:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local %struct.m_tag* @m_tag_get(i32, i32, i32) #1

declare dso_local i32 @mac_mbuf_tag_init(%struct.m_tag*, i32) #1

declare dso_local i32 @m_tag_free(%struct.m_tag*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
