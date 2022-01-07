; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_prepare_ad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_prepare_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.carp_softc = type { i32, i64 }
%struct.carp_header = type { i32, i8** }
%struct.m_tag = type { i32 }

@PACKET_TAG_CARP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@carps_onomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.carp_softc*, %struct.carp_header*)* @carp_prepare_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carp_prepare_ad(%struct.mbuf* %0, %struct.carp_softc* %1, %struct.carp_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.carp_softc*, align 8
  %7 = alloca %struct.carp_header*, align 8
  %8 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.carp_softc* %1, %struct.carp_softc** %6, align 8
  store %struct.carp_header* %2, %struct.carp_header** %7, align 8
  %9 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %10 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = call i32 (...) @arc4random()
  %15 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %16 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %18 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 32
  %21 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %22 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @arc4random()
  %24 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %25 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %30 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %13
  %34 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %35 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 32
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.carp_header*, %struct.carp_header** %7, align 8
  %40 = getelementptr inbounds %struct.carp_header, %struct.carp_header* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %44 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @htonl(i32 %45)
  %47 = load %struct.carp_header*, %struct.carp_header** %7, align 8
  %48 = getelementptr inbounds %struct.carp_header, %struct.carp_header* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.carp_softc*, %struct.carp_softc** %6, align 8
  %52 = load %struct.carp_header*, %struct.carp_header** %7, align 8
  %53 = getelementptr inbounds %struct.carp_header, %struct.carp_header* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load %struct.carp_header*, %struct.carp_header** %7, align 8
  %56 = getelementptr inbounds %struct.carp_header, %struct.carp_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @carp_hmac_generate(%struct.carp_softc* %51, i8** %54, i32 %57)
  %59 = load i32, i32* @PACKET_TAG_CARP, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call %struct.m_tag* @m_tag_get(i32 %59, i32 8, i32 %60)
  store %struct.m_tag* %61, %struct.m_tag** %8, align 8
  %62 = icmp eq %struct.m_tag* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %33
  %64 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  %66 = load i32, i32* @carps_onomem, align 4
  %67 = call i32 @CARPSTATS_INC(i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %4, align 4
  br label %76

69:                                               ; preds = %33
  %70 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %71 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %70, i64 1
  %72 = call i32 @bcopy(%struct.carp_softc** %6, %struct.m_tag* %71, i32 8)
  %73 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %74 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %75 = call i32 @m_tag_prepend(%struct.mbuf* %73, %struct.m_tag* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @carp_hmac_generate(%struct.carp_softc*, i8**, i32) #1

declare dso_local %struct.m_tag* @m_tag_get(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @CARPSTATS_INC(i32) #1

declare dso_local i32 @bcopy(%struct.carp_softc**, %struct.m_tag*, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
