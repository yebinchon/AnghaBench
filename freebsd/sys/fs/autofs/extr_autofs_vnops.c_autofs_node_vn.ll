; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_vn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_vn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i32, %struct.vnode*, i32*, i32 }
%struct.vnode = type { i32, %struct.autofs_node*, i32, i32 }
%struct.mount = type { i32 }

@LK_RETRY = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vget failed with error %d\00", align 1
@VI_DOOMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"doomed vnode\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@autofs_vnodeops = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"insmntque() failed with error %d\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"lost race\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_node_vn(%struct.autofs_node* %0, %struct.mount* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.autofs_node*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  store %struct.autofs_node* %0, %struct.autofs_node** %6, align 8
  store %struct.mount* %1, %struct.mount** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %12 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %13 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AUTOFS_ASSERT_UNLOCKED(i32 %14)
  %16 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %17 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %16, i32 0, i32 0
  %18 = call i32 @sx_xlock(i32* %17)
  %19 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %20 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %19, i32 0, i32 1
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %10, align 8
  %22 = load %struct.vnode*, %struct.vnode** %10, align 8
  %23 = icmp ne %struct.vnode* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %4
  %25 = load %struct.vnode*, %struct.vnode** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @LK_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @curthread, align 4
  %30 = call i32 @vget(%struct.vnode* %25, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %37 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %36, i32 0, i32 0
  %38 = call i32 @sx_xunlock(i32* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %133

40:                                               ; preds = %24
  %41 = load %struct.vnode*, %struct.vnode** %10, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VI_DOOMED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @AUTOFS_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %50 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %49, i32 0, i32 0
  %51 = call i32 @sx_xunlock(i32* %50)
  %52 = load %struct.vnode*, %struct.vnode** %10, align 8
  %53 = call i32 @vput(%struct.vnode* %52)
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %5, align 4
  br label %133

55:                                               ; preds = %40
  %56 = load %struct.vnode*, %struct.vnode** %10, align 8
  %57 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %56, %struct.vnode** %57, align 8
  %58 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %59 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %58, i32 0, i32 0
  %60 = call i32 @sx_xunlock(i32* %59)
  store i32 0, i32* %5, align 4
  br label %133

61:                                               ; preds = %4
  %62 = load %struct.mount*, %struct.mount** %7, align 8
  %63 = call i32 @getnewvnode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.mount* %62, i32* @autofs_vnodeops, %struct.vnode** %10)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %68 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %67, i32 0, i32 0
  %69 = call i32 @sx_xunlock(i32* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %133

71:                                               ; preds = %61
  %72 = load %struct.vnode*, %struct.vnode** %10, align 8
  %73 = load i32, i32* @LK_EXCLUSIVE, align 4
  %74 = load i32, i32* @LK_RETRY, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @vn_lock(%struct.vnode* %72, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %81 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %80, i32 0, i32 0
  %82 = call i32 @sx_xunlock(i32* %81)
  %83 = load %struct.vnode*, %struct.vnode** %10, align 8
  %84 = call i32 @vdrop(%struct.vnode* %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %133

86:                                               ; preds = %71
  %87 = load i32, i32* @VDIR, align 4
  %88 = load %struct.vnode*, %struct.vnode** %10, align 8
  %89 = getelementptr inbounds %struct.vnode, %struct.vnode* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %91 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* @VV_ROOT, align 4
  %96 = load %struct.vnode*, %struct.vnode** %10, align 8
  %97 = getelementptr inbounds %struct.vnode, %struct.vnode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %102 = load %struct.vnode*, %struct.vnode** %10, align 8
  %103 = getelementptr inbounds %struct.vnode, %struct.vnode* %102, i32 0, i32 1
  store %struct.autofs_node* %101, %struct.autofs_node** %103, align 8
  %104 = load %struct.vnode*, %struct.vnode** %10, align 8
  %105 = call i32 @VN_LOCK_ASHARE(%struct.vnode* %104)
  %106 = load %struct.vnode*, %struct.vnode** %10, align 8
  %107 = load %struct.mount*, %struct.mount** %7, align 8
  %108 = call i32 @insmntque(%struct.vnode* %106, %struct.mount* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i8*, ...) @AUTOFS_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %115 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %114, i32 0, i32 0
  %116 = call i32 @sx_xunlock(i32* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %133

118:                                              ; preds = %100
  %119 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %120 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %119, i32 0, i32 1
  %121 = load %struct.vnode*, %struct.vnode** %120, align 8
  %122 = icmp eq %struct.vnode* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @KASSERT(i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.vnode*, %struct.vnode** %10, align 8
  %126 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %127 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %126, i32 0, i32 1
  store %struct.vnode* %125, %struct.vnode** %127, align 8
  %128 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %129 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %128, i32 0, i32 0
  %130 = call i32 @sx_xunlock(i32* %129)
  %131 = load %struct.vnode*, %struct.vnode** %10, align 8
  %132 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %131, %struct.vnode** %132, align 8
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %118, %111, %79, %66, %55, %47, %33
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @AUTOFS_ASSERT_UNLOCKED(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @vget(%struct.vnode*, i32, i32) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @AUTOFS_DEBUG(i8*, ...) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @VN_LOCK_ASHARE(%struct.vnode*) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
