; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_nget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_nget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.smbfattr = type { i32 }
%struct.smbnode = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_nget(%struct.mount* %0, %struct.vnode* %1, i8* %2, i32 %3, %struct.smbfattr* %4, %struct.vnode** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smbfattr*, align 8
  %13 = alloca %struct.vnode**, align 8
  %14 = alloca %struct.smbnode*, align 8
  %15 = alloca %struct.smbnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.smbfattr* %4, %struct.smbfattr** %12, align 8
  store %struct.vnode** %5, %struct.vnode*** %13, align 8
  %19 = load %struct.vnode*, %struct.vnode** %9, align 8
  %20 = icmp ne %struct.vnode* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.vnode*, %struct.vnode** %9, align 8
  %23 = call %struct.smbnode* @VTOSMB(%struct.vnode* %22)
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.smbnode* [ %23, %21 ], [ null, %24 ]
  store %struct.smbnode* %26, %struct.smbnode** %14, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.smbnode*, %struct.smbnode** %14, align 8
  %28 = icmp ne %struct.smbnode* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.smbnode*, %struct.smbnode** %14, align 8
  %31 = call i32 @SMBFS_DNP_SEP(%struct.smbnode* %30)
  store i32 %31, i32* %18, align 4
  %32 = load %struct.mount*, %struct.mount** %8, align 8
  %33 = load %struct.vnode*, %struct.vnode** %9, align 8
  %34 = load %struct.smbnode*, %struct.smbnode** %14, align 8
  %35 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.smbnode*, %struct.smbnode** %14, align 8
  %38 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.smbfattr*, %struct.smbfattr** %12, align 8
  %44 = call i32 @smbfs_node_alloc(%struct.mount* %32, %struct.vnode* %33, i8* %36, i32 %39, i8* %40, i32 %41, i32 %42, %struct.smbfattr* %43, %struct.vnode** %16)
  store i32 %44, i32* %17, align 4
  br label %52

45:                                               ; preds = %25
  %46 = load %struct.mount*, %struct.mount** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load %struct.smbfattr*, %struct.smbfattr** %12, align 8
  %51 = call i32 @smbfs_node_alloc(%struct.mount* %46, %struct.vnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %47, i32 %48, i32 %49, %struct.smbfattr* %50, %struct.vnode** %16)
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %45, %29
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %7, align 4
  br label %73

57:                                               ; preds = %52
  %58 = load %struct.vnode*, %struct.vnode** %16, align 8
  %59 = icmp ne %struct.vnode* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @MPASS(i32 %60)
  %62 = load %struct.vnode*, %struct.vnode** %16, align 8
  %63 = call %struct.smbnode* @VTOSMB(%struct.vnode* %62)
  store %struct.smbnode* %63, %struct.smbnode** %15, align 8
  %64 = load %struct.smbfattr*, %struct.smbfattr** %12, align 8
  %65 = icmp ne %struct.smbfattr* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.vnode*, %struct.vnode** %16, align 8
  %68 = load %struct.smbfattr*, %struct.smbfattr** %12, align 8
  %69 = call i32 @smbfs_attr_cacheenter(%struct.vnode* %67, %struct.smbfattr* %68)
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.vnode*, %struct.vnode** %16, align 8
  %72 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode* %71, %struct.vnode** %72, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %55
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @SMBFS_DNP_SEP(%struct.smbnode*) #1

declare dso_local i32 @smbfs_node_alloc(%struct.mount*, %struct.vnode*, i8*, i32, i8*, i32, i32, %struct.smbfattr*, %struct.vnode**) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @smbfs_attr_cacheenter(%struct.vnode*, %struct.smbfattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
