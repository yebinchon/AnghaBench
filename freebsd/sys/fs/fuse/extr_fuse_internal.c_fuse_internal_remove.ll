; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32, i32 }
%struct.fuse_dispatcher = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@FN_CTIMECHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_remove(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_dispatcher, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.componentname* %2, %struct.componentname** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.componentname*, %struct.componentname** %8, align 8
  %14 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @fdisp_init(%struct.fuse_dispatcher* %10, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load %struct.componentname*, %struct.componentname** %8, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.componentname*, %struct.componentname** %8, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %10, i32 %18, %struct.vnode* %19, i32 %22, i32 %25)
  %27 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.componentname*, %struct.componentname** %8, align 8
  %30 = getelementptr inbounds %struct.componentname, %struct.componentname* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.componentname*, %struct.componentname** %8, align 8
  %33 = getelementptr inbounds %struct.componentname, %struct.componentname* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i64 %28, i32 %31, i32 %34)
  %36 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.componentname*, %struct.componentname** %8, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8 0, i8* %43, align 1
  %44 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %10)
  store i32 %44, i32* %12, align 4
  %45 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %10)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %77

50:                                               ; preds = %4
  %51 = load %struct.vnode*, %struct.vnode** %7, align 8
  %52 = call %struct.TYPE_4__* @VTOFUD(%struct.vnode* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %57 = load %struct.vnode*, %struct.vnode** %6, align 8
  %58 = call i32 @fuse_vnode_clear_attr_cache(%struct.vnode* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %50
  %62 = load %struct.vnode*, %struct.vnode** %7, align 8
  %63 = call i64 @vnode_vtype(%struct.vnode* %62)
  %64 = load i64, i64* @VDIR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %50
  %67 = load %struct.vnode*, %struct.vnode** %7, align 8
  %68 = call i32 @fuse_internal_vnode_disappear(%struct.vnode* %67)
  br label %75

69:                                               ; preds = %61
  %70 = load %struct.vnode*, %struct.vnode** %7, align 8
  %71 = call i32 @cache_purge(%struct.vnode* %70)
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = load i32, i32* @FN_CTIMECHANGE, align 4
  %74 = call i32 @fuse_vnode_update(%struct.vnode* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %48
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local %struct.TYPE_4__* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_clear_attr_cache(%struct.vnode*) #1

declare dso_local i64 @vnode_vtype(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_vnode_disappear(%struct.vnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_update(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
