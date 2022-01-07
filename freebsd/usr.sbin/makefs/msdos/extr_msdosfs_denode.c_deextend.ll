; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_deextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_deextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i64, i32, i32*, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64 }
%struct.ucred = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@DE_CLEAR = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@DE_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deextend(%struct.denode* %0, i64 %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.denode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %11 = load %struct.denode*, %struct.denode** %5, align 8
  %12 = getelementptr inbounds %struct.denode, %struct.denode* %11, i32 0, i32 4
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  store %struct.msdosfsmount* %13, %struct.msdosfsmount** %8, align 8
  %14 = load %struct.denode*, %struct.denode** %5, align 8
  %15 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %20 = call i32 @FAT32(%struct.msdosfsmount* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %88

24:                                               ; preds = %18, %3
  %25 = load %struct.denode*, %struct.denode** %5, align 8
  %26 = getelementptr inbounds %struct.denode, %struct.denode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ATTR_DIRECTORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EISDIR, align 4
  store i32 %32, i32* %4, align 4
  br label %88

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.denode*, %struct.denode** %5, align 8
  %36 = getelementptr inbounds %struct.denode, %struct.denode* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @E2BIG, align 4
  store i32 %40, i32* %4, align 4
  br label %88

41:                                               ; preds = %33
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @de_clcount(%struct.msdosfsmount* %42, i64 %43)
  %45 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %46 = load %struct.denode*, %struct.denode** %5, align 8
  %47 = getelementptr inbounds %struct.denode, %struct.denode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @de_clcount(%struct.msdosfsmount* %45, i64 %48)
  %50 = sub nsw i64 %44, %49
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %41
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %56 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOSPC, align 4
  store i32 %60, i32* %4, align 4
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.denode*, %struct.denode** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @DE_CLEAR, align 4
  %65 = call i32 @extendfile(%struct.denode* %62, i64 %63, i32* null, i32* null, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.denode*, %struct.denode** %5, align 8
  %70 = load %struct.denode*, %struct.denode** %5, align 8
  %71 = getelementptr inbounds %struct.denode, %struct.denode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ucred*, %struct.ucred** %7, align 8
  %74 = call i32 @detrunc(%struct.denode* %69, i64 %72, i32 0, %struct.ucred* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %88

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %41
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.denode*, %struct.denode** %5, align 8
  %80 = getelementptr inbounds %struct.denode, %struct.denode* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @DE_UPDATE, align 4
  %82 = load i32, i32* @DE_MODIFIED, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.denode*, %struct.denode** %5, align 8
  %85 = getelementptr inbounds %struct.denode, %struct.denode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %77, %68, %59, %39, %31, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @extendfile(%struct.denode*, i64, i32*, i32*, i32) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
