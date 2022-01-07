; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fc_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.fatcache* }
%struct.fatcache = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"fc_lookup\00", align 1
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
  %12 = load %struct.denode*, %struct.denode** %5, align 8
  %13 = call i32 @DETOV(%struct.denode* %12)
  %14 = call i32 @ASSERT_VOP_LOCKED(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %53, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FC_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.denode*, %struct.denode** %5, align 8
  %21 = getelementptr inbounds %struct.denode, %struct.denode* %20, i32 0, i32 0
  %22 = load %struct.fatcache*, %struct.fatcache** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %22, i64 %24
  %26 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @FCE_EMPTY, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %37 = icmp eq %struct.fatcache* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %41 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %35
  %45 = load %struct.denode*, %struct.denode** %5, align 8
  %46 = getelementptr inbounds %struct.denode, %struct.denode* %45, i32 0, i32 0
  %47 = load %struct.fatcache*, %struct.fatcache** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %47, i64 %49
  store %struct.fatcache* %50, %struct.fatcache** %11, align 8
  br label %51

51:                                               ; preds = %44, %38
  br label %52

52:                                               ; preds = %51, %31, %19
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %58 = icmp ne %struct.fatcache* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %61 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  %65 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @ASSERT_VOP_LOCKED(i32, i8*) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
