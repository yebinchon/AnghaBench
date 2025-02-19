; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_follower.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_follower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@NUM_CHUNKS = common dso_local global i32 0, align 4
@phase = common dso_local global i64 0, align 8
@follower_syncs = common dso_local global i64 0, align 8
@outfd = common dso_local global i32 0, align 4
@chunk_sems = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @follower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @follower(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NUM_CHUNKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NUM_CHUNKS, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %12
  %25 = load i64, i64* @phase, align 8
  %26 = load i64, i64* @follower_syncs, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @outfd, align 4
  %30 = call i32 @my_sync(i32 %29)
  br label %31

31:                                               ; preds = %28, %24, %12
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @write_chunk(%struct.TYPE_3__* %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %8

47:                                               ; preds = %8
  ret i8* null
}

declare dso_local i32 @my_sync(i32) #1

declare dso_local i32 @write_chunk(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
