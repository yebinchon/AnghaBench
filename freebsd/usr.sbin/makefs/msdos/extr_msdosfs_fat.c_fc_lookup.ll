; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fc_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.fatcache* }
%struct.fatcache = type { i64, i64 }

@FC_SIZE = common dso_local global i32 0, align 4
@FCE_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.denode*, i64, i64*, i64*)* @fc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lookup(%struct.denode* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.denode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.fatcache*, align 8
  store %struct.denode* %0, %struct.denode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.fatcache* null, %struct.fatcache** %11, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %50, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @FC_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.denode*, %struct.denode** %5, align 8
  %18 = getelementptr inbounds %struct.denode, %struct.denode* %17, i32 0, i32 0
  %19 = load %struct.fatcache*, %struct.fatcache** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %19, i64 %21
  %23 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @FCE_EMPTY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %16
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %34 = icmp eq %struct.fatcache* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %38 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35, %32
  %42 = load %struct.denode*, %struct.denode** %5, align 8
  %43 = getelementptr inbounds %struct.denode, %struct.denode* %42, i32 0, i32 0
  %44 = load %struct.fatcache*, %struct.fatcache** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %44, i64 %46
  store %struct.fatcache* %47, %struct.fatcache** %11, align 8
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %28, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %55 = icmp ne %struct.fatcache* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %58 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %62 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
