; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuzip.c_readblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuzip.c_readblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@readblock.blockcnt = internal global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"readblock: lseek() failed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"readblock: read() failed\00", align 1
@MKUZ_BLK_EOF = common dso_local global %struct.mkuz_blk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mkuz_blk* (i32, i32)* @readblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mkuz_blk* @readblock(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.mkuz_blk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mkuz_blk*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.mkuz_blk* @mkuz_blk_ctor(i32 %9)
  store %struct.mkuz_blk* %10, %struct.mkuz_blk** %7, align 8
  %11 = load i32, i32* @readblock.blockcnt, align 4
  %12 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  %13 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @readblock.blockcnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @readblock.blockcnt, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SEEK_CUR, align 4
  %19 = call i64 @lseek(i32 %17, i32 0, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  %27 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  %31 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @read(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  %44 = call i32 @free(%struct.mkuz_blk* %43)
  %45 = load %struct.mkuz_blk*, %struct.mkuz_blk** @MKUZ_BLK_EOF, align 8
  store %struct.mkuz_blk* %45, %struct.mkuz_blk** %3, align 8
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  %49 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.mkuz_blk*, %struct.mkuz_blk** %7, align 8
  store %struct.mkuz_blk* %51, %struct.mkuz_blk** %3, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.mkuz_blk*, %struct.mkuz_blk** %3, align 8
  ret %struct.mkuz_blk* %53
}

declare dso_local %struct.mkuz_blk* @mkuz_blk_ctor(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @free(%struct.mkuz_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
