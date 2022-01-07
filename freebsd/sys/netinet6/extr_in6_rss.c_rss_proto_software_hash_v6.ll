; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rss.c_rss_proto_software_hash_v6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rss.c_rss_proto_software_hash_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no available hashtypes!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rss_proto_software_hash_v6(%struct.in6_addr* %0, %struct.in6_addr* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @IPPROTO_TCP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %7
  %21 = call i32 (...) @rss_gethashconfig()
  %22 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @rss_hash_ip6_4tuple(%struct.in6_addr* %26, i32 %27, %struct.in6_addr* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV6, align 4
  %34 = load i32*, i32** %15, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %8, align 4
  br label %71

35:                                               ; preds = %20, %7
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @IPPROTO_UDP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = call i32 (...) @rss_gethashconfig()
  %41 = load i32, i32* @RSS_HASHTYPE_RSS_UDP_IPV6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @rss_hash_ip6_4tuple(%struct.in6_addr* %45, i32 %46, %struct.in6_addr* %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV6, align 4
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %8, align 4
  br label %71

54:                                               ; preds = %39, %35
  %55 = call i32 (...) @rss_gethashconfig()
  %56 = load i32, i32* @RSS_HASHTYPE_RSS_IPV6, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %61 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %62 = call i32 @rss_hash_ip6_2tuple(%struct.in6_addr* %60, %struct.in6_addr* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @M_HASHTYPE_RSS_IPV6, align 4
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %8, align 4
  br label %71

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = call i32 @RSS_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %59, %44, %25
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @rss_gethashconfig(...) #1

declare dso_local i32 @rss_hash_ip6_4tuple(%struct.in6_addr*, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @rss_hash_ip6_2tuple(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @RSS_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
