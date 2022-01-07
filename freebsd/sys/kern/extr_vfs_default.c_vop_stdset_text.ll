; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdset_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdset_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_set_text_args = type { %struct.vnode* }
%struct.vnode = type { i64, i32, %struct.mount* }
%struct.mount = type { i32 }

@ETXTBSY = common dso_local global i32 0, align 4
@MNTK_TEXT_REFS = common dso_local global i32 0, align 4
@VI_TEXT_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdset_text(%struct.vop_set_text_args* %0) #0 {
  %2 = alloca %struct.vop_set_text_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_set_text_args* %0, %struct.vop_set_text_args** %2, align 8
  %6 = load %struct.vop_set_text_args*, %struct.vop_set_text_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_set_text_args, %struct.vop_set_text_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call i32 @VI_LOCK(%struct.vnode* %9)
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ETXTBSY, align 4
  store i32 %16, i32* %5, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 2
  %20 = load %struct.mount*, %struct.mount** %19, align 8
  store %struct.mount* %20, %struct.mount** %4, align 8
  %21 = load %struct.mount*, %struct.mount** %4, align 8
  %22 = icmp ne %struct.mount* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MNTK_TEXT_REFS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @VI_TEXT_REF, align 4
  %37 = load %struct.vnode*, %struct.vnode** %3, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = call i32 @vrefl(%struct.vnode* %41)
  br label %43

43:                                               ; preds = %35, %30, %23, %17
  %44 = load %struct.vnode*, %struct.vnode** %3, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %15
  %49 = load %struct.vnode*, %struct.vnode** %3, align 8
  %50 = call i32 @VI_UNLOCK(%struct.vnode* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @vrefl(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
