; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_update_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_update_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, %struct.inpcbinfo* }
%struct.inpcbinfo = type { i32 }
%struct.mbuf = type { i32 }
%struct.inpcbgroup = type { i32 }

@INP_PCBGROUPWILD = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbgroup_update_mbuf(%struct.inpcb* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.inpcbinfo*, align 8
  %6 = alloca %struct.inpcbgroup*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %8 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %7)
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 3
  %11 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  store %struct.inpcbinfo* %11, %struct.inpcbinfo** %5, align 8
  %12 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %13 = call i32 @in_pcbgroup_enabled(%struct.inpcbinfo* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %18 = call i32 @in_pcbwild_update_internal(%struct.inpcb* %17)
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @INP_PCBGROUPWILD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %16
  %26 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @INP_DROPPED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = call %struct.inpcbgroup* @in_pcbgroup_bymbuf(%struct.inpcbinfo* %33, %struct.mbuf* %34)
  store %struct.inpcbgroup* %35, %struct.inpcbgroup** %6, align 8
  %36 = load %struct.inpcbgroup*, %struct.inpcbgroup** %6, align 8
  %37 = icmp eq %struct.inpcbgroup* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %40 = call %struct.inpcbgroup* @in_pcbgroup_byinpcb(%struct.inpcb* %39)
  store %struct.inpcbgroup* %40, %struct.inpcbgroup** %6, align 8
  br label %41

41:                                               ; preds = %38, %32
  br label %43

42:                                               ; preds = %25, %16
  store %struct.inpcbgroup* null, %struct.inpcbgroup** %6, align 8
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %45 = load %struct.inpcbgroup*, %struct.inpcbgroup** %6, align 8
  %46 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %47 = call i32 @in_pcbgroup_update_internal(%struct.inpcbinfo* %44, %struct.inpcbgroup* %45, %struct.inpcb* %46)
  br label %48

48:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @in_pcbgroup_enabled(%struct.inpcbinfo*) #1

declare dso_local i32 @in_pcbwild_update_internal(%struct.inpcb*) #1

declare dso_local %struct.inpcbgroup* @in_pcbgroup_bymbuf(%struct.inpcbinfo*, %struct.mbuf*) #1

declare dso_local %struct.inpcbgroup* @in_pcbgroup_byinpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbgroup_update_internal(%struct.inpcbinfo*, %struct.inpcbgroup*, %struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
