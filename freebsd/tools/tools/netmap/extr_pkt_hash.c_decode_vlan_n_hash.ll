; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_vlan_n_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_vlan_n_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32 }
%struct.vlanhdr = type { i32 }
%struct.ip = type { i32 }
%struct.ip6_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ether_header*, i32, i32)* @decode_vlan_n_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_vlan_n_hash(%struct.ether_header* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ether_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlanhdr*, align 8
  store %struct.ether_header* %0, %struct.ether_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ether_header*, %struct.ether_header** %4, align 8
  %10 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %9, i64 1
  %11 = bitcast %struct.ether_header* %10 to %struct.vlanhdr*
  store %struct.vlanhdr* %11, %struct.vlanhdr** %8, align 8
  %12 = load %struct.vlanhdr*, %struct.vlanhdr** %8, align 8
  %13 = getelementptr inbounds %struct.vlanhdr, %struct.vlanhdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  switch i32 %15, label %31 [
    i32 129, label %16
    i32 128, label %23
    i32 130, label %30
  ]

16:                                               ; preds = %3
  %17 = load %struct.vlanhdr*, %struct.vlanhdr** %8, align 8
  %18 = getelementptr inbounds %struct.vlanhdr, %struct.vlanhdr* %17, i64 1
  %19 = bitcast %struct.vlanhdr* %18 to %struct.ip*
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @decode_ip_n_hash(%struct.ip* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.vlanhdr*, %struct.vlanhdr** %8, align 8
  %25 = getelementptr inbounds %struct.vlanhdr, %struct.vlanhdr* %24, i64 1
  %26 = bitcast %struct.vlanhdr* %25 to %struct.ip6_hdr*
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @decode_ipv6_n_hash(%struct.ip6_hdr* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %3, %30
  %32 = load %struct.ether_header*, %struct.ether_header** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @decode_others_n_hash(%struct.ether_header* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %23, %16
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @decode_ip_n_hash(%struct.ip*, i32, i32) #1

declare dso_local i32 @decode_ipv6_n_hash(%struct.ip6_hdr*, i32, i32) #1

declare dso_local i32 @decode_others_n_hash(%struct.ether_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
