; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selfdfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selfdfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seltd = type { i32 }
%struct.selfd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@selfd = common dso_local global i32 0, align 4
@sf_link = common dso_local global i32 0, align 4
@sf_threads = common dso_local global i32 0, align 4
@selfd_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seltd*, %struct.selfd*)* @selfdfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selfdfree(%struct.seltd* %0, %struct.selfd* %1) #0 {
  %3 = alloca %struct.seltd*, align 8
  %4 = alloca %struct.selfd*, align 8
  store %struct.seltd* %0, %struct.seltd** %3, align 8
  store %struct.selfd* %1, %struct.selfd** %4, align 8
  %5 = load %struct.seltd*, %struct.seltd** %3, align 8
  %6 = getelementptr inbounds %struct.seltd, %struct.seltd* %5, i32 0, i32 0
  %7 = load %struct.selfd*, %struct.selfd** %4, align 8
  %8 = load i32, i32* @selfd, align 4
  %9 = load i32, i32* @sf_link, align 4
  %10 = call i32 @STAILQ_REMOVE(i32* %6, %struct.selfd* %7, i32 %8, i32 %9)
  %11 = load %struct.selfd*, %struct.selfd** %4, align 8
  %12 = getelementptr inbounds %struct.selfd, %struct.selfd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.selfd*, %struct.selfd** %4, align 8
  %17 = getelementptr inbounds %struct.selfd, %struct.selfd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mtx_lock(i32 %18)
  %20 = load %struct.selfd*, %struct.selfd** %4, align 8
  %21 = getelementptr inbounds %struct.selfd, %struct.selfd* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load %struct.selfd*, %struct.selfd** %4, align 8
  %26 = getelementptr inbounds %struct.selfd, %struct.selfd* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.selfd*, %struct.selfd** %4, align 8
  %30 = load i32, i32* @sf_threads, align 4
  %31 = call i32 @TAILQ_REMOVE(i32* %28, %struct.selfd* %29, i32 %30)
  %32 = load %struct.selfd*, %struct.selfd** %4, align 8
  %33 = getelementptr inbounds %struct.selfd, %struct.selfd* %32, i32 0, i32 0
  %34 = call i64 @refcount_release(i32* %33)
  br label %35

35:                                               ; preds = %24, %15
  %36 = load %struct.selfd*, %struct.selfd** %4, align 8
  %37 = getelementptr inbounds %struct.selfd, %struct.selfd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mtx_unlock(i32 %38)
  br label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.selfd*, %struct.selfd** %4, align 8
  %42 = getelementptr inbounds %struct.selfd, %struct.selfd* %41, i32 0, i32 0
  %43 = call i64 @refcount_release(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @selfd_zone, align 4
  %47 = load %struct.selfd*, %struct.selfd** %4, align 8
  %48 = call i32 @uma_zfree(i32 %46, %struct.selfd* %47)
  br label %49

49:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.selfd*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.selfd*, i32) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.selfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
