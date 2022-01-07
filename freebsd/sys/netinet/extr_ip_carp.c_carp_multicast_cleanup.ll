; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_multicast_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_multicast_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_if = type { i32, i32, %struct.ip6_moptions, %struct.ip_moptions }
%struct.ip6_moptions = type { i32 }
%struct.ip_moptions = type { i32 }

@carp_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_if*, i32)* @carp_multicast_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_multicast_cleanup(%struct.carp_if* %0, i32 %1) #0 {
  %3 = alloca %struct.carp_if*, align 8
  %4 = alloca i32, align 4
  store %struct.carp_if* %0, %struct.carp_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SA_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @carp_sx, i32 %5)
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %8 [
  ]

8:                                                ; preds = %2
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
