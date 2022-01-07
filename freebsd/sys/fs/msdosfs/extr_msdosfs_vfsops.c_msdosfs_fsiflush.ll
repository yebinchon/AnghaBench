; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_fsiflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_fsiflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32, i32, i32, i32 }
%struct.fsinfo = type { i32, i32 }
%struct.buf = type { i64 }

@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdosfsmount*, i32)* @msdosfs_fsiflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_fsiflush(%struct.msdosfsmount* %0, i32 %1) #0 {
  %3 = alloca %struct.msdosfsmount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsinfo*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %9 = call i32 @MSDOSFS_LOCK_MP(%struct.msdosfsmount* %8)
  %10 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %11 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %16 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  store i32 0, i32* %7, align 4
  br label %72

22:                                               ; preds = %14
  %23 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %24 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %27 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %30 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NOCRED, align 4
  %33 = call i32 @bread(i32 %25, i64 %28, i32 %31, i32 %32, %struct.buf** %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %72

37:                                               ; preds = %22
  %38 = load %struct.buf*, %struct.buf** %6, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.fsinfo*
  store %struct.fsinfo* %41, %struct.fsinfo** %5, align 8
  %42 = load %struct.fsinfo*, %struct.fsinfo** %5, align 8
  %43 = getelementptr inbounds %struct.fsinfo, %struct.fsinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %46 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @putulong(i32 %44, i32 %47)
  %49 = load %struct.fsinfo*, %struct.fsinfo** %5, align 8
  %50 = getelementptr inbounds %struct.fsinfo, %struct.fsinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %53 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @putulong(i32 %51, i32 %54)
  %56 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %59 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MNT_WAIT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %37
  %66 = load %struct.buf*, %struct.buf** %6, align 8
  %67 = call i32 @bwrite(%struct.buf* %66)
  store i32 %67, i32* %7, align 4
  br label %71

68:                                               ; preds = %37
  %69 = load %struct.buf*, %struct.buf** %6, align 8
  %70 = call i32 @bawrite(%struct.buf* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %36, %21
  %73 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %74 = call i32 @MSDOSFS_UNLOCK_MP(%struct.msdosfsmount* %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @MSDOSFS_LOCK_MP(%struct.msdosfsmount*) #1

declare dso_local i32 @bread(i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i32 @putulong(i32, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @MSDOSFS_UNLOCK_MP(%struct.msdosfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
