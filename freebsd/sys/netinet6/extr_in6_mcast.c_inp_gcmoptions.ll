; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_inp_gcmoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_inp_gcmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_moptions = type { i32 }
%struct.in6_mfilter = type { %struct.in6_multi* }
%struct.in6_multi = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@M_IP6MOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_moptions*)* @inp_gcmoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inp_gcmoptions(%struct.ip6_moptions* %0) #0 {
  %2 = alloca %struct.ip6_moptions*, align 8
  %3 = alloca %struct.in6_mfilter*, align 8
  %4 = alloca %struct.in6_multi*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.ip6_moptions* %0, %struct.ip6_moptions** %2, align 8
  br label %6

6:                                                ; preds = %41, %1
  %7 = load %struct.ip6_moptions*, %struct.ip6_moptions** %2, align 8
  %8 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %7, i32 0, i32 0
  %9 = call %struct.in6_mfilter* @ip6_mfilter_first(i32* %8)
  store %struct.in6_mfilter* %9, %struct.in6_mfilter** %3, align 8
  %10 = icmp ne %struct.in6_mfilter* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %6
  %12 = load %struct.ip6_moptions*, %struct.ip6_moptions** %2, align 8
  %13 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %12, i32 0, i32 0
  %14 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %15 = call i32 @ip6_mfilter_remove(i32* %13, %struct.in6_mfilter* %14)
  %16 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %17 = call i32 @im6f_leave(%struct.in6_mfilter* %16)
  %18 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %19 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %18, i32 0, i32 0
  %20 = load %struct.in6_multi*, %struct.in6_multi** %19, align 8
  store %struct.in6_multi* %20, %struct.in6_multi** %4, align 8
  %21 = icmp ne %struct.in6_multi* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %11
  %23 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %24 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %23, i32 0, i32 0
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %5, align 8
  %26 = icmp ne %struct.ifnet* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CURVNET_SET(i32 %30)
  %32 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %33 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %34 = call i32 @in6_leavegroup(%struct.in6_multi* %32, %struct.in6_mfilter* %33)
  %35 = call i32 (...) @CURVNET_RESTORE()
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %38 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %39 = call i32 @in6_leavegroup(%struct.in6_multi* %37, %struct.in6_mfilter* %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %41

41:                                               ; preds = %40, %11
  %42 = load %struct.in6_mfilter*, %struct.in6_mfilter** %3, align 8
  %43 = call i32 @ip6_mfilter_free(%struct.in6_mfilter* %42)
  br label %6

44:                                               ; preds = %6
  %45 = load %struct.ip6_moptions*, %struct.ip6_moptions** %2, align 8
  %46 = load i32, i32* @M_IP6MOPTS, align 4
  %47 = call i32 @free(%struct.ip6_moptions* %45, i32 %46)
  ret void
}

declare dso_local %struct.in6_mfilter* @ip6_mfilter_first(i32*) #1

declare dso_local i32 @ip6_mfilter_remove(i32*, %struct.in6_mfilter*) #1

declare dso_local i32 @im6f_leave(%struct.in6_mfilter*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @in6_leavegroup(%struct.in6_multi*, %struct.in6_mfilter*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @ip6_mfilter_free(%struct.in6_mfilter*) #1

declare dso_local i32 @free(%struct.ip6_moptions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
