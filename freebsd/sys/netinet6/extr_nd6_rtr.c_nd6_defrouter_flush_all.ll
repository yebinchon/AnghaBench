; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_defrouter_flush_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_defrouter_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd6_drhead = type { i32 }
%struct.nd_defrouter = type { i32 }

@V_nd6_defrouter = common dso_local global %struct.nd6_drhead zeroinitializer, align 4
@dr_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_defrouter_flush_all() #0 {
  %1 = alloca %struct.nd_defrouter*, align 8
  %2 = alloca %struct.nd6_drhead, align 4
  %3 = call i32 @TAILQ_INIT(%struct.nd6_drhead* %2)
  %4 = call i32 (...) @ND6_WLOCK()
  br label %5

5:                                                ; preds = %8, %0
  %6 = call %struct.nd_defrouter* @TAILQ_FIRST(%struct.nd6_drhead* @V_nd6_defrouter)
  store %struct.nd_defrouter* %6, %struct.nd_defrouter** %1, align 8
  %7 = icmp ne %struct.nd_defrouter* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %10 = call i32 @defrouter_unlink(%struct.nd_defrouter* %9, %struct.nd6_drhead* %2)
  br label %5

11:                                               ; preds = %5
  %12 = call i32 (...) @ND6_WUNLOCK()
  br label %13

13:                                               ; preds = %16, %11
  %14 = call %struct.nd_defrouter* @TAILQ_FIRST(%struct.nd6_drhead* %2)
  store %struct.nd_defrouter* %14, %struct.nd_defrouter** %1, align 8
  %15 = icmp ne %struct.nd_defrouter* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %18 = load i32, i32* @dr_entry, align 4
  %19 = call i32 @TAILQ_REMOVE(%struct.nd6_drhead* %2, %struct.nd_defrouter* %17, i32 %18)
  %20 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %21 = call i32 @defrouter_del(%struct.nd_defrouter* %20)
  br label %13

22:                                               ; preds = %13
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.nd6_drhead*) #1

declare dso_local i32 @ND6_WLOCK(...) #1

declare dso_local %struct.nd_defrouter* @TAILQ_FIRST(%struct.nd6_drhead*) #1

declare dso_local i32 @defrouter_unlink(%struct.nd_defrouter*, %struct.nd6_drhead*) #1

declare dso_local i32 @ND6_WUNLOCK(...) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.nd6_drhead*, %struct.nd_defrouter*, i32) #1

declare dso_local i32 @defrouter_del(%struct.nd_defrouter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
