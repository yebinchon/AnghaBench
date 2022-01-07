; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i64, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64 }
%struct.ucred = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VV_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"deextend: file too large\00", align 1
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
  %12 = getelementptr inbounds %struct.denode, %struct.denode* %11, i32 0, i32 3
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  store %struct.msdosfsmount* %13, %struct.msdosfsmount** %8, align 8
  %14 = load %struct.denode*, %struct.denode** %5, align 8
  %15 = call %struct.TYPE_3__* @DETOV(%struct.denode* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VV_ROOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %23 = call i32 @FAT32(%struct.msdosfsmount* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %21, %3
  %28 = load %struct.denode*, %struct.denode** %5, align 8
  %29 = getelementptr inbounds %struct.denode, %struct.denode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATTR_DIRECTORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EISDIR, align 4
  store i32 %35, i32* %4, align 4
  br label %99

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.denode*, %struct.denode** %5, align 8
  %39 = getelementptr inbounds %struct.denode, %struct.denode* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @de_clcount(%struct.msdosfsmount* %45, i64 %46)
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %49 = load %struct.denode*, %struct.denode** %5, align 8
  %50 = getelementptr inbounds %struct.denode, %struct.denode* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @de_clcount(%struct.msdosfsmount* %48, i64 %51)
  %53 = sub nsw i64 %47, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %44
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %59 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOSPC, align 4
  store i32 %63, i32* %4, align 4
  br label %99

64:                                               ; preds = %56
  %65 = load %struct.denode*, %struct.denode** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* @DE_CLEAR, align 4
  %68 = call i32 @extendfile(%struct.denode* %65, i64 %66, i32* null, i32* null, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.denode*, %struct.denode** %5, align 8
  %73 = load %struct.denode*, %struct.denode** %5, align 8
  %74 = getelementptr inbounds %struct.denode, %struct.denode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ucred*, %struct.ucred** %7, align 8
  %77 = call i32 @detrunc(%struct.denode* %72, i64 %75, i32 0, %struct.ucred* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %99

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.denode*, %struct.denode** %5, align 8
  %83 = getelementptr inbounds %struct.denode, %struct.denode* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @DE_UPDATE, align 4
  %85 = load i32, i32* @DE_MODIFIED, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.denode*, %struct.denode** %5, align 8
  %88 = getelementptr inbounds %struct.denode, %struct.denode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.denode*, %struct.denode** %5, align 8
  %92 = load %struct.denode*, %struct.denode** %5, align 8
  %93 = call %struct.TYPE_3__* @DETOV(%struct.denode* %92)
  %94 = call i32 @DOINGASYNC(%struct.TYPE_3__* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @deupdat(%struct.denode* %91, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %80, %71, %62, %34, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_3__* @DETOV(%struct.denode*) #1

declare dso_local i32 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @extendfile(%struct.denode*, i64, i32*, i32*, i32) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, %struct.ucred*) #1

declare dso_local i32 @deupdat(%struct.denode*, i32) #1

declare dso_local i32 @DOINGASYNC(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
