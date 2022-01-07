; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sppp = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32*, i32*, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sppp\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32* null, align 8
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@sppp_keepalive = common dso_local global i32 0, align 4
@PP_MTU = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@sppp_output = common dso_local global i32 0, align 4
@PHASE_DEAD = common dso_local global i32 0, align 4
@sppp_pp_up = common dso_local global i32 0, align 4
@sppp_pp_down = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sppp_cpq\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sppp_fastq\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@sppp_ifstart = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CONF_ENABLE_IPV6 = common dso_local global i32 0, align 4
@CONF_ENABLE_VJ = common dso_local global i32 0, align 4
@PP_KEEPALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sppp_attach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sppp*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.sppp* @IFP2SP(%struct.ifnet* %4)
  store %struct.sppp* %5, %struct.sppp** %3, align 8
  %6 = load %struct.sppp*, %struct.sppp** %3, align 8
  %7 = getelementptr inbounds %struct.sppp, %struct.sppp* %6, i32 0, i32 17
  %8 = load i32*, i32** @MTX_NETWORK_LOCK, align 8
  %9 = load i32, i32* @MTX_DEF, align 4
  %10 = load i32, i32* @MTX_RECURSE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mtx_init(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %11)
  %13 = load %struct.sppp*, %struct.sppp** %3, align 8
  %14 = getelementptr inbounds %struct.sppp, %struct.sppp* %13, i32 0, i32 16
  %15 = call i32 @callout_init(i32* %14, i32 1)
  %16 = load %struct.sppp*, %struct.sppp** %3, align 8
  %17 = getelementptr inbounds %struct.sppp, %struct.sppp* %16, i32 0, i32 16
  %18 = load i32, i32* @hz, align 4
  %19 = mul nsw i32 %18, 10
  %20 = load i32, i32* @sppp_keepalive, align 4
  %21 = load %struct.sppp*, %struct.sppp** %3, align 8
  %22 = bitcast %struct.sppp* %21 to i8*
  %23 = call i32 @callout_reset(i32* %17, i32 %19, i32 %20, i8* %22)
  %24 = load i32, i32* @PP_MTU, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @IFF_POINTOPOINT, align 4
  %28 = load i32, i32* @IFF_MULTICAST, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @sppp_output, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 32, i32* %37, align 4
  %38 = load %struct.sppp*, %struct.sppp** %3, align 8
  %39 = getelementptr inbounds %struct.sppp, %struct.sppp* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 32, i32* %40, align 8
  %41 = load %struct.sppp*, %struct.sppp** %3, align 8
  %42 = getelementptr inbounds %struct.sppp, %struct.sppp* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 20, i32* %43, align 8
  %44 = load %struct.sppp*, %struct.sppp** %3, align 8
  %45 = getelementptr inbounds %struct.sppp, %struct.sppp* %44, i32 0, i32 14
  store i64 0, i64* %45, align 8
  %46 = load %struct.sppp*, %struct.sppp** %3, align 8
  %47 = getelementptr inbounds %struct.sppp, %struct.sppp* %46, i32 0, i32 13
  store i64 0, i64* %47, align 8
  %48 = load %struct.sppp*, %struct.sppp** %3, align 8
  %49 = getelementptr inbounds %struct.sppp, %struct.sppp* %48, i32 0, i32 12
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @bzero(i32* %51, i32 8)
  %53 = load %struct.sppp*, %struct.sppp** %3, align 8
  %54 = getelementptr inbounds %struct.sppp, %struct.sppp* %53, i32 0, i32 11
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @bzero(i32* %56, i32 8)
  %58 = load i32, i32* @PHASE_DEAD, align 4
  %59 = load %struct.sppp*, %struct.sppp** %3, align 8
  %60 = getelementptr inbounds %struct.sppp, %struct.sppp* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @sppp_pp_up, align 4
  %62 = load %struct.sppp*, %struct.sppp** %3, align 8
  %63 = getelementptr inbounds %struct.sppp, %struct.sppp* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @sppp_pp_down, align 4
  %65 = load %struct.sppp*, %struct.sppp** %3, align 8
  %66 = getelementptr inbounds %struct.sppp, %struct.sppp* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sppp*, %struct.sppp** %3, align 8
  %68 = getelementptr inbounds %struct.sppp, %struct.sppp* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = call i32 @mtx_initialized(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %1
  %73 = load %struct.sppp*, %struct.sppp** %3, align 8
  %74 = getelementptr inbounds %struct.sppp, %struct.sppp* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %76)
  br label %78

78:                                               ; preds = %72, %1
  %79 = load %struct.sppp*, %struct.sppp** %3, align 8
  %80 = getelementptr inbounds %struct.sppp, %struct.sppp* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = call i32 @mtx_initialized(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.sppp*, %struct.sppp** %3, align 8
  %86 = getelementptr inbounds %struct.sppp, %struct.sppp* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* @MTX_DEF, align 4
  %89 = call i32 @mtx_init(i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32, i32* @time_uptime, align 4
  %92 = load %struct.sppp*, %struct.sppp** %3, align 8
  %93 = getelementptr inbounds %struct.sppp, %struct.sppp* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sppp*, %struct.sppp** %3, align 8
  %95 = getelementptr inbounds %struct.sppp, %struct.sppp* %94, i32 0, i32 5
  store i32 %91, i32* %95, align 4
  %96 = load %struct.sppp*, %struct.sppp** %3, align 8
  %97 = getelementptr inbounds %struct.sppp, %struct.sppp* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.sppp*, %struct.sppp** %3, align 8
  %99 = getelementptr inbounds %struct.sppp, %struct.sppp* %98, i32 0, i32 2
  %100 = call i32 @callout_init(i32* %99, i32 1)
  %101 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sppp*, %struct.sppp** %3, align 8
  %105 = getelementptr inbounds %struct.sppp, %struct.sppp* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @sppp_ifstart, align 4
  %107 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @M_TEMP, align 4
  %110 = load i32, i32* @M_WAITOK, align 4
  %111 = call i32 @malloc(i32 4, i32 %109, i32 %110)
  %112 = load %struct.sppp*, %struct.sppp** %3, align 8
  %113 = getelementptr inbounds %struct.sppp, %struct.sppp* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sppp*, %struct.sppp** %3, align 8
  %115 = getelementptr inbounds %struct.sppp, %struct.sppp* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @sl_compress_init(i32 %116, i32 -1)
  %118 = load %struct.sppp*, %struct.sppp** %3, align 8
  %119 = call i32 @sppp_lcp_init(%struct.sppp* %118)
  %120 = load %struct.sppp*, %struct.sppp** %3, align 8
  %121 = call i32 @sppp_ipcp_init(%struct.sppp* %120)
  %122 = load %struct.sppp*, %struct.sppp** %3, align 8
  %123 = call i32 @sppp_ipv6cp_init(%struct.sppp* %122)
  %124 = load %struct.sppp*, %struct.sppp** %3, align 8
  %125 = call i32 @sppp_pap_init(%struct.sppp* %124)
  %126 = load %struct.sppp*, %struct.sppp** %3, align 8
  %127 = call i32 @sppp_chap_init(%struct.sppp* %126)
  ret void
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @sl_compress_init(i32, i32) #1

declare dso_local i32 @sppp_lcp_init(%struct.sppp*) #1

declare dso_local i32 @sppp_ipcp_init(%struct.sppp*) #1

declare dso_local i32 @sppp_ipv6cp_init(%struct.sppp*) #1

declare dso_local i32 @sppp_pap_init(%struct.sppp*) #1

declare dso_local i32 @sppp_chap_init(%struct.sppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
