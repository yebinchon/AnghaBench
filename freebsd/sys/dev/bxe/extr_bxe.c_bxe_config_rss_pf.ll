; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_config_rss_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_config_rss_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_rss_config_obj = type { i32, i64, i64 }
%struct.ecore_config_rss_params = type { i32, i32*, i32, i32, i32, %struct.ecore_rss_config_obj*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@ECORE_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4 = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6 = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@MULTI_MASK = common dso_local global i32 0, align 4
@ECORE_RSS_SET_SRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_rss_config_obj*, i64)* @bxe_config_rss_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_config_rss_pf(%struct.bxe_softc* %0, %struct.ecore_rss_config_obj* %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_rss_config_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecore_config_rss_params, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_rss_config_obj* %1, %struct.ecore_rss_config_obj** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = bitcast %struct.ecore_config_rss_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 5
  store %struct.ecore_rss_config_obj* %10, %struct.ecore_rss_config_obj** %11, align 8
  %12 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %13 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 4
  %14 = call i32 @bxe_set_bit(i32 %12, i32* %13)
  %15 = load i32, i32* @ECORE_RSS_MODE_REGULAR, align 4
  %16 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %17 = call i32 @bxe_set_bit(i32 %15, i32* %16)
  %18 = load i32, i32* @ECORE_RSS_IPV4, align 4
  %19 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %20 = call i32 @bxe_set_bit(i32 %18, i32* %19)
  %21 = load i32, i32* @ECORE_RSS_IPV4_TCP, align 4
  %22 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %23 = call i32 @bxe_set_bit(i32 %21, i32* %22)
  %24 = load i32, i32* @ECORE_RSS_IPV6, align 4
  %25 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %26 = call i32 @bxe_set_bit(i32 %24, i32* %25)
  %27 = load i32, i32* @ECORE_RSS_IPV6_TCP, align 4
  %28 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %29 = call i32 @bxe_set_bit(i32 %27, i32* %28)
  %30 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @ECORE_RSS_IPV4_UDP, align 4
  %36 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %37 = call i32 @bxe_set_bit(i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @ECORE_RSS_IPV6_UDP, align 4
  %45 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %46 = call i32 @bxe_set_bit(i32 %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* @MULTI_MASK, align 4
  %49 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32 %51, i32 %54, i32 4)
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 2
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = call i32 (...) @arc4random()
  %65 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load i32, i32* @ECORE_RSS_SET_SRCH, align 4
  %75 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %7, i32 0, i32 0
  %76 = call i32 @bxe_set_bit(i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %73, %47
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %79 = call i32 @ecore_config_rss(%struct.bxe_softc* %78, %struct.ecore_config_rss_params* %7)
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bxe_set_bit(i32, i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @arc4random(...) #2

declare dso_local i32 @ecore_config_rss(%struct.bxe_softc*, %struct.ecore_config_rss_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
