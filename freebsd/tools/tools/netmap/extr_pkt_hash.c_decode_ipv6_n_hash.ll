; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_ipv6_n_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_ipv6_n_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.ip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_hdr*, i32, i32)* @decode_ipv6_n_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ipv6_n_hash(%struct.ip6_hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ip6_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.udphdr*, align 8
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %17, %24
  %26 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %25, %32
  %34 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 24
  %41 = or i32 %33, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %43 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %47, %54
  %56 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %55, %62
  %64 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %65 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 24
  %71 = or i32 %63, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %86

74:                                               ; preds = %3
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ntohl(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ntohl(i32 %77)
  %79 = call i32 @ntohs(i32 65533)
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @ntohs(i32 65534)
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @sym_hash_fn(i32 %76, i32 %78, i32 %81, i32 %84)
  store i32 %85, i32* %9, align 4
  br label %169

86:                                               ; preds = %3
  store %struct.tcphdr* null, %struct.tcphdr** %10, align 8
  store %struct.udphdr* null, %struct.udphdr** %11, align 8
  %87 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %88 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ntohs(i32 %91)
  switch i32 %92, label %156 [
    i32 129, label %93
    i32 128, label %114
    i32 132, label %135
    i32 131, label %142
    i32 135, label %148
    i32 134, label %155
    i32 136, label %155
    i32 130, label %155
    i32 133, label %155
  ]

93:                                               ; preds = %86
  %94 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %95 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %94, i64 1
  %96 = bitcast %struct.ip6_hdr* %95 to %struct.tcphdr*
  store %struct.tcphdr* %96, %struct.tcphdr** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ntohl(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ntohl(i32 %99)
  %101 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohs(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %108 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohs(i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @sym_hash_fn(i32 %98, i32 %100, i32 %106, i32 %112)
  store i32 %113, i32* %9, align 4
  br label %168

114:                                              ; preds = %86
  %115 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %116 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %115, i64 1
  %117 = bitcast %struct.ip6_hdr* %116 to %struct.udphdr*
  store %struct.udphdr* %117, %struct.udphdr** %11, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @ntohl(i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @ntohl(i32 %120)
  %122 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %123 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ntohs(i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %129 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohs(i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @sym_hash_fn(i32 %119, i32 %121, i32 %127, i32 %133)
  store i32 %134, i32* %9, align 4
  br label %168

135:                                              ; preds = %86
  %136 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %137 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %136, i64 1
  %138 = bitcast %struct.ip6_hdr* %137 to %struct.ip*
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @decode_ip_n_hash(%struct.ip* %138, i32 %139, i32 %140)
  store i32 %141, i32* %9, align 4
  br label %168

142:                                              ; preds = %86
  %143 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %144 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %143, i64 1
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @decode_ipv6_n_hash(%struct.ip6_hdr* %144, i32 %145, i32 %146)
  store i32 %147, i32* %9, align 4
  br label %168

148:                                              ; preds = %86
  %149 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %150 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %149, i64 1
  %151 = bitcast %struct.ip6_hdr* %150 to i32*
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @decode_gre_hash(i32* %151, i32 %152, i32 %153)
  store i32 %154, i32* %9, align 4
  br label %168

155:                                              ; preds = %86, %86, %86, %86
  br label %156

156:                                              ; preds = %86, %155
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @ntohl(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @ntohl(i32 %159)
  %161 = call i32 @ntohs(i32 65533)
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @ntohs(i32 65534)
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @sym_hash_fn(i32 %158, i32 %160, i32 %163, i32 %166)
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %156, %148, %142, %135, %114, %93
  br label %169

169:                                              ; preds = %168, %74
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @sym_hash_fn(i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @decode_ip_n_hash(%struct.ip*, i32, i32) #1

declare dso_local i32 @decode_gre_hash(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
