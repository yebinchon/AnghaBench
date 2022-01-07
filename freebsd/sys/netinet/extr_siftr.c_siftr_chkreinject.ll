; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_siftr_chkreinject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_siftr_chkreinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.siftr_stats = type { i32, i32, i32, i32 }
%struct.m_tag = type { i32 }

@PACKET_COOKIE_SIFTR = common dso_local global i32 0, align 4
@PACKET_TAG_SIFTR = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, %struct.siftr_stats*)* @siftr_chkreinject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siftr_chkreinject(%struct.mbuf* %0, i32 %1, %struct.siftr_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.siftr_stats*, align 8
  %8 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.siftr_stats* %2, %struct.siftr_stats** %7, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = load i32, i32* @PACKET_COOKIE_SIFTR, align 4
  %11 = load i32, i32* @PACKET_TAG_SIFTR, align 4
  %12 = call i32* @m_tag_locate(%struct.mbuf* %9, i32 %10, i32 %11, i32* null)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PFIL_IN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.siftr_stats*, %struct.siftr_stats** %7, align 8
  %20 = getelementptr inbounds %struct.siftr_stats, %struct.siftr_stats* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.siftr_stats*, %struct.siftr_stats** %7, align 8
  %25 = getelementptr inbounds %struct.siftr_stats, %struct.siftr_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %18
  store i32 1, i32* %4, align 4
  br label %56

29:                                               ; preds = %3
  %30 = load i32, i32* @PACKET_COOKIE_SIFTR, align 4
  %31 = load i32, i32* @PACKET_TAG_SIFTR, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call %struct.m_tag* @m_tag_alloc(i32 %30, i32 %31, i32 0, i32 %32)
  store %struct.m_tag* %33, %struct.m_tag** %8, align 8
  %34 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %35 = icmp eq %struct.m_tag* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PFIL_IN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.siftr_stats*, %struct.siftr_stats** %7, align 8
  %42 = getelementptr inbounds %struct.siftr_stats, %struct.siftr_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.siftr_stats*, %struct.siftr_stats** %7, align 8
  %47 = getelementptr inbounds %struct.siftr_stats, %struct.siftr_stats* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40
  store i32 1, i32* %4, align 4
  br label %56

51:                                               ; preds = %29
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %54 = call i32 @m_tag_prepend(%struct.mbuf* %52, %struct.m_tag* %53)
  br label %55

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %50, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
