; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_ns_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_ns_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.in6_ifaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@V_dad_enhanced = common dso_local global i64 0, align 8
@ND_OPT_NONCE_LEN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*)* @nd6_dad_ns_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_ns_output(%struct.dadq* %0) #0 {
  %2 = alloca %struct.dadq*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.dadq* %0, %struct.dadq** %2, align 8
  %6 = load %struct.dadq*, %struct.dadq** %2, align 8
  %7 = getelementptr inbounds %struct.dadq, %struct.dadq* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = bitcast %struct.TYPE_3__* %8 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %9, %struct.in6_ifaddr** %3, align 8
  %10 = load %struct.dadq*, %struct.dadq** %2, align 8
  %11 = getelementptr inbounds %struct.dadq, %struct.dadq* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.dadq*, %struct.dadq** %2, align 8
  %16 = getelementptr inbounds %struct.dadq, %struct.dadq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %68

26:                                               ; preds = %1
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %68

34:                                               ; preds = %26
  %35 = load %struct.dadq*, %struct.dadq** %2, align 8
  %36 = getelementptr inbounds %struct.dadq, %struct.dadq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i64, i64* @V_dad_enhanced, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ND_OPT_NONCE_LEN32, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = call i32 (...) @arc4random()
  %48 = load %struct.dadq*, %struct.dadq** %2, align 8
  %49 = getelementptr inbounds %struct.dadq, %struct.dadq* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %42

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %61 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.dadq*, %struct.dadq** %2, align 8
  %64 = getelementptr inbounds %struct.dadq, %struct.dadq* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i32 @nd6_ns_output(%struct.ifnet* %59, i32* null, i32* null, i32* %62, i32* %66)
  br label %68

68:                                               ; preds = %58, %33, %25
  ret void
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @nd6_ns_output(%struct.ifnet*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
