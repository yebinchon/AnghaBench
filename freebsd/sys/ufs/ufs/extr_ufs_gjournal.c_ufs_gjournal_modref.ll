; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_gjournal.c_ufs_gjournal_modref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_gjournal.c_ufs_gjournal_modref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.cdev*, i32 }
%struct.cdev = type { i32 }
%struct.cg = type { i32 }
%struct.buf = type { i32 }
%struct.inode = type { i64 }
%struct.ufsmount = type { %struct.vnode*, %struct.fs* }
%struct.fs = type { i32, i32, i32, i32, i32 }

@VREG = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ufs_gjournal_modref: range: dev = %s, ino = %lu, fs = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32)* @ufs_gjournal_modref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_gjournal_modref(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cg*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ufsmount*, align 8
  %13 = alloca %struct.fs*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = call %struct.inode* @VTOI(%struct.vnode* %16)
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ufsmount* @VFSTOUFS(i32 %20)
  store %struct.ufsmount* %21, %struct.ufsmount** %12, align 8
  %22 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %23 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %22, i32 0, i32 1
  %24 = load %struct.fs*, %struct.fs** %23, align 8
  store %struct.fs* %24, %struct.fs** %13, align 8
  %25 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %26 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %25, i32 0, i32 0
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %14, align 8
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load %struct.fs*, %struct.fs** %13, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @ino_to_cg(%struct.fs* %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.vnode*, %struct.vnode** %14, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VREG, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load %struct.vnode*, %struct.vnode** %14, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.ufsmount* @VFSTOUFS(i32 %42)
  %44 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %43, i32 0, i32 0
  %45 = load %struct.vnode*, %struct.vnode** %44, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 1
  %47 = load %struct.cdev*, %struct.cdev** %46, align 8
  store %struct.cdev* %47, %struct.cdev** %10, align 8
  br label %61

48:                                               ; preds = %2
  %49 = load %struct.vnode*, %struct.vnode** %14, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VCHR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.vnode*, %struct.vnode** %14, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 1
  %57 = load %struct.cdev*, %struct.cdev** %56, align 8
  store %struct.cdev* %57, %struct.cdev** %10, align 8
  br label %60

58:                                               ; preds = %48
  store %struct.buf* null, %struct.buf** %7, align 8
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %3, align 4
  br label %111

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i64, i64* %15, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.fs*, %struct.fs** %13, align 8
  %65 = getelementptr inbounds %struct.fs, %struct.fs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fs*, %struct.fs** %13, align 8
  %68 = getelementptr inbounds %struct.fs, %struct.fs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = icmp sge i32 %63, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load %struct.cdev*, %struct.cdev** %10, align 8
  %74 = call i32 @devtoname(%struct.cdev* %73)
  %75 = load i64, i64* %15, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.fs*, %struct.fs** %13, align 8
  %78 = getelementptr inbounds %struct.fs, %struct.fs* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %61
  %82 = load %struct.fs*, %struct.fs** %13, align 8
  %83 = load %struct.vnode*, %struct.vnode** %14, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ffs_getcg(%struct.fs* %82, %struct.vnode* %83, i32 %84, i32 0, %struct.buf** %7, %struct.cg** %6)
  store i32 %85, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %111

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.cg*, %struct.cg** %6, align 8
  %92 = getelementptr inbounds %struct.cg, %struct.cg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %96 = call i32 @UFS_LOCK(%struct.ufsmount* %95)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.fs*, %struct.fs** %13, align 8
  %99 = getelementptr inbounds %struct.fs, %struct.fs* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.fs*, %struct.fs** %13, align 8
  %103 = getelementptr inbounds %struct.fs, %struct.fs* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  %104 = load %struct.fs*, %struct.fs** %13, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @ACTIVECLEAR(%struct.fs* %104, i32 %105)
  %107 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %108 = call i32 @UFS_UNLOCK(%struct.ufsmount* %107)
  %109 = load %struct.buf*, %struct.buf** %7, align 8
  %110 = call i32 @bdwrite(%struct.buf* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %89, %87, %58
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(i32) #1

declare dso_local i32 @ino_to_cg(%struct.fs*, i64) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @ffs_getcg(%struct.fs*, %struct.vnode*, i32, i32, %struct.buf**, %struct.cg**) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @ACTIVECLEAR(%struct.fs*, i32) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
