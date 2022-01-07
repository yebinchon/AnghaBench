; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_create_args = type { i32*, i32, i32, %struct.componentname* }
%struct.componentname = type { i32 }
%struct.denode = type { i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.timespec = type { i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@DE_ACCESS = common dso_local global i32 0, align 4
@DE_CREATE = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_create_args*)* @msdosfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_create(%struct.vop_create_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_create_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.denode, align 8
  %6 = alloca %struct.denode*, align 8
  %7 = alloca %struct.denode*, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  store %struct.vop_create_args* %0, %struct.vop_create_args** %3, align 8
  %10 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %10, i32 0, i32 3
  %12 = load %struct.componentname*, %struct.componentname** %11, align 8
  store %struct.componentname* %12, %struct.componentname** %4, align 8
  %13 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.denode* @VTODE(i32 %15)
  store %struct.denode* %16, %struct.denode** %7, align 8
  %17 = load %struct.denode*, %struct.denode** %7, align 8
  %18 = getelementptr inbounds %struct.denode, %struct.denode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MSDOSFSROOT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.denode*, %struct.denode** %7, align 8
  %24 = getelementptr inbounds %struct.denode, %struct.denode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.denode*, %struct.denode** %7, align 8
  %27 = getelementptr inbounds %struct.denode, %struct.denode* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOSPC, align 4
  store i32 %31, i32* %9, align 4
  br label %89

32:                                               ; preds = %22, %1
  %33 = call i32 @memset(%struct.denode* %5, i32 0, i32 48)
  %34 = load %struct.denode*, %struct.denode** %7, align 8
  %35 = load %struct.componentname*, %struct.componentname** %4, align 8
  %36 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uniqdosname(%struct.denode* %34, %struct.componentname* %35, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %89

42:                                               ; preds = %32
  %43 = load i32, i32* @ATTR_ARCHIVE, align 4
  %44 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 6
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.denode*, %struct.denode** %7, align 8
  %49 = getelementptr inbounds %struct.denode, %struct.denode* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @DE_ACCESS, align 4
  %53 = load i32, i32* @DE_CREATE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DE_UPDATE, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.denode, %struct.denode* %5, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = call i32 @vfs_timestamp(%struct.timespec* %8)
  %59 = call i32 @DETIMES(%struct.denode* %5, %struct.timespec* %8, %struct.timespec* %8, %struct.timespec* %8)
  %60 = load %struct.denode*, %struct.denode** %7, align 8
  %61 = load %struct.componentname*, %struct.componentname** %4, align 8
  %62 = call i32 @createde(%struct.denode* %5, %struct.denode* %60, %struct.denode** %6, %struct.componentname* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %42
  br label %89

66:                                               ; preds = %42
  %67 = load %struct.denode*, %struct.denode** %6, align 8
  %68 = call i32 @DETOV(%struct.denode* %67)
  %69 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %70 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32 %68, i32* %71, align 4
  %72 = load %struct.componentname*, %struct.componentname** %4, align 8
  %73 = getelementptr inbounds %struct.componentname, %struct.componentname* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MAKEENTRY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %83 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.componentname*, %struct.componentname** %4, align 8
  %87 = call i32 @cache_enter(i32 %81, i32 %85, %struct.componentname* %86)
  br label %88

88:                                               ; preds = %78, %66
  store i32 0, i32* %2, align 4
  br label %91

89:                                               ; preds = %65, %41, %30
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.denode* @VTODE(i32) #1

declare dso_local i32 @memset(%struct.denode*, i32, i32) #1

declare dso_local i32 @uniqdosname(%struct.denode*, %struct.componentname*, i32) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @DETIMES(%struct.denode*, %struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @createde(%struct.denode*, %struct.denode*, %struct.denode**, %struct.componentname*) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i32 @cache_enter(i32, i32, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
