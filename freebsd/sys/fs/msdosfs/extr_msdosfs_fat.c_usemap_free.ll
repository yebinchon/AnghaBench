; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_usemap_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_usemap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"cn too large %lu %lu\00", align 1
@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"usemap_free on ro msdosfs mount\00", align 1
@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@N_INUSEBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Freeing unused sector %ld %ld %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdosfsmount*, i64)* @usemap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usemap_free(%struct.msdosfsmount* %0, i64 %1) #0 {
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
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %28 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %33 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %37 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @N_INUSEBITS, align 8
  %41 = udiv i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @N_INUSEBITS, align 8
  %46 = urem i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @N_INUSEBITS, align 8
  %55 = urem i64 %53, %54
  %56 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %57 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @N_INUSEBITS, align 8
  %61 = udiv i64 %59, %60
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %51, i8* %65)
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @N_INUSEBITS, align 8
  %69 = urem i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %74 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @N_INUSEBITS, align 8
  %78 = udiv i64 %76, %77
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %72
  store i32 %81, i32* %79, align 4
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
