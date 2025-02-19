; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_tag_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_mbuf_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }
%struct.label = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@mbuf_init_label = common dso_local global i32 0, align 4
@mbuf_destroy_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_mbuf_tag_init(%struct.m_tag* %0, i32 %1) #0 {
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.label*, align 8
  %6 = alloca i32, align 4
  store %struct.m_tag* %0, %struct.m_tag** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %8 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %7, i64 1
  %9 = bitcast %struct.m_tag* %8 to %struct.label*
  store %struct.label* %9, %struct.label** %5, align 8
  %10 = load %struct.label*, %struct.label** %5, align 8
  %11 = call i32 @mac_init_label(%struct.label* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @mbuf_init_label, align 4
  %18 = load %struct.label*, %struct.label** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MAC_POLICY_CHECK(i32 %17, %struct.label* %18, i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @mbuf_init_label, align 4
  %23 = load %struct.label*, %struct.label** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %22, %struct.label* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @mbuf_destroy_label, align 4
  %31 = load %struct.label*, %struct.label** %5, align 8
  %32 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %30, %struct.label* %31)
  %33 = load %struct.label*, %struct.label** %5, align 8
  %34 = call i32 @mac_destroy_label(%struct.label* %33)
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @mac_init_label(%struct.label*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.label*, i32) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.label*, i32) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.label*) #1

declare dso_local i32 @mac_destroy_label(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
