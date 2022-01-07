; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, %struct.inpcbinfo* }
%struct.inpcbinfo = type { i32 }
%struct.inpcbgroup = type { i32 }

@INP_PCBGROUPWILD = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbgroup_update(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbinfo*, align 8
  %4 = alloca %struct.inpcbgroup*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %6 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %5)
  %7 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 3
  %9 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  store %struct.inpcbinfo* %9, %struct.inpcbinfo** %3, align 8
  %10 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %11 = call i32 @in_pcbgroup_enabled(%struct.inpcbinfo* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %16 = call i32 @in_pcbwild_update_internal(%struct.inpcb* %15)
  %17 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @INP_PCBGROUPWILD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INP_DROPPED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %32 = call %struct.inpcbgroup* @in_pcbgroup_byinpcb(%struct.inpcb* %31)
  store %struct.inpcbgroup* %32, %struct.inpcbgroup** %4, align 8
  br label %34

33:                                               ; preds = %23, %14
  store %struct.inpcbgroup* null, %struct.inpcbgroup** %4, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %36 = load %struct.inpcbgroup*, %struct.inpcbgroup** %4, align 8
  %37 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %38 = call i32 @in_pcbgroup_update_internal(%struct.inpcbinfo* %35, %struct.inpcbgroup* %36, %struct.inpcb* %37)
  br label %39

39:                                               ; preds = %34, %13
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @in_pcbgroup_enabled(%struct.inpcbinfo*) #1

declare dso_local i32 @in_pcbwild_update_internal(%struct.inpcb*) #1

declare dso_local %struct.inpcbgroup* @in_pcbgroup_byinpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbgroup_update_internal(%struct.inpcbinfo*, %struct.inpcbgroup*, %struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
