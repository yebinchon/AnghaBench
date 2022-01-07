; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_updatefats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_updatefats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buf = type { i64, i32 }

@MSDOSFS_FATMIRROR = common dso_local global i32 0, align 4
@MNT_SYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdosfsmount*, %struct.buf*, i64)* @updatefats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updatefats(%struct.msdosfsmount* %0, %struct.buf* %1, i64 %2) #0 {
  %4 = alloca %struct.msdosfsmount*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %11 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MSDOSFS_FATMIRROR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %19 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %24 = call i64 @FAT12(%struct.msdosfsmount* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %16
  store i32 0, i32* %8, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %29 = call i64 @FAT16(%struct.msdosfsmount* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 16, i32* %8, align 4
  br label %33

32:                                               ; preds = %27
  store i32 32, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %26
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %103, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %38 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %35
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %43 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %48 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.buf*, %struct.buf** %5, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.buf* @getblk(i32 %49, i64 %50, i32 %53, i32 0, i32 0, i32 0)
  store %struct.buf* %54, %struct.buf** %7, align 8
  %55 = load %struct.buf*, %struct.buf** %7, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.buf*, %struct.buf** %5, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.buf*, %struct.buf** %5, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i64 %57, i64 %60, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %75

67:                                               ; preds = %41
  %68 = load %struct.buf*, %struct.buf** %7, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, 128
  store i32 %74, i32* %72, align 4
  br label %87

75:                                               ; preds = %41
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.buf*, %struct.buf** %7, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 8
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %75
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %89 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MNT_SYNCHRONOUS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.buf*, %struct.buf** %7, align 8
  %98 = call i32 @bwrite(%struct.buf* %97)
  br label %102

99:                                               ; preds = %87
  %100 = load %struct.buf*, %struct.buf** %7, align 8
  %101 = call i32 @bdwrite(%struct.buf* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %35

106:                                              ; preds = %35
  br label %107

107:                                              ; preds = %106, %3
  %108 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %109 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MNT_SYNCHRONOUS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load %struct.buf*, %struct.buf** %5, align 8
  %118 = call i32 @bwrite(%struct.buf* %117)
  br label %122

119:                                              ; preds = %107
  %120 = load %struct.buf*, %struct.buf** %5, align 8
  %121 = call i32 @bdwrite(%struct.buf* %120)
  br label %122

122:                                              ; preds = %119, %116
  ret void
}

declare dso_local i64 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i64 @FAT16(%struct.msdosfsmount*) #1

declare dso_local %struct.buf* @getblk(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
