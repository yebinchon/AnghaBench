; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbgroup_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.inpcbgroup*, i32 }
%struct.inpcbgroup = type { i32 }

@INP_PCBGROUPWILD = common dso_local global i32 0, align 4
@inp_pcbgrouphash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbgroup_remove(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbgroup*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %4)
  %6 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %7 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @in_pcbgroup_enabled(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INP_PCBGROUPWILD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %21 = call i32 @in_pcbwild_remove(%struct.inpcb* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 1
  %25 = load %struct.inpcbgroup*, %struct.inpcbgroup** %24, align 8
  store %struct.inpcbgroup* %25, %struct.inpcbgroup** %3, align 8
  %26 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %27 = icmp ne %struct.inpcbgroup* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %30 = call i32 @INP_GROUP_LOCK(%struct.inpcbgroup* %29)
  %31 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %32 = load i32, i32* @inp_pcbgrouphash, align 4
  %33 = call i32 @CK_LIST_REMOVE(%struct.inpcb* %31, i32 %32)
  %34 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 1
  store %struct.inpcbgroup* null, %struct.inpcbgroup** %35, align 8
  %36 = load %struct.inpcbgroup*, %struct.inpcbgroup** %3, align 8
  %37 = call i32 @INP_GROUP_UNLOCK(%struct.inpcbgroup* %36)
  br label %38

38:                                               ; preds = %11, %28, %22
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @in_pcbgroup_enabled(i32) #1

declare dso_local i32 @in_pcbwild_remove(%struct.inpcb*) #1

declare dso_local i32 @INP_GROUP_LOCK(%struct.inpcbgroup*) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.inpcb*, i32) #1

declare dso_local i32 @INP_GROUP_UNLOCK(%struct.inpcbgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
