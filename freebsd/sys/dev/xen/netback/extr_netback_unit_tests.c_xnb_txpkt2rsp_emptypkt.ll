; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_emptypkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_emptypkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xnb_pkt = type { i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2rsp_emptypkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2rsp_emptypkt(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xnb_pkt, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 8 bitcast (%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1) to i8*), i64 4, i1 false)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %11 = bitcast %struct.TYPE_8__* %8 to i8*
  %12 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %6, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %15 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @xnb_txpkt2rsp(%struct.xnb_pkt* %6, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 0)
  %17 = call i64 @memcmp(%struct.TYPE_8__* %7, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 4)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @XNB_ASSERT(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %22 = call i64 @memcmp(%struct.TYPE_8__* %8, %struct.TYPE_8__* %21, i32 4)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @XNB_ASSERT(i32 %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @xnb_txpkt2rsp(%struct.xnb_pkt*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @XNB_ASSERT(i32) #2

declare dso_local i64 @memcmp(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
