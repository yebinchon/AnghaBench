; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_pkt_hdr_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_pkt_hdr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32 }
%struct.ip = type { i32 }
%struct.ip6_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_hdr_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ether_header*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ether_header*
  store %struct.ether_header* %10, %struct.ether_header** %8, align 8
  %11 = load %struct.ether_header*, %struct.ether_header** %8, align 8
  %12 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 129, label %22
    i32 128, label %29
    i32 131, label %34
  ]

15:                                               ; preds = %3
  %16 = load %struct.ether_header*, %struct.ether_header** %8, align 8
  %17 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %16, i64 1
  %18 = bitcast %struct.ether_header* %17 to %struct.ip*
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @decode_ip_n_hash(%struct.ip* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %39

22:                                               ; preds = %3
  %23 = load %struct.ether_header*, %struct.ether_header** %8, align 8
  %24 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %23, i64 1
  %25 = bitcast %struct.ether_header* %24 to %struct.ip6_hdr*
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @decode_ipv6_n_hash(%struct.ip6_hdr* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.ether_header*, %struct.ether_header** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @decode_vlan_n_hash(%struct.ether_header* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %39

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %3, %34
  %36 = load %struct.ether_header*, %struct.ether_header** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @decode_others_n_hash(%struct.ether_header* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29, %22, %15
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @decode_ip_n_hash(%struct.ip*, i32, i32) #1

declare dso_local i32 @decode_ipv6_n_hash(%struct.ip6_hdr*, i32, i32) #1

declare dso_local i32 @decode_vlan_n_hash(%struct.ether_header*, i32, i32) #1

declare dso_local i32 @decode_others_n_hash(%struct.ether_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
