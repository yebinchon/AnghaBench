; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_usemap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_usemap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32*, i64 }

@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@N_INUSEBITS = common dso_local global i64 0, align 8
@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdosfsmount*, i64)* @usemap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usemap_alloc(%struct.msdosfsmount* %0, i64 %1) #0 {
  %3 = alloca %struct.msdosfsmount*, align 8
  %4 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %7 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ule i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %13 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %21 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @N_INUSEBITS, align 8
  %25 = udiv i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @N_INUSEBITS, align 8
  %30 = urem i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %27, %32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %38 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @N_INUSEBITS, align 8
  %45 = urem i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %49 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @N_INUSEBITS, align 8
  %53 = udiv i64 %51, %52
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %47
  store i32 %56, i32* %54, align 4
  %57 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %58 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %62 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %63 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
