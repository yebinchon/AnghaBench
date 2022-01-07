; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_buckets_cel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_buckets_cel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { %struct.rwlock** }
%struct.rwlock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.celockstate*, %struct.rwlock*, %struct.rwlock*)* @cache_lock_buckets_cel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_lock_buckets_cel(%struct.celockstate* %0, %struct.rwlock* %1, %struct.rwlock* %2) #0 {
  %4 = alloca %struct.celockstate*, align 8
  %5 = alloca %struct.rwlock*, align 8
  %6 = alloca %struct.rwlock*, align 8
  store %struct.celockstate* %0, %struct.celockstate** %4, align 8
  store %struct.rwlock* %1, %struct.rwlock** %5, align 8
  store %struct.rwlock* %2, %struct.rwlock** %6, align 8
  %7 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %8 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %7, i32 0, i32 0
  %9 = load %struct.rwlock**, %struct.rwlock*** %8, align 8
  %10 = getelementptr inbounds %struct.rwlock*, %struct.rwlock** %9, i64 0
  %11 = load %struct.rwlock*, %struct.rwlock** %10, align 8
  %12 = icmp eq %struct.rwlock* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %16 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %15, i32 0, i32 0
  %17 = load %struct.rwlock**, %struct.rwlock*** %16, align 8
  %18 = getelementptr inbounds %struct.rwlock*, %struct.rwlock** %17, i64 1
  %19 = load %struct.rwlock*, %struct.rwlock** %18, align 8
  %20 = icmp eq %struct.rwlock* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = call i32 @cache_sort_vnodes(%struct.rwlock** %5, %struct.rwlock** %6)
  %24 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %25 = icmp ne %struct.rwlock* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %28 = call i32 @rw_wlock(%struct.rwlock* %27)
  %29 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %30 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %31 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %30, i32 0, i32 0
  %32 = load %struct.rwlock**, %struct.rwlock*** %31, align 8
  %33 = getelementptr inbounds %struct.rwlock*, %struct.rwlock** %32, i64 0
  store %struct.rwlock* %29, %struct.rwlock** %33, align 8
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %36 = call i32 @rw_wlock(%struct.rwlock* %35)
  %37 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %38 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %39 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %38, i32 0, i32 0
  %40 = load %struct.rwlock**, %struct.rwlock*** %39, align 8
  %41 = getelementptr inbounds %struct.rwlock*, %struct.rwlock** %40, i64 1
  store %struct.rwlock* %37, %struct.rwlock** %41, align 8
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @cache_sort_vnodes(%struct.rwlock**, %struct.rwlock**) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
