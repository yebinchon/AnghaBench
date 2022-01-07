; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fc_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fc_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.fatcache* }
%struct.fatcache = type { i64 }

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
  %8 = getelementptr inbounds %struct.denode, %struct.denode* %7, i32 0, i32 0
  %9 = load %struct.fatcache*, %struct.fatcache** %8, align 8
  store %struct.fatcache* %9, %struct.fatcache** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FC_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %16 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @FCE_EMPTY, align 8
  %22 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %23 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fatcache*, %struct.fatcache** %6, align 8
  %29 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %28, i32 1
  store %struct.fatcache* %29, %struct.fatcache** %6, align 8
  br label %10

30:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
