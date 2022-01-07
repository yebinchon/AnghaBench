; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6p_findmoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6p_findmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_moptions = type { i32, i32, i32, i32* }
%struct.inpcb = type { %struct.ip6_moptions* }

@M_IP6MOPTS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@V_ip6_defmcasthlim = common dso_local global i32 0, align 4
@in6_mcast_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_moptions* (%struct.inpcb*)* @in6p_findmoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.ip6_moptions*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.ip6_moptions*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %6 = call i32 @INP_WLOCK(%struct.inpcb* %5)
  %7 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = load %struct.ip6_moptions*, %struct.ip6_moptions** %8, align 8
  %10 = icmp ne %struct.ip6_moptions* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load %struct.ip6_moptions*, %struct.ip6_moptions** %13, align 8
  store %struct.ip6_moptions* %14, %struct.ip6_moptions** %2, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = call i32 @INP_WUNLOCK(%struct.inpcb* %16)
  %18 = load i32, i32* @M_IP6MOPTS, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call %struct.ip6_moptions* @malloc(i32 24, i32 %18, i32 %19)
  store %struct.ip6_moptions* %20, %struct.ip6_moptions** %4, align 8
  %21 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %22 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @V_ip6_defmcasthlim, align 4
  %24 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %25 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @in6_mcast_loop, align 4
  %27 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %28 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %30 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %29, i32 0, i32 0
  %31 = call i32 @STAILQ_INIT(i32* %30)
  %32 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %33 = call i32 @INP_WLOCK(%struct.inpcb* %32)
  %34 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 0
  %36 = load %struct.ip6_moptions*, %struct.ip6_moptions** %35, align 8
  %37 = icmp ne %struct.ip6_moptions* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %15
  %39 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %40 = load i32, i32* @M_IP6MOPTS, align 4
  %41 = call i32 @free(%struct.ip6_moptions* %39, i32 %40)
  %42 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  %44 = load %struct.ip6_moptions*, %struct.ip6_moptions** %43, align 8
  store %struct.ip6_moptions* %44, %struct.ip6_moptions** %2, align 8
  br label %50

45:                                               ; preds = %15
  %46 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %47 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 0
  store %struct.ip6_moptions* %46, %struct.ip6_moptions** %48, align 8
  %49 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  store %struct.ip6_moptions* %49, %struct.ip6_moptions** %2, align 8
  br label %50

50:                                               ; preds = %45, %38, %11
  %51 = load %struct.ip6_moptions*, %struct.ip6_moptions** %2, align 8
  ret %struct.ip6_moptions* %51
}

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local %struct.ip6_moptions* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @free(%struct.ip6_moptions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
