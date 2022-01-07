; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32 }

@IFF_DYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: freeing unallocated ifnet\00", align 1
@net_epoch_preempt = common dso_local global i32 0, align 4
@if_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_free(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = load i32, i32* @IFF_DYING, align 4
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CURVNET_SET_QUIET(i32 %10)
  %12 = call i32 (...) @IFNET_WLOCK()
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ifnet* @ifnet_byindex(i32 %16)
  %18 = icmp eq %struct.ifnet* %13, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %19, i8* %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ifindex_free_locked(i32 %28)
  %30 = call i32 (...) @IFNET_WUNLOCK()
  %31 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = call i64 @refcount_release(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @net_epoch_preempt, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* @if_destroy, align 4
  %40 = call i32 @epoch_call(i32 %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %1
  %42 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @IFNET_WLOCK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ifnet* @ifnet_byindex(i32) #1

declare dso_local i32 @ifindex_free_locked(i32) #1

declare dso_local i32 @IFNET_WUNLOCK(...) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @epoch_call(i32, i32*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
