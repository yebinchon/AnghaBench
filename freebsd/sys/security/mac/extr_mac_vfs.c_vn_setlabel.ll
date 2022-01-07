; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_vn_setlabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_vn_setlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.label = type { i32 }
%struct.ucred = type { i32 }

@VNON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"vn_setlabel: null v_mount with non-VNON\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_setlabel(%struct.vnode* %0, %struct.label* %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.label* %1, %struct.label** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %9 = load %struct.vnode*, %struct.vnode** %5, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VNON, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* @EBADF, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MNT_MULTILABEL, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %23
  %35 = load %struct.ucred*, %struct.ucred** %7, align 8
  %36 = load %struct.vnode*, %struct.vnode** %5, align 8
  %37 = load %struct.label*, %struct.label** %6, align 8
  %38 = call i32 @mac_vnode_check_relabel(%struct.ucred* %35, %struct.vnode* %36, %struct.label* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = load i32, i32* @VADMIN, align 4
  %46 = load %struct.ucred*, %struct.ucred** %7, align 8
  %47 = load i32, i32* @curthread, align 4
  %48 = call i32 @VOP_ACCESS(%struct.vnode* %44, i32 %45, %struct.ucred* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %43
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = load %struct.label*, %struct.label** %6, align 8
  %56 = load %struct.ucred*, %struct.ucred** %7, align 8
  %57 = load i32, i32* @curthread, align 4
  %58 = call i32 @VOP_SETLABEL(%struct.vnode* %54, %struct.label* %55, %struct.ucred* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %51, %41, %32, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mac_vnode_check_relabel(%struct.ucred*, %struct.vnode*, %struct.label*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, i32) #1

declare dso_local i32 @VOP_SETLABEL(%struct.vnode*, %struct.label*, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
