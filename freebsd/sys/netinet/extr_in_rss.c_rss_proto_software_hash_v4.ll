; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rss.c_rss_proto_software_hash_v4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rss.c_rss_proto_software_hash_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no available hashtypes!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rss_proto_software_hash_v4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @IPPROTO_TCP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %7
  %23 = call i32 (...) @rss_gethashconfig()
  %24 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rss_hash_ip4_4tuple(i32 %31, i32 %28, i32 %33, i32 %29)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %14, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV4, align 4
  %38 = load i32*, i32** %15, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %8, align 4
  br label %79

39:                                               ; preds = %22, %7
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @IPPROTO_UDP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = call i32 (...) @rss_gethashconfig()
  %45 = load i32, i32* @RSS_HASHTYPE_RSS_UDP_IPV4, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rss_hash_ip4_4tuple(i32 %52, i32 %49, i32 %54, i32 %50)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %14, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV4, align 4
  %59 = load i32*, i32** %15, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %8, align 4
  br label %79

60:                                               ; preds = %43, %39
  %61 = call i32 (...) @rss_gethashconfig()
  %62 = load i32, i32* @RSS_HASHTYPE_RSS_IPV4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rss_hash_ip4_2tuple(i32 %67, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %14, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @M_HASHTYPE_RSS_IPV4, align 4
  %74 = load i32*, i32** %15, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %8, align 4
  br label %79

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = call i32 @RSS_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %65, %48, %27
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @rss_gethashconfig(...) #1

declare dso_local i32 @rss_hash_ip4_4tuple(i32, i32, i32, i32) #1

declare dso_local i32 @rss_hash_ip4_2tuple(i32, i32) #1

declare dso_local i32 @RSS_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
