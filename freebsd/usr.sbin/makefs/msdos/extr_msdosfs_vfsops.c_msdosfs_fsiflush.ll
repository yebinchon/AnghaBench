; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vfsops.c_msdosfs_fsiflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vfsops.c_msdosfs_fsiflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32, i32, i32, i32 }
%struct.fsinfo = type { i32, i32 }
%struct.buf = type { i64 }

@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdosfs_fsiflush(%struct.msdosfsmount* %0) #0 {
  %2 = alloca %struct.msdosfsmount*, align 8
  %3 = alloca %struct.fsinfo*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %2, align 8
  %6 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %7 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %12 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %62

18:                                               ; preds = %10
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %23 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %26 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NOCRED, align 4
  %29 = call i32 @bread(i32 %21, i64 %24, i32 %27, i32 %28, %struct.buf** %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.buf*, %struct.buf** %4, align 8
  %34 = call i32 @brelse(%struct.buf* %33)
  br label %62

35:                                               ; preds = %18
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.fsinfo*
  store %struct.fsinfo* %39, %struct.fsinfo** %3, align 8
  %40 = load %struct.fsinfo*, %struct.fsinfo** %3, align 8
  %41 = getelementptr inbounds %struct.fsinfo, %struct.fsinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %44 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @putulong(i32 %42, i32 %45)
  %47 = load %struct.fsinfo*, %struct.fsinfo** %3, align 8
  %48 = getelementptr inbounds %struct.fsinfo, %struct.fsinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %51 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @putulong(i32 %49, i32 %52)
  %54 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.msdosfsmount*, %struct.msdosfsmount** %2, align 8
  %57 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.buf*, %struct.buf** %4, align 8
  %61 = call i32 @bwrite(%struct.buf* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %35, %32, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @bread(i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @putulong(i32, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
