; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_pollrecord.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_pollrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_pollrecord(%struct.vnode* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vnode*, %struct.vnode** %5, align 8
  %9 = call i32 @v_addpollinfo(%struct.vnode* %8)
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.vnode*, %struct.vnode** %5, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load %struct.vnode*, %struct.vnode** %5, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.thread*, %struct.thread** %6, align 8
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = getelementptr inbounds %struct.vnode, %struct.vnode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = call i32 @selrecord(%struct.thread* %53, i32* %57)
  %59 = load %struct.vnode*, %struct.vnode** %5, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = call i32 @mtx_unlock(i32* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %45, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @v_addpollinfo(%struct.vnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
