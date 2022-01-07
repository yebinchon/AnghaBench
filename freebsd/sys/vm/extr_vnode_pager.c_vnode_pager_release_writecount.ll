; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_release_writecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_release_writecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.vnode*, %struct.TYPE_9__ }
%struct.vnode = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.mount = type { i32 }

@OBJT_VNODE = common dso_local global i64 0, align 8
@V_WAIT = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i64)* @vnode_pager_release_writecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_pager_release_writecount(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJT_VNODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %18)
  br label %70

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, %32
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %39)
  br label %70

41:                                               ; preds = %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.vnode*, %struct.vnode** %43, align 8
  store %struct.vnode* %44, %struct.vnode** %7, align 8
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = call i32 @vhold(%struct.vnode* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %47)
  store %struct.mount* null, %struct.mount** %8, align 8
  %49 = load %struct.vnode*, %struct.vnode** %7, align 8
  %50 = load i32, i32* @V_WAIT, align 4
  %51 = call i32 @vn_start_write(%struct.vnode* %49, %struct.mount** %8, i32 %50)
  %52 = load %struct.vnode*, %struct.vnode** %7, align 8
  %53 = load i32, i32* @LK_SHARED, align 4
  %54 = load i32, i32* @LK_RETRY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vn_lock(%struct.vnode* %52, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @vnode_pager_update_writecount(%struct.TYPE_10__* %57, i64 %58, i64 %59)
  %61 = load %struct.vnode*, %struct.vnode** %7, align 8
  %62 = call i32 @VOP_UNLOCK(%struct.vnode* %61, i32 0)
  %63 = load %struct.vnode*, %struct.vnode** %7, align 8
  %64 = call i32 @vdrop(%struct.vnode* %63)
  %65 = load %struct.mount*, %struct.mount** %8, align 8
  %66 = icmp ne %struct.mount* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %41
  %68 = load %struct.mount*, %struct.mount** %8, align 8
  %69 = call i32 @vn_finished_write(%struct.mount* %68)
  br label %70

70:                                               ; preds = %17, %31, %67, %41
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vnode_pager_update_writecount(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
