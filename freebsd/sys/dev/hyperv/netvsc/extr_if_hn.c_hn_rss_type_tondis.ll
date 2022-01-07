; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_type_tondis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_type_tondis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSS_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV6_EX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"UDP6 and UDP6EX are not supported\00", align 1
@RSS_TYPE_IPV4 = common dso_local global i32 0, align 4
@NDIS_HASH_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_IPV6 = common dso_local global i32 0, align 4
@NDIS_HASH_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_IPV6_EX = common dso_local global i32 0, align 4
@NDIS_HASH_IPV6_EX = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV6_EX = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV6_EX = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@NDIS_HASH_UDP_IPV4_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hn_rss_type_tondis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rss_type_tondis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %6 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @RSS_TYPE_IPV4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @NDIS_HASH_IPV4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @RSS_TYPE_TCP_IPV4, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @NDIS_HASH_TCP_IPV4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @RSS_TYPE_IPV6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @NDIS_HASH_IPV6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @RSS_TYPE_IPV6_EX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @NDIS_HASH_IPV6_EX, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @NDIS_HASH_TCP_IPV6, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @NDIS_HASH_TCP_IPV6_EX, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @RSS_TYPE_UDP_IPV4, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @NDIS_HASH_UDP_IPV4_X, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
