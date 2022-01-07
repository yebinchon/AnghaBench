; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_msdosfs_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_msdosfs_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_inactive_args = type { %struct.vnode* }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.denode = type { i32*, i64, i32 }

@SLOT_DELETED = common dso_local global i64 0, align 8
@SLOT_EMPTY = common dso_local global i64 0, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdosfs_inactive(%struct.vop_inactive_args* %0) #0 {
  %2 = alloca %struct.vop_inactive_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.denode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_inactive_args* %0, %struct.vop_inactive_args** %2, align 8
  %6 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.denode* @VTODE(%struct.vnode* %9)
  store %struct.denode* %10, %struct.denode** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.denode*, %struct.denode** %4, align 8
  %12 = getelementptr inbounds %struct.denode, %struct.denode* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @SLOT_DELETED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.denode*, %struct.denode** %4, align 8
  %21 = getelementptr inbounds %struct.denode, %struct.denode* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @SLOT_EMPTY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %1
  br label %61

29:                                               ; preds = %19
  %30 = load %struct.denode*, %struct.denode** %4, align 8
  %31 = getelementptr inbounds %struct.denode, %struct.denode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MNT_RDONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load %struct.denode*, %struct.denode** %4, align 8
  %45 = load i32, i32* @NOCRED, align 4
  %46 = call i32 @detrunc(%struct.denode* %44, i32 0, i32 0, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @DE_UPDATE, align 4
  %48 = load %struct.denode*, %struct.denode** %4, align 8
  %49 = getelementptr inbounds %struct.denode, %struct.denode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* @SLOT_DELETED, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.denode*, %struct.denode** %4, align 8
  %55 = getelementptr inbounds %struct.denode, %struct.denode* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %43, %34, %29
  %59 = load %struct.denode*, %struct.denode** %4, align 8
  %60 = call i32 @deupdat(%struct.denode* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %28
  %62 = load %struct.denode*, %struct.denode** %4, align 8
  %63 = getelementptr inbounds %struct.denode, %struct.denode* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @SLOT_DELETED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %61
  %71 = load %struct.denode*, %struct.denode** %4, align 8
  %72 = getelementptr inbounds %struct.denode, %struct.denode* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @SLOT_EMPTY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70, %61
  %80 = load %struct.vnode*, %struct.vnode** %3, align 8
  %81 = call i32 @vrecycle(%struct.vnode* %80)
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @detrunc(%struct.denode*, i32, i32, i32) #1

declare dso_local i32 @deupdat(%struct.denode*, i32) #1

declare dso_local i32 @vrecycle(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
