; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6p_set_multicast_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6p_set_multicast_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.sockopt = type { i32 }
%struct.ifnet = type { i32 }
%struct.ip6_moptions = type { %struct.ifnet* }

@EINVAL = common dso_local global i32 0, align 4
@V_if_index = common dso_local global i64 0, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockopt*)* @in6p_set_multicast_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6p_set_multicast_if(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ip6_moptions*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %10 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %19 = call i32 @sooptcopyin(%struct.sockopt* %18, i64* %8, i32 8, i32 8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %17
  %25 = load i64, i64* @V_if_index, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  br label %51

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call %struct.ifnet* @ifnet_byindex(i64 %35)
  store %struct.ifnet* %36, %struct.ifnet** %6, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %38 = icmp eq %struct.ifnet* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %34
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_MULTICAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %53 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %52)
  store %struct.ip6_moptions* %53, %struct.ip6_moptions** %7, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %55 = load %struct.ip6_moptions*, %struct.ip6_moptions** %7, align 8
  %56 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %55, i32 0, i32 0
  store %struct.ifnet* %54, %struct.ifnet** %56, align 8
  %57 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %58 = call i32 @INP_WUNLOCK(%struct.inpcb* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %48, %39, %28, %22, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i64*, i32, i32) #1

declare dso_local %struct.ifnet* @ifnet_byindex(i64) #1

declare dso_local %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
