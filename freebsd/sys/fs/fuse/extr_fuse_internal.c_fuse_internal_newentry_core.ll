; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_newentry_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_newentry_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32 }
%struct.fuse_dispatcher = type { %struct.fuse_entry_out* }
%struct.fuse_entry_out = type { i32, i32, i32, i32 }
%struct.mount = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_newentry_core(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2, i32 %3, %struct.fuse_dispatcher* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_dispatcher*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fuse_entry_out*, align 8
  %14 = alloca %struct.mount*, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.vnode** %1, %struct.vnode*** %8, align 8
  store %struct.componentname* %2, %struct.componentname** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fuse_dispatcher* %4, %struct.fuse_dispatcher** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.vnode*, %struct.vnode** %7, align 8
  %16 = call %struct.mount* @vnode_mount(%struct.vnode* %15)
  store %struct.mount* %16, %struct.mount** %14, align 8
  %17 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %11, align 8
  %18 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %73

22:                                               ; preds = %5
  %23 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %11, align 8
  %24 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %23, i32 0, i32 0
  %25 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %24, align 8
  store %struct.fuse_entry_out* %25, %struct.fuse_entry_out** %13, align 8
  %26 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @fuse_internal_checkentry(%struct.fuse_entry_out* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %22
  %33 = load %struct.mount*, %struct.mount** %14, align 8
  %34 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %35 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %36 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  %39 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %40 = load %struct.componentname*, %struct.componentname** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @fuse_vnode_get(%struct.mount* %33, %struct.fuse_entry_out* %34, i32 %37, %struct.vnode* %38, %struct.vnode** %39, %struct.componentname* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %32
  %46 = load %struct.mount*, %struct.mount** %14, align 8
  %47 = load %struct.componentname*, %struct.componentname** %9, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.componentname*, %struct.componentname** %9, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %54 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fuse_internal_forget_send(%struct.mount* %46, i32 %49, i32 %52, i32 %55, i32 1)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %73

58:                                               ; preds = %32
  %59 = load %struct.vnode*, %struct.vnode** %7, align 8
  %60 = call i32 @fuse_vnode_clear_attr_cache(%struct.vnode* %59)
  %61 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  %63 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %64 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %63, i32 0, i32 2
  %65 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %66 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %13, align 8
  %69 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fuse_internal_cache_attrs(%struct.vnode* %62, i32* %64, i32 %67, i32 %70, i32* null)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %58, %45, %30, %20
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_internal_checkentry(%struct.fuse_entry_out*, i32) #1

declare dso_local i32 @fuse_vnode_get(%struct.mount*, %struct.fuse_entry_out*, i32, %struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @fuse_internal_forget_send(%struct.mount*, i32, i32, i32, i32) #1

declare dso_local i32 @fuse_vnode_clear_attr_cache(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_cache_attrs(%struct.vnode*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
