; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_snd_tag_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_snd_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_snd_tag = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@snd_tag_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_snd_tag_init(%struct.m_snd_tag* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.m_snd_tag*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.m_snd_tag* %0, %struct.m_snd_tag** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %6 = call i32 @if_ref(%struct.ifnet* %5)
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = load %struct.m_snd_tag*, %struct.m_snd_tag** %3, align 8
  %9 = getelementptr inbounds %struct.m_snd_tag, %struct.m_snd_tag* %8, i32 0, i32 1
  store %struct.ifnet* %7, %struct.ifnet** %9, align 8
  %10 = load %struct.m_snd_tag*, %struct.m_snd_tag** %3, align 8
  %11 = getelementptr inbounds %struct.m_snd_tag, %struct.m_snd_tag* %10, i32 0, i32 0
  %12 = call i32 @refcount_init(i32* %11, i32 1)
  %13 = load i32, i32* @snd_tag_count, align 4
  %14 = call i32 @counter_u64_add(i32 %13, i32 1)
  ret void
}

declare dso_local i32 @if_ref(%struct.ifnet*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
