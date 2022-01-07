; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_2cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_2cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_13__, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.netif_tx_request = type { i32, i32, i64, i64 }

@MCLBYTES = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@vm_offset_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2gnttab_2cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2gnttab_2cluster(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xnb_pkt, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netif_tx_request*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @MCLBYTES, align 4
  %11 = mul nsw i32 %10, 2
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %14 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), i32 %13)
  store %struct.netif_tx_request* %14, %struct.netif_tx_request** %9, align 8
  %15 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %16 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %19 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %21 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %20, i32 0, i32 1
  store i32 8, i32* %21, align 4
  %22 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %23 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %26 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %28 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 4
  %30 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %6, i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %7, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @XNB_ASSERT(i32 %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %219

38:                                               ; preds = %2
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %41 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %42 = call i32 @xnb_txpkt2gnttab(%struct.xnb_pkt* %6, %struct.mbuf* %39, %struct.TYPE_12__* %40, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %43)
  %45 = load i32, i32* @MCLBYTES, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %142

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 3
  %50 = zext i1 %49 to i32
  %51 = call i32 @XNB_ASSERT(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MCLBYTES, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @XNB_ASSERT(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %66 = load i32, i32* @vm_offset_t, align 4
  %67 = call i32 @mtod(%struct.mbuf* %65, i32 %66)
  %68 = call i64 @virt_to_offset(i32 %67)
  %69 = icmp eq i64 %64, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @XNB_ASSERT(i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @XNB_ASSERT(i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MCLBYTES, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @XNB_ASSERT(i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = load %struct.mbuf*, %struct.mbuf** %94, align 8
  %96 = load i32, i32* @vm_offset_t, align 4
  %97 = call i32 @mtod(%struct.mbuf* %95, i32 %96)
  %98 = call i64 @virt_to_offset(i32 %97)
  %99 = icmp eq i64 %92, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @XNB_ASSERT(i32 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MCLBYTES, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @XNB_ASSERT(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 2
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @XNB_ASSERT(i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 0
  %125 = load %struct.mbuf*, %struct.mbuf** %124, align 8
  %126 = load i32, i32* @vm_offset_t, align 4
  %127 = call i32 @mtod(%struct.mbuf* %125, i32 %126)
  %128 = call i64 @virt_to_offset(i32 %127)
  %129 = icmp eq i64 %122, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @XNB_ASSERT(i32 %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MCLBYTES, align 4
  %138 = mul nsw i32 2, %137
  %139 = icmp eq i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @XNB_ASSERT(i32 %140)
  br label %216

142:                                              ; preds = %38
  %143 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %144 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %143)
  %145 = load i32, i32* @MCLBYTES, align 4
  %146 = mul nsw i32 2, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %213

148:                                              ; preds = %142
  %149 = load i32, i32* %5, align 4
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i32
  %152 = call i32 @XNB_ASSERT(i32 %151)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MCLBYTES, align 4
  %158 = mul nsw i32 2, %157
  %159 = icmp eq i32 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @XNB_ASSERT(i32 %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %168 = load i32, i32* @vm_offset_t, align 4
  %169 = call i32 @mtod(%struct.mbuf* %167, i32 %168)
  %170 = call i64 @virt_to_offset(i32 %169)
  %171 = icmp eq i64 %166, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @XNB_ASSERT(i32 %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @XNB_ASSERT(i32 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 1
  %187 = zext i1 %186 to i32
  %188 = call i32 @XNB_ASSERT(i32 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 0
  %196 = load %struct.mbuf*, %struct.mbuf** %195, align 8
  %197 = load i32, i32* @vm_offset_t, align 4
  %198 = call i32 @mtod(%struct.mbuf* %196, i32 %197)
  %199 = call i64 @virt_to_offset(i32 %198)
  %200 = icmp eq i64 %193, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @XNB_ASSERT(i32 %201)
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @MCLBYTES, align 4
  %209 = mul nsw i32 2, %208
  %210 = icmp eq i32 %207, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @XNB_ASSERT(i32 %211)
  br label %215

213:                                              ; preds = %142
  %214 = call i32 @XNB_ASSERT(i32 0)
  br label %215

215:                                              ; preds = %213, %148
  br label %216

216:                                              ; preds = %215, %47
  %217 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %218 = call i32 @m_freem(%struct.mbuf* %217)
  br label %219

219:                                              ; preds = %216, %37
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_14__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_txpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i64 @virt_to_offset(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
