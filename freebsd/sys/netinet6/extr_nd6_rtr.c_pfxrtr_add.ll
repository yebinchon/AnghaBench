; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_pfxrtr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_pfxrtr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32 }
%struct.nd_defrouter = type { i32 }
%struct.nd_pfxrouter = type { %struct.nd_defrouter* }

@M_IP6NDP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pfr_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_prefix*, %struct.nd_defrouter*)* @pfxrtr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfxrtr_add(%struct.nd_prefix* %0, %struct.nd_defrouter* %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.nd_defrouter*, align 8
  %5 = alloca %struct.nd_pfxrouter*, align 8
  %6 = alloca i32, align 4
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store %struct.nd_defrouter* %1, %struct.nd_defrouter** %4, align 8
  %7 = call i32 (...) @ND6_UNLOCK_ASSERT()
  %8 = call i32 (...) @ND6_RLOCK()
  %9 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %10 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %11 = call i32* @pfxrtr_lookup(%struct.nd_prefix* %9, %struct.nd_defrouter* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @ND6_RUNLOCK()
  br label %54

15:                                               ; preds = %2
  %16 = call i32 (...) @ND6_RUNLOCK()
  %17 = load i32, i32* @M_IP6NDP, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.nd_pfxrouter* @malloc(i32 8, i32 %17, i32 %20)
  store %struct.nd_pfxrouter* %21, %struct.nd_pfxrouter** %5, align 8
  %22 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %23 = icmp eq %struct.nd_pfxrouter* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %54

25:                                               ; preds = %15
  %26 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %27 = call i32 @defrouter_ref(%struct.nd_defrouter* %26)
  %28 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %29 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %30 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %29, i32 0, i32 0
  store %struct.nd_defrouter* %28, %struct.nd_defrouter** %30, align 8
  %31 = call i32 (...) @ND6_WLOCK()
  %32 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %33 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %34 = call i32* @pfxrtr_lookup(%struct.nd_prefix* %32, %struct.nd_defrouter* %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %38 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %37, i32 0, i32 0
  %39 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %40 = load i32, i32* @pfr_entry, align 4
  %41 = call i32 @LIST_INSERT_HEAD(i32* %38, %struct.nd_pfxrouter* %39, i32 %40)
  store i32 1, i32* %6, align 4
  br label %48

42:                                               ; preds = %25
  %43 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %44 = call i32 @defrouter_rele(%struct.nd_defrouter* %43)
  %45 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %46 = load i32, i32* @M_IP6NDP, align 4
  %47 = call i32 @free(%struct.nd_pfxrouter* %45, i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = call i32 (...) @ND6_WUNLOCK()
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @pfxlist_onlink_check()
  br label %54

54:                                               ; preds = %13, %24, %52, %48
  ret void
}

declare dso_local i32 @ND6_UNLOCK_ASSERT(...) #1

declare dso_local i32 @ND6_RLOCK(...) #1

declare dso_local i32* @pfxrtr_lookup(%struct.nd_prefix*, %struct.nd_defrouter*) #1

declare dso_local i32 @ND6_RUNLOCK(...) #1

declare dso_local %struct.nd_pfxrouter* @malloc(i32, i32, i32) #1

declare dso_local i32 @defrouter_ref(%struct.nd_defrouter*) #1

declare dso_local i32 @ND6_WLOCK(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nd_pfxrouter*, i32) #1

declare dso_local i32 @defrouter_rele(%struct.nd_defrouter*) #1

declare dso_local i32 @free(%struct.nd_pfxrouter*, i32) #1

declare dso_local i32 @ND6_WUNLOCK(...) #1

declare dso_local i32 @pfxlist_onlink_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
