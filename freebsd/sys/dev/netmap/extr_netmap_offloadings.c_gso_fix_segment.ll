; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_offloadings.c_gso_fix_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_offloadings.c_gso_fix_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.nm_iphdr = type { i8*, i8*, i8* }
%struct.nm_ipv6hdr = type { i8* }
%struct.nm_tcphdr = type { i32, i8*, i32 }
%struct.nm_udphdr = type { i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"ip total length %u\00", align 1
@ip = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ip identification %u\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"IP csum %x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tcp seq %u\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"last_segment %u\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"TCP/UDP csum %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i32, i32, i32, i32)* @gso_fix_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gso_fix_segment(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nm_iphdr*, align 8
  %18 = alloca %struct.nm_ipv6hdr*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.nm_tcphdr*, align 8
  %22 = alloca %struct.nm_udphdr*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to %struct.nm_iphdr*
  store %struct.nm_iphdr* %24, %struct.nm_iphdr** %17, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = bitcast i32* %25 to %struct.nm_ipv6hdr*
  store %struct.nm_ipv6hdr* %26, %struct.nm_ipv6hdr** %18, align 8
  store i8** null, i8*** %19, align 8
  store i32* null, i32** %20, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @htobe16(i32 %31)
  %33 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %34 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ip, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @be16toh(i8* %37)
  %39 = call i32 @nm_prdis(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %41 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @be16toh(i8* %42)
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i8* @htobe16(i32 %45)
  %47 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %48 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %50 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @be16toh(i8* %51)
  %53 = call i32 @nm_prdis(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %55 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %54, i32 0, i32 0
  store i8* null, i8** %55, align 8
  %56 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %57 = call i8* @nm_os_csum_ipv4(%struct.nm_iphdr* %56)
  %58 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %59 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %61 = getelementptr inbounds %struct.nm_iphdr, %struct.nm_iphdr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @be16toh(i8* %62)
  %64 = call i32 @nm_prdis(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %74

65:                                               ; preds = %8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @htobe16(i32 %70)
  %72 = load %struct.nm_ipv6hdr*, %struct.nm_ipv6hdr** %18, align 8
  %73 = getelementptr inbounds %struct.nm_ipv6hdr, %struct.nm_ipv6hdr* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %29
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.nm_tcphdr*
  store %struct.nm_tcphdr* %82, %struct.nm_tcphdr** %21, align 8
  %83 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %84 = getelementptr inbounds %struct.nm_tcphdr, %struct.nm_tcphdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @be32toh(i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @htobe32(i32 %88)
  %90 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %91 = getelementptr inbounds %struct.nm_tcphdr, %struct.nm_tcphdr* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %93 = getelementptr inbounds %struct.nm_tcphdr, %struct.nm_tcphdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @be32toh(i32 %94)
  %96 = call i32 @nm_prdis(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %77
  %100 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %101 = getelementptr inbounds %struct.nm_tcphdr, %struct.nm_tcphdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, -10
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %77
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @nm_prdis(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %108 = getelementptr inbounds %struct.nm_tcphdr, %struct.nm_tcphdr* %107, i32 0, i32 1
  store i8** %108, i8*** %19, align 8
  %109 = load %struct.nm_tcphdr*, %struct.nm_tcphdr** %21, align 8
  %110 = bitcast %struct.nm_tcphdr* %109 to i32*
  store i32* %110, i32** %20, align 8
  br label %129

111:                                              ; preds = %74
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = bitcast i32* %115 to %struct.nm_udphdr*
  store %struct.nm_udphdr* %116, %struct.nm_udphdr** %22, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %117, %119
  %121 = trunc i64 %120 to i32
  %122 = call i8* @htobe16(i32 %121)
  %123 = load %struct.nm_udphdr*, %struct.nm_udphdr** %22, align 8
  %124 = getelementptr inbounds %struct.nm_udphdr, %struct.nm_udphdr* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.nm_udphdr*, %struct.nm_udphdr** %22, align 8
  %126 = getelementptr inbounds %struct.nm_udphdr, %struct.nm_udphdr* %125, i32 0, i32 0
  store i8** %126, i8*** %19, align 8
  %127 = load %struct.nm_udphdr*, %struct.nm_udphdr** %22, align 8
  %128 = bitcast %struct.nm_udphdr* %127 to i32*
  store i32* %128, i32** %20, align 8
  br label %129

129:                                              ; preds = %111, %104
  %130 = load i8**, i8*** %19, align 8
  store i8* null, i8** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.nm_iphdr*, %struct.nm_iphdr** %17, align 8
  %135 = load i32*, i32** %20, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %136, %138
  %140 = trunc i64 %139 to i32
  %141 = load i8**, i8*** %19, align 8
  %142 = call i32 @nm_os_csum_tcpudp_ipv4(%struct.nm_iphdr* %134, i32* %135, i32 %140, i8** %141)
  br label %153

143:                                              ; preds = %129
  %144 = load %struct.nm_ipv6hdr*, %struct.nm_ipv6hdr** %18, align 8
  %145 = load i32*, i32** %20, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %146, %148
  %150 = trunc i64 %149 to i32
  %151 = load i8**, i8*** %19, align 8
  %152 = call i32 @nm_os_csum_tcpudp_ipv6(%struct.nm_ipv6hdr* %144, i32* %145, i32 %150, i8** %151)
  br label %153

153:                                              ; preds = %143, %133
  %154 = load i8**, i8*** %19, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @be16toh(i8* %155)
  %157 = call i32 @nm_prdis(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  ret void
}

declare dso_local i8* @htobe16(i32) #1

declare dso_local i32 @nm_prdis(i8*, i32) #1

declare dso_local i32 @be16toh(i8*) #1

declare dso_local i8* @nm_os_csum_ipv4(%struct.nm_iphdr*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @nm_os_csum_tcpudp_ipv4(%struct.nm_iphdr*, i32*, i32, i8**) #1

declare dso_local i32 @nm_os_csum_tcpudp_ipv6(%struct.nm_ipv6hdr*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
