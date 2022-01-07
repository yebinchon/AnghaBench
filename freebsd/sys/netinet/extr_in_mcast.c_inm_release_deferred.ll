; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_release_deferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_release_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.in_multi_head = type { i32 }

@inm_nrele = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inm_release_deferred(%struct.in_multi* %0) #0 {
  %2 = alloca %struct.in_multi*, align 8
  %3 = alloca %struct.in_multi_head, align 4
  store %struct.in_multi* %0, %struct.in_multi** %2, align 8
  %4 = call i32 (...) @IN_MULTI_LIST_LOCK_ASSERT()
  %5 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %6 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %12 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = call i32 @SLIST_INIT(%struct.in_multi_head* %3)
  %18 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %19 = call i32 @inm_disconnect(%struct.in_multi* %18)
  %20 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %21 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.in_multi*, %struct.in_multi** %2, align 8
  %25 = load i32, i32* @inm_nrele, align 4
  %26 = call i32 @SLIST_INSERT_HEAD(%struct.in_multi_head* %3, %struct.in_multi* %24, i32 %25)
  %27 = call i32 @inm_release_list_deferred(%struct.in_multi_head* %3)
  br label %28

28:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @IN_MULTI_LIST_LOCK_ASSERT(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @SLIST_INIT(%struct.in_multi_head*) #1

declare dso_local i32 @inm_disconnect(%struct.in_multi*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.in_multi_head*, %struct.in_multi*, i32) #1

declare dso_local i32 @inm_release_list_deferred(%struct.in_multi_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
