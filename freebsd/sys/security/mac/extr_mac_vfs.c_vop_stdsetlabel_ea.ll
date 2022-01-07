; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_vop_stdsetlabel_ea.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_vop_stdsetlabel_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_setlabel_args = type { i32, %struct.label*, %struct.vnode* }
%struct.label = type { i32 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"vop_stdsetlabel_ea\00", align 1
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdsetlabel_ea(%struct.vop_setlabel_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setlabel_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_setlabel_args* %0, %struct.vop_setlabel_args** %3, align 8
  %7 = load %struct.vop_setlabel_args*, %struct.vop_setlabel_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_setlabel_args, %struct.vop_setlabel_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_setlabel_args*, %struct.vop_setlabel_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_setlabel_args, %struct.vop_setlabel_args* %10, i32 0, i32 1
  %12 = load %struct.label*, %struct.label** %11, align 8
  store %struct.label* %12, %struct.label** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MNT_MULTILABEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.vop_setlabel_args*, %struct.vop_setlabel_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_setlabel_args, %struct.vop_setlabel_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = load %struct.label*, %struct.label** %5, align 8
  %31 = call i32 @mac_vnode_setlabel_extattr(i32 %28, %struct.vnode* %29, %struct.label* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %25
  %37 = load %struct.vop_setlabel_args*, %struct.vop_setlabel_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_setlabel_args, %struct.vop_setlabel_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = load %struct.label*, %struct.label** %5, align 8
  %42 = call i32 @mac_vnode_relabel(i32 %39, %struct.vnode* %40, %struct.label* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %34, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @mac_vnode_setlabel_extattr(i32, %struct.vnode*, %struct.label*) #1

declare dso_local i32 @mac_vnode_relabel(i32, %struct.vnode*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
