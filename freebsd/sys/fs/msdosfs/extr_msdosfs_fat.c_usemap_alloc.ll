; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_usemap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_usemap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [21 x i8] c"cn too large %lu %lu\00", align 1
@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"usemap_alloc on ro msdosfs mount\00", align 1
@N_INUSEBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Allocating used sector %ld %ld %x\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"usemap_alloc: too little\00", align 1
@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdosfsmount*, i64)* @usemap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usemap_alloc(%struct.msdosfsmount* %0, i64 %1) #0 {
  %3 = alloca %struct.msdosfsmount*, align 8
  %4 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %6 = call i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %9 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %15 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %12, i8* %17)
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %28 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @N_INUSEBITS, align 8
  %32 = udiv i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @N_INUSEBITS, align 8
  %37 = urem i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %34, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @N_INUSEBITS, align 8
  %46 = urem i64 %44, %45
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %48 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @N_INUSEBITS, align 8
  %52 = udiv i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @KASSERT(i32 %42, i8* %56)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @N_INUSEBITS, align 8
  %60 = urem i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %64 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @N_INUSEBITS, align 8
  %68 = udiv i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 4
  %72 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %73 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %79 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %83 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %84 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  ret void
}

declare dso_local i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
