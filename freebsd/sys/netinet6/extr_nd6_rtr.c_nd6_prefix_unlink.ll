; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_prefix_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_prefix_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32 }
%struct.nd_prhead = type { i32 }

@ndpr_entry = common dso_local global i32 0, align 4
@V_nd6_list_genid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_prefix_unlink(%struct.nd_prefix* %0, %struct.nd_prhead* %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.nd_prhead*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store %struct.nd_prhead* %1, %struct.nd_prhead** %4, align 8
  %5 = call i32 (...) @ND6_WLOCK_ASSERT()
  %6 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %7 = load i32, i32* @ndpr_entry, align 4
  %8 = call i32 @LIST_REMOVE(%struct.nd_prefix* %6, i32 %7)
  %9 = load i32, i32* @V_nd6_list_genid, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @V_nd6_list_genid, align 4
  %11 = load %struct.nd_prhead*, %struct.nd_prhead** %4, align 8
  %12 = icmp ne %struct.nd_prhead* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.nd_prhead*, %struct.nd_prhead** %4, align 8
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %16 = load i32, i32* @ndpr_entry, align 4
  %17 = call i32 @LIST_INSERT_HEAD(%struct.nd_prhead* %14, %struct.nd_prefix* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @ND6_WLOCK_ASSERT(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.nd_prefix*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.nd_prhead*, %struct.nd_prefix*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
