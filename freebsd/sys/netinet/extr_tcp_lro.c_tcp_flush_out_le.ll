; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_flush_out_le.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_flush_out_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.lro_ctrl = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }
%struct.lro_entry = type { i32, i32, i64, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.ip*, %struct.ip6_hdr* }
%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@CSUM_DATA_VALID = common dso_local global i8* null, align 8
@CSUM_IP_CHECKED = common dso_local global i8* null, align 8
@CSUM_IP_VALID = common dso_local global i8* null, align 8
@CSUM_PSEUDO_HDR = common dso_local global i8* null, align 8
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, i32)* @tcp_flush_out_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_flush_out_le(%struct.tcpcb* %0, %struct.lro_ctrl* %1, %struct.lro_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.lro_ctrl*, align 8
  %7 = alloca %struct.lro_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.lro_ctrl* %1, %struct.lro_ctrl** %6, align 8
  store %struct.lro_entry* %2, %struct.lro_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %13 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %123

16:                                               ; preds = %4
  %17 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %18 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htons(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %22 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %24 [
  ]

24:                                               ; preds = %16
  store %struct.tcphdr* null, %struct.tcphdr** %9, align 8
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %27 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 65535, i32* %30, align 8
  %31 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %32 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %35 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 8
  %39 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %40 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %45 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %50 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %25
  %54 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %55 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %54, i64 1
  %56 = bitcast %struct.tcphdr* %55 to i32*
  store i32* %56, i32** %11, align 8
  %57 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %58 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @htonl(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %64 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %53, %25
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %71 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %75 = call i64 @tcp_lro_csum_th(%struct.tcphdr* %74)
  %76 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %77 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  br label %82

82:                                               ; preds = %87, %68
  %83 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %84 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 65535
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %89 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 16
  %92 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %93 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %91, %95
  %97 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %98 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %101 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 65535
  %104 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %113 = icmp ne %struct.tcpcb* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %99
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %119 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %120 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %121 = call i32 @tcp_lro_log(%struct.tcpcb* %118, %struct.lro_ctrl* %119, %struct.lro_entry* %120, %struct.TYPE_6__* null, i32 7, i32 0, i32 0, i32 0, i32 0)
  br label %122

122:                                              ; preds = %117, %114, %99
  br label %123

123:                                              ; preds = %122, %4
  %124 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %125 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %124, i32 0, i32 5
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32* null, i32** %127, align 8
  %128 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %129 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %132 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %131, i32 0, i32 5
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %130, i32* %135, align 4
  %136 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %137 = icmp ne %struct.tcpcb* %136, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %123
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %143 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %144 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %145 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %146 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %145, i32 0, i32 5
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = call i32 @tcp_lro_log(%struct.tcpcb* %142, %struct.lro_ctrl* %143, %struct.lro_entry* %144, %struct.TYPE_6__* %147, i32 8, i32 0, i32 0, i32 0, i32 0)
  br label %149

149:                                              ; preds = %141, %138, %123
  %150 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %151 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)** %153, align 8
  %155 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %156 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %159 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %158, i32 0, i32 5
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = call i32 %154(%struct.TYPE_7__* %157, %struct.TYPE_6__* %160)
  %162 = load %struct.lro_entry*, %struct.lro_entry** %7, align 8
  %163 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %166 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 8
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @tcp_lro_csum_th(%struct.tcphdr*) #1

declare dso_local i32 @tcp_lro_log(%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, %struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
