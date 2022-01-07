; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_vnodes_cel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_vnodes_cel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { %struct.mtx** }
%struct.mtx = type { i32 }
%struct.vnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.celockstate*, %struct.vnode*, %struct.vnode*)* @cache_lock_vnodes_cel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_lock_vnodes_cel(%struct.celockstate* %0, %struct.vnode* %1, %struct.vnode* %2) #0 {
  %4 = alloca %struct.celockstate*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca %struct.mtx*, align 8
  store %struct.celockstate* %0, %struct.celockstate** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store %struct.vnode* %2, %struct.vnode** %6, align 8
  %9 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %10 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %9, i32 0, i32 0
  %11 = load %struct.mtx**, %struct.mtx*** %10, align 8
  %12 = getelementptr inbounds %struct.mtx*, %struct.mtx** %11, i64 0
  %13 = load %struct.mtx*, %struct.mtx** %12, align 8
  %14 = icmp eq %struct.mtx* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %18 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %17, i32 0, i32 0
  %19 = load %struct.mtx**, %struct.mtx*** %18, align 8
  %20 = getelementptr inbounds %struct.mtx*, %struct.mtx** %19, i64 1
  %21 = load %struct.mtx*, %struct.mtx** %20, align 8
  %22 = icmp eq %struct.mtx* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %26 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %25, i32 0, i32 0
  %27 = load %struct.mtx**, %struct.mtx*** %26, align 8
  %28 = getelementptr inbounds %struct.mtx*, %struct.mtx** %27, i64 2
  %29 = load %struct.mtx*, %struct.mtx** %28, align 8
  %30 = icmp eq %struct.mtx* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @MPASS(i32 %31)
  %33 = load %struct.vnode*, %struct.vnode** %5, align 8
  %34 = icmp ne %struct.vnode* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load %struct.vnode*, %struct.vnode** %6, align 8
  %37 = icmp ne %struct.vnode* %36, null
  br label %38

38:                                               ; preds = %35, %3
  %39 = phi i1 [ true, %3 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @MPASS(i32 %40)
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %42)
  store %struct.mtx* %43, %struct.mtx** %7, align 8
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %44)
  store %struct.mtx* %45, %struct.mtx** %8, align 8
  %46 = call i32 @cache_sort_vnodes(%struct.mtx** %7, %struct.mtx** %8)
  %47 = load %struct.mtx*, %struct.mtx** %7, align 8
  %48 = icmp ne %struct.mtx* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.mtx*, %struct.mtx** %7, align 8
  %51 = call i32 @mtx_lock(%struct.mtx* %50)
  %52 = load %struct.mtx*, %struct.mtx** %7, align 8
  %53 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %54 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %53, i32 0, i32 0
  %55 = load %struct.mtx**, %struct.mtx*** %54, align 8
  %56 = getelementptr inbounds %struct.mtx*, %struct.mtx** %55, i64 0
  store %struct.mtx* %52, %struct.mtx** %56, align 8
  br label %57

57:                                               ; preds = %49, %38
  %58 = load %struct.mtx*, %struct.mtx** %8, align 8
  %59 = call i32 @mtx_lock(%struct.mtx* %58)
  %60 = load %struct.mtx*, %struct.mtx** %8, align 8
  %61 = load %struct.celockstate*, %struct.celockstate** %4, align 8
  %62 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %61, i32 0, i32 0
  %63 = load %struct.mtx**, %struct.mtx*** %62, align 8
  %64 = getelementptr inbounds %struct.mtx*, %struct.mtx** %63, i64 1
  store %struct.mtx* %60, %struct.mtx** %64, align 8
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.mtx* @VP2VNODELOCK(%struct.vnode*) #1

declare dso_local i32 @cache_sort_vnodes(%struct.mtx**, %struct.mtx**) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
