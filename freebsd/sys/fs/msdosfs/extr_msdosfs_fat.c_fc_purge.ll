; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fc_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fc_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.fatcache* }
%struct.fatcache = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"fc_purge\00", align 1
@FC_SIZE = common dso_local global i32 0, align 4
@FCE_EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_purge(%struct.denode* %0, i64 %1) #0 {
  %3 = alloca %struct.denode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fatcache*, align 8
  store %struct.denode* %0, %struct.denode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.denode*, %struct.denode** %3, align 8
  %8 = call i32 @DETOV(%struct.denode* %7)
  %9 = call i32 @ASSERT_VOP_ELOCKED(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.denode*, %struct.denode** %3, align 8
  %11 = getelementptr inbounds %struct.denode, %struct.denode* %10, i32 0, i32 0
  %12 = load %struct.fatcache*, %struct.fatcache** %11, align 8
  store %struct.fatcache* %12, %struct.fatcache** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FC_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %19 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @FCE_EMPTY, align 8
  %25 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %26 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %32 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %31, i32 1
  store %struct.fatcache* %32, %struct.fatcache** %6, align 8
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(i32, i8*) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
