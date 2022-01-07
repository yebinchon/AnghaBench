; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_encapcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_encapcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip = type { i32, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.stf_softc = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_LINK0 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, i32, i8*)* @stf_encapcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_encapcheck(%struct.mbuf* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ip, align 4
  %11 = alloca %struct.stf_softc*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca %struct.in_addr, align 4
  %15 = alloca %struct.in6_addr, align 4
  %16 = alloca %struct.in6_addr, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.stf_softc*
  store %struct.stf_softc* %18, %struct.stf_softc** %11, align 8
  %19 = load %struct.stf_softc*, %struct.stf_softc** %11, align 8
  %20 = icmp eq %struct.stf_softc* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = load %struct.stf_softc*, %struct.stf_softc** %11, align 8
  %24 = call %struct.TYPE_3__* @STF2IFP(%struct.stf_softc* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %91

31:                                               ; preds = %22
  %32 = load %struct.stf_softc*, %struct.stf_softc** %11, align 8
  %33 = call %struct.TYPE_3__* @STF2IFP(%struct.stf_softc* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_LINK0, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %91

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IPPROTO_IPV6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %91

45:                                               ; preds = %40
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = ptrtoint %struct.ip* %10 to i32
  %48 = call i32 @m_copydata(%struct.mbuf* %46, i32 0, i32 12, i32 %47)
  %49 = getelementptr inbounds %struct.ip, %struct.ip* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %91

53:                                               ; preds = %45
  %54 = load %struct.stf_softc*, %struct.stf_softc** %11, align 8
  %55 = call %struct.TYPE_3__* @STF2IFP(%struct.stf_softc* %54)
  %56 = call i64 @stf_getsrcifa6(%struct.TYPE_3__* %55, %struct.in6_addr* %15, %struct.in6_addr* %16)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %91

59:                                               ; preds = %53
  %60 = call i32 @GET_V4(%struct.in6_addr* %15)
  %61 = getelementptr inbounds %struct.ip, %struct.ip* %10, i32 0, i32 2
  %62 = call i64 @bcmp(i32 %60, i32* %61, i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %91

65:                                               ; preds = %59
  %66 = call i32 @bzero(%struct.in_addr* %12, i32 4)
  %67 = call i32 @GET_V4(%struct.in6_addr* %15)
  %68 = call i32 @bcopy(i32 %67, %struct.in_addr* %12, i32 4)
  %69 = call i32 @GET_V4(%struct.in6_addr* %16)
  %70 = call i32 @bcopy(i32 %69, %struct.in_addr* %14, i32 4)
  %71 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.ip, %struct.ip* %10, i32 0, i32 1
  %77 = bitcast %struct.in_addr* %13 to i8*
  %78 = bitcast %struct.in_addr* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %91

90:                                               ; preds = %65
  store i32 32, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %89, %64, %58, %52, %44, %39, %30, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_3__* @STF2IFP(%struct.stf_softc*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i64 @stf_getsrcifa6(%struct.TYPE_3__*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @bcmp(i32, i32*, i32) #1

declare dso_local i32 @GET_V4(%struct.in6_addr*) #1

declare dso_local i32 @bzero(%struct.in_addr*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.in_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
