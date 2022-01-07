; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_record_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inm_record_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_msource = type { i64, i32 }

@ip_msource_tree = common dso_local global i32 0, align 4
@in_mcast_maxgrpsrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_IPMSOURCE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inm_record_source(%struct.in_multi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_msource, align 8
  %7 = alloca %struct.ip_msource*, align 8
  %8 = alloca %struct.ip_msource*, align 8
  store %struct.in_multi* %0, %struct.in_multi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @IN_MULTI_LIST_LOCK_ASSERT()
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ntohl(i32 %10)
  %12 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @ip_msource_tree, align 4
  %14 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %15 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %14, i32 0, i32 2
  %16 = call %struct.ip_msource* @RB_FIND(i32 %13, i32* %15, %struct.ip_msource* %6)
  store %struct.ip_msource* %16, %struct.ip_msource** %7, align 8
  %17 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %18 = icmp ne %struct.ip_msource* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %21 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %75

25:                                               ; preds = %19, %2
  %26 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %27 = icmp eq %struct.ip_msource* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %30 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @in_mcast_maxgrpsrc, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %28
  %38 = load i32, i32* @M_IPMSOURCE, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.ip_msource* @malloc(i32 16, i32 %38, i32 %41)
  store %struct.ip_msource* %42, %struct.ip_msource** %8, align 8
  %43 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %44 = icmp eq %struct.ip_msource* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %52 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @ip_msource_tree, align 4
  %54 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %55 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %54, i32 0, i32 2
  %56 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %57 = call i32 @RB_INSERT(i32 %53, i32* %55, %struct.ip_msource* %56)
  %58 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %59 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  store %struct.ip_msource* %62, %struct.ip_msource** %7, align 8
  br label %63

63:                                               ; preds = %48, %25
  %64 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %65 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %69 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %63, %45, %34, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @IN_MULTI_LIST_LOCK_ASSERT(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.ip_msource* @RB_FIND(i32, i32*, %struct.ip_msource*) #1

declare dso_local %struct.ip_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
