; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ufsmount = type { i32*, i32* }
%struct.dqhdr64 = type { i32, i32, i32, i32 }
%struct.iovec = type { i32, %struct.dqhdr64* }
%struct.uio = type { i32, i32, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dqopen\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@Q_DQHDR64_MAGIC = common dso_local global i32 0, align 4
@Q_DQHDR64_VERSION = common dso_local global i64 0, align 8
@QTF_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ufsmount*, i32)* @dqopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dqopen(%struct.vnode* %0, %struct.ufsmount* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.ufsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dqhdr64, align 4
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %struct.uio, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.ufsmount* %1, %struct.ufsmount** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 6
  store %struct.iovec* %9, %struct.iovec** %14, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store %struct.dqhdr64* %8, %struct.dqhdr64** %16, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i32 16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i32 16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @UIO_SYSSPACE, align 4
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @UIO_READ, align 4
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store %struct.thread* null, %struct.thread** %24, align 8
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %27 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VOP_READ(%struct.vnode* %25, %struct.uio* %10, i32 0, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %91

43:                                               ; preds = %38
  %44 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %45 = call i32 @UFS_LOCK(%struct.ufsmount* %44)
  %46 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %8, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @Q_DQHDR64_MAGIC, align 4
  %49 = call i64 @strcmp(i32 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %8, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be32toh(i32 %53)
  %55 = load i64, i64* @Q_DQHDR64_VERSION, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32toh(i32 %59)
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dqhdr64, %struct.dqhdr64* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be32toh(i32 %64)
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* @QTF_64BIT, align 4
  %69 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %70 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %68
  store i32 %76, i32* %74, align 4
  br label %88

77:                                               ; preds = %62, %57, %51, %43
  %78 = load i32, i32* @QTF_64BIT, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %81 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %79
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77, %67
  %89 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %90 = call i32 @UFS_UNLOCK(%struct.ufsmount* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %42, %36
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
