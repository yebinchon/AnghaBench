; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_snd_tag_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_snd_tag_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_snd_tag = type { %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.m_snd_tag*)* }

@snd_tag_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_snd_tag_destroy(%struct.m_snd_tag* %0) #0 {
  %2 = alloca %struct.m_snd_tag*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.m_snd_tag* %0, %struct.m_snd_tag** %2, align 8
  %4 = load %struct.m_snd_tag*, %struct.m_snd_tag** %2, align 8
  %5 = getelementptr inbounds %struct.m_snd_tag, %struct.m_snd_tag* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32 (%struct.m_snd_tag*)*, i32 (%struct.m_snd_tag*)** %8, align 8
  %10 = load %struct.m_snd_tag*, %struct.m_snd_tag** %2, align 8
  %11 = call i32 %9(%struct.m_snd_tag* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32 @if_rele(%struct.ifnet* %12)
  %14 = load i32, i32* @snd_tag_count, align 4
  %15 = call i32 @counter_u64_add(i32 %14, i32 -1)
  ret void
}

declare dso_local i32 @if_rele(%struct.ifnet*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
