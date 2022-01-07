; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pppoe.c_next_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pppoe.c_next_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppoe_tag = type { i32 }
%struct.pppoe_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppoe_tag* (%struct.pppoe_hdr*)* @next_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppoe_tag* @next_tag(%struct.pppoe_hdr* %0) #0 {
  %2 = alloca %struct.pppoe_hdr*, align 8
  store %struct.pppoe_hdr* %0, %struct.pppoe_hdr** %2, align 8
  %3 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %3, i64 1
  %5 = bitcast %struct.pppoe_hdr* %4 to i8*
  %6 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohs(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = bitcast i8* %11 to %struct.pppoe_tag*
  ret %struct.pppoe_tag* %12
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
