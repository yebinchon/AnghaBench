; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_options.c_save_rte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_options.c_save_rte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.in_addr = type { i32 }
%struct.ipopt_tag = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in_addr, i32 }
%struct.m_tag = type { i32 }

@PACKET_TAG_IPOPTIONS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IPOPT_OLEN = common dso_local global i64 0, align 8
@IPOPT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32*, i32)* @save_rte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_rte(%struct.mbuf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipopt_tag*, align 8
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  %10 = load i32, i32* @PACKET_TAG_IPOPTIONS, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call i64 @m_tag_get(i32 %10, i32 12, i32 %11)
  %13 = inttoptr i64 %12 to %struct.ipopt_tag*
  store %struct.ipopt_tag* %13, %struct.ipopt_tag** %8, align 8
  %14 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %15 = icmp eq %struct.ipopt_tag* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %55

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @IPOPT_OLEN, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp ugt i64 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %27 = bitcast %struct.ipopt_tag* %26 to %struct.m_tag*
  %28 = call i32 @m_tag_free(%struct.m_tag* %27)
  br label %55

29:                                               ; preds = %17
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %32 = getelementptr inbounds %struct.ipopt_tag, %struct.ipopt_tag* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @bcopy(i32* %30, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IPOPT_OFFSET, align 4
  %39 = sub i32 %37, %38
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %45 = getelementptr inbounds %struct.ipopt_tag, %struct.ipopt_tag* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %47 = getelementptr inbounds %struct.ipopt_tag, %struct.ipopt_tag* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast %struct.in_addr* %48 to i8*
  %50 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = load %struct.ipopt_tag*, %struct.ipopt_tag** %8, align 8
  %53 = bitcast %struct.ipopt_tag* %52 to %struct.m_tag*
  %54 = call i32 @m_tag_prepend(%struct.mbuf* %51, %struct.m_tag* %53)
  br label %55

55:                                               ; preds = %29, %25, %16
  ret void
}

declare dso_local i64 @m_tag_get(i32, i32, i32) #1

declare dso_local i32 @m_tag_free(%struct.m_tag*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
