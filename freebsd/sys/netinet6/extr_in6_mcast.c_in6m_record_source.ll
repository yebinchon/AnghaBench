; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6m_record_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6m_record_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_multi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip6_msource = type { i64, %struct.in6_addr }

@ip6_msource_tree = common dso_local global i32 0, align 4
@in6_mcast_maxgrpsrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_IP6MSOURCE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6m_record_source(%struct.in6_multi* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_multi*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ip6_msource, align 8
  %7 = alloca %struct.ip6_msource*, align 8
  %8 = alloca %struct.ip6_msource*, align 8
  store %struct.in6_multi* %0, %struct.in6_multi** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %9 = call i32 (...) @IN6_MULTI_LIST_LOCK_ASSERT()
  %10 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %6, i32 0, i32 1
  %11 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %12 = bitcast %struct.in6_addr* %10 to i8*
  %13 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* @ip6_msource_tree, align 4
  %15 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %16 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %15, i32 0, i32 2
  %17 = call %struct.ip6_msource* @RB_FIND(i32 %14, i32* %16, %struct.ip6_msource* %6)
  store %struct.ip6_msource* %17, %struct.ip6_msource** %7, align 8
  %18 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %19 = icmp ne %struct.ip6_msource* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %22 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %77

26:                                               ; preds = %20, %2
  %27 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %28 = icmp eq %struct.ip6_msource* %27, null
  br i1 %28, label %29, label %65

29:                                               ; preds = %26
  %30 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %31 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @in6_mcast_maxgrpsrc, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %29
  %39 = load i32, i32* @M_IP6MSOURCE, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.ip6_msource* @malloc(i32 16, i32 %39, i32 %42)
  store %struct.ip6_msource* %43, %struct.ip6_msource** %8, align 8
  %44 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %45 = icmp eq %struct.ip6_msource* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %77

49:                                               ; preds = %38
  %50 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %51 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %6, i32 0, i32 1
  %53 = bitcast %struct.in6_addr* %51 to i8*
  %54 = bitcast %struct.in6_addr* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 4, i1 false)
  %55 = load i32, i32* @ip6_msource_tree, align 4
  %56 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %57 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %56, i32 0, i32 2
  %58 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %59 = call i32 @RB_INSERT(i32 %55, i32* %57, %struct.ip6_msource* %58)
  %60 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %61 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  store %struct.ip6_msource* %64, %struct.ip6_msource** %7, align 8
  br label %65

65:                                               ; preds = %49, %26
  %66 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %67 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %71 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %46, %35, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @IN6_MULTI_LIST_LOCK_ASSERT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ip6_msource* @RB_FIND(i32, i32*, %struct.ip6_msource*) #1

declare dso_local %struct.ip6_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
