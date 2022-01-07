; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_vnet_arp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_vnet_arp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curvnet = common dso_local global i32 0, align 4
@arp_nh = common dso_local global i32 0, align 4
@iflladdr_event = common dso_local global i32 0, align 4
@arp_iflladdr = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@iflladdr_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vnet_arp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnet_arp_init() #0 {
  %1 = load i32, i32* @curvnet, align 4
  %2 = call i64 @IS_DEFAULT_VNET(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = call i32 @netisr_register(i32* @arp_nh)
  %6 = load i32, i32* @iflladdr_event, align 4
  %7 = load i32, i32* @arp_iflladdr, align 4
  %8 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %9 = call i32 @EVENTHANDLER_REGISTER(i32 %6, i32 %7, i32* null, i32 %8)
  store i32 %9, i32* @iflladdr_tag, align 4
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @netisr_register(i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
