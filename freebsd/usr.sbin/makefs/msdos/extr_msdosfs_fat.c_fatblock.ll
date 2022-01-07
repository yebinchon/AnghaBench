; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32, i32, i32, i64 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdosfsmount*, i32, i32*, i32*, i32*)* @fatblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fatblock(%struct.msdosfsmount* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %15 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %13, %16
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %19 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %23 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %26 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @MIN(i32 %24, i32 %29)
  %31 = load i32, i32* @DEV_BSIZE, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %34 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %37 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %40 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %35, %43
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %5
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %5
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %66 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = srem i32 %64, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
