; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_dosdirempty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_dosdirempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32 }
%struct.buf = type { i8* }
%struct.direntry = type { i64*, i32 }

@E2BIG = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@SLOT_DELETED = common dso_local global i64 0, align 8
@ATTR_VOLUME = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c".          \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"..         \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dosdirempty(%struct.denode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.denode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.msdosfsmount*, align 8
  %10 = alloca %struct.direntry*, align 8
  store %struct.denode* %0, %struct.denode** %3, align 8
  %11 = load %struct.denode*, %struct.denode** %3, align 8
  %12 = getelementptr inbounds %struct.denode, %struct.denode* %11, i32 0, i32 0
  %13 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  store %struct.msdosfsmount* %13, %struct.msdosfsmount** %9, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %100, %1
  %15 = load %struct.denode*, %struct.denode** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @pcbmap(%struct.denode* %15, i64 %16, i32* %7, i32 0, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @E2BIG, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %103

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %103

25:                                               ; preds = %14
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %27 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NOCRED, align 4
  %32 = call i32 @bread(i32 %28, i32 %29, i32 %30, i32 %31, %struct.buf** %8)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %103

36:                                               ; preds = %25
  %37 = load %struct.buf*, %struct.buf** %8, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.direntry*
  store %struct.direntry* %40, %struct.direntry** %10, align 8
  br label %41

41:                                               ; preds = %94, %36
  %42 = load %struct.direntry*, %struct.direntry** %10, align 8
  %43 = bitcast %struct.direntry* %42 to i8*
  %44 = load %struct.buf*, %struct.buf** %8, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = icmp ult i8* %43, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %41
  %52 = load %struct.direntry*, %struct.direntry** %10, align 8
  %53 = getelementptr inbounds %struct.direntry, %struct.direntry* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SLOT_DELETED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %51
  %60 = load %struct.direntry*, %struct.direntry** %10, align 8
  %61 = getelementptr inbounds %struct.direntry, %struct.direntry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ATTR_VOLUME, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  %67 = load %struct.direntry*, %struct.direntry** %10, align 8
  %68 = getelementptr inbounds %struct.direntry, %struct.direntry* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SLOT_EMPTY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.buf*, %struct.buf** %8, align 8
  %76 = call i32 @brelse(%struct.buf* %75)
  store i32 1, i32* %2, align 4
  br label %103

77:                                               ; preds = %66
  %78 = load %struct.direntry*, %struct.direntry** %10, align 8
  %79 = getelementptr inbounds %struct.direntry, %struct.direntry* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = call i64 @bcmp(i64* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.direntry*, %struct.direntry** %10, align 8
  %85 = getelementptr inbounds %struct.direntry, %struct.direntry* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = call i64 @bcmp(i64* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.buf*, %struct.buf** %8, align 8
  %91 = call i32 @brelse(%struct.buf* %90)
  store i32 0, i32* %2, align 4
  br label %103

92:                                               ; preds = %83, %77
  br label %93

93:                                               ; preds = %92, %59, %51
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.direntry*, %struct.direntry** %10, align 8
  %96 = getelementptr inbounds %struct.direntry, %struct.direntry* %95, i32 1
  store %struct.direntry* %96, %struct.direntry** %10, align 8
  br label %41

97:                                               ; preds = %41
  %98 = load %struct.buf*, %struct.buf** %8, align 8
  %99 = call i32 @brelse(%struct.buf* %98)
  br label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %6, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %14

103:                                              ; preds = %89, %74, %35, %24, %23
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pcbmap(%struct.denode*, i64, i32*, i32, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i64 @bcmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
