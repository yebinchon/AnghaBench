; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_markvoldirty_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_markvoldirty_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32 }
%struct.buf = type { i32, i32* }

@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@B_INVALONERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @markvoldirty_upgrade(%struct.msdosfsmount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdosfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %16 = call i64 @FAT12(%struct.msdosfsmount* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %21 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EROFS, align 4
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %26, %19
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %33 = call i64 @FATOFS(%struct.msdosfsmount* %32, i32 1)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @fatblock(%struct.msdosfsmount* %34, i64 %35, i64* %9, i64* %11, i64* %10)
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %38 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* @NOCRED, align 4
  %43 = call i32 @bread(i32 %39, i64 %40, i64 %41, i32 %42, %struct.buf** %8)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %4, align 4
  br label %106

48:                                               ; preds = %31
  %49 = load %struct.msdosfsmount*, %struct.msdosfsmount** %5, align 8
  %50 = call i64 @FAT32(%struct.msdosfsmount* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.buf*, %struct.buf** %8, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i64 @getulong(i32* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %13, align 8
  %63 = and i64 %62, 4160749567
  store i64 %63, i64* %13, align 8
  br label %67

64:                                               ; preds = %52
  %65 = load i64, i64* %13, align 8
  %66 = or i64 %65, 134217728
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.buf*, %struct.buf** %8, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @putulong(i32* %72, i64 %73)
  br label %98

75:                                               ; preds = %48
  %76 = load %struct.buf*, %struct.buf** %8, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i64 @getushort(i32* %80)
  store i64 %81, i64* %13, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i64, i64* %13, align 8
  %86 = and i64 %85, 32767
  store i64 %86, i64* %13, align 8
  br label %90

87:                                               ; preds = %75
  %88 = load i64, i64* %13, align 8
  %89 = or i64 %88, 32768
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.buf*, %struct.buf** %8, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @putushort(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %90, %67
  %99 = load i32, i32* @B_INVALONERR, align 4
  %100 = load %struct.buf*, %struct.buf** %8, align 8
  %101 = getelementptr inbounds %struct.buf, %struct.buf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.buf*, %struct.buf** %8, align 8
  %105 = call i32 @bwrite(%struct.buf* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %98, %46, %29, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i64 @FATOFS(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @bread(i32, i64, i64, i32, %struct.buf**) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i64 @getulong(i32*) #1

declare dso_local i32 @putulong(i32*, i64) #1

declare dso_local i64 @getushort(i32*) #1

declare dso_local i32 @putushort(i32*, i64) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
