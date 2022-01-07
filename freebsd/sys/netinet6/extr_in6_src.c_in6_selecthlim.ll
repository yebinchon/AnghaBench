; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selecthlim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selecthlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.nhop6_basic = type { %struct.ifnet* }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@V_ip6_defhlim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selecthlim(%struct.inpcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.nhop6_basic, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %11 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %12 = icmp ne %struct.inpcb* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %13, %2
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = icmp ne %struct.ifnet* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %33 = icmp ne %struct.inpcb* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 1
  %37 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %41 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 1
  %46 = call i32 @in6_splitscope(i32* %45, %struct.in6_addr* %7, i32* %9)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @fib6_lookup_nh_basic(i32 %47, %struct.in6_addr* %7, i32 %48, i32 0, i32 0, %struct.nhop6_basic* %6)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %6, i32 0, i32 0
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  %54 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %34, %31
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @V_ip6_defhlim, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %51, %26, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @in6_splitscope(i32*, %struct.in6_addr*, i32*) #1

declare dso_local i64 @fib6_lookup_nh_basic(i32, %struct.in6_addr*, i32, i32, i32, %struct.nhop6_basic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
