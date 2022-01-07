; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_trigger_vn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_trigger_vn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32, i32*, %struct.autofs_node* }
%struct.autofs_node = type { i32 }

@autofs_softc = common dso_local global %struct.TYPE_2__* null, align 8
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"VI_DOOMED\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"VFS_ROOT() failed with error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, i32, %struct.vnode**)* @autofs_trigger_vn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_trigger_vn(%struct.vnode* %0, i8* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.autofs_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 2
  %15 = load %struct.autofs_node*, %struct.autofs_node** %14, align 8
  store %struct.autofs_node* %15, %struct.autofs_node** %10, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call i32 @VOP_ISLOCKED(%struct.vnode* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = call i32 @vref(%struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = call i32 @VOP_UNLOCK(%struct.vnode* %20, i32 0)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @sx_xlock(i32* %23)
  %25 = load %struct.vnode*, %struct.vnode** %6, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load %struct.autofs_node*, %struct.autofs_node** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @autofs_trigger(%struct.autofs_node* %31, i8* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @sx_xunlock(i32* %37)
  %39 = load %struct.vnode*, %struct.vnode** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @LK_RETRY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @vn_lock(%struct.vnode* %39, i32 %42)
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = call i32 @vunref(%struct.vnode* %44)
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VI_DOOMED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = call i32 @AUTOFS_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %5, align 4
  br label %84

55:                                               ; preds = %35
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %84

60:                                               ; preds = %55
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %66, align 8
  store i32 0, i32* %5, align 4
  br label %84

67:                                               ; preds = %60
  %68 = load %struct.autofs_node*, %struct.autofs_node** %10, align 8
  %69 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load %struct.vnode*, %struct.vnode** %6, align 8
  %72 = getelementptr inbounds %struct.vnode, %struct.vnode* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %76 = call i32 @VFS_ROOT(i32* %73, i32 %74, %struct.vnode** %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %79, %65, %58, %52
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @autofs_trigger(%struct.autofs_node*, i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

declare dso_local i32 @AUTOFS_DEBUG(i8*) #1

declare dso_local i32 @VFS_ROOT(i32*, i32, %struct.vnode**) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
