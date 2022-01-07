; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }

@V_MNTREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"V_MNTREF requires mp\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_start_write(%struct.vnode* %0, %struct.mount** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mount**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.mount** %1, %struct.mount*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @V_MNTREF, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.mount**, %struct.mount*** %6, align 8
  %16 = load %struct.mount*, %struct.mount** %15, align 8
  %17 = icmp ne %struct.mount* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = icmp eq %struct.vnode* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i1 [ true, %3 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = icmp ne %struct.vnode* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = load %struct.mount**, %struct.mount*** %6, align 8
  %32 = call i32 @VOP_GETWRITEMOUNT(%struct.vnode* %30, %struct.mount** %31)
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.mount**, %struct.mount*** %6, align 8
  store %struct.mount* null, %struct.mount** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %79

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %79

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.mount**, %struct.mount*** %6, align 8
  %45 = load %struct.mount*, %struct.mount** %44, align 8
  store %struct.mount* %45, %struct.mount** %8, align 8
  %46 = icmp eq %struct.mount* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %79

48:                                               ; preds = %43
  %49 = load %struct.mount*, %struct.mount** %8, align 8
  %50 = call i32 @vn_suspendable(%struct.mount* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = icmp ne %struct.vnode* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @V_MNTREF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %52
  %61 = load %struct.mount*, %struct.mount** %8, align 8
  %62 = call i32 @vfs_rel(%struct.mount* %61)
  br label %63

63:                                               ; preds = %60, %55
  store i32 0, i32* %4, align 4
  br label %79

64:                                               ; preds = %48
  %65 = load %struct.vnode*, %struct.vnode** %5, align 8
  %66 = icmp eq %struct.vnode* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @V_MNTREF, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.mount*, %struct.mount** %8, align 8
  %74 = call i32 @vfs_ref(%struct.mount* %73)
  br label %75

75:                                               ; preds = %72, %67, %64
  %76 = load %struct.mount*, %struct.mount** %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @vn_start_write_refed(%struct.mount* %76, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %63, %47, %41, %39
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_GETWRITEMOUNT(%struct.vnode*, %struct.mount**) #1

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @vn_start_write_refed(%struct.mount*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
