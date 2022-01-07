; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_get_mtag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_get_mtag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_mtag = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@PACKET_TAG_PF = common dso_local global i32 0, align 4
@pf_mtag_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_mtag* @pf_get_mtag(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.pf_mtag*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = load i32, i32* @PACKET_TAG_PF, align 4
  %7 = call %struct.m_tag* @m_tag_find(%struct.mbuf* %5, i32 %6, i32* null)
  store %struct.m_tag* %7, %struct.m_tag** %4, align 8
  %8 = icmp ne %struct.m_tag* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %11 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %10, i64 1
  %12 = bitcast %struct.m_tag* %11 to %struct.pf_mtag*
  store %struct.pf_mtag* %12, %struct.pf_mtag** %2, align 8
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @pf_mtag_z, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.m_tag* @uma_zalloc(i32 %14, i32 %15)
  store %struct.m_tag* %16, %struct.m_tag** %4, align 8
  %17 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %18 = icmp eq %struct.m_tag* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.pf_mtag* null, %struct.pf_mtag** %2, align 8
  br label %30

20:                                               ; preds = %13
  %21 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %22 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %21, i64 1
  %23 = call i32 @bzero(%struct.m_tag* %22, i32 4)
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %26 = call i32 @m_tag_prepend(%struct.mbuf* %24, %struct.m_tag* %25)
  %27 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %28 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %27, i64 1
  %29 = bitcast %struct.m_tag* %28 to %struct.pf_mtag*
  store %struct.pf_mtag* %29, %struct.pf_mtag** %2, align 8
  br label %30

30:                                               ; preds = %20, %19, %9
  %31 = load %struct.pf_mtag*, %struct.pf_mtag** %2, align 8
  ret %struct.pf_mtag* %31
}

declare dso_local %struct.m_tag* @m_tag_find(%struct.mbuf*, i32, i32*) #1

declare dso_local %struct.m_tag* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bzero(%struct.m_tag*, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
