; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.mtx = type { i32 }

@mtxpool_sleep = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwait(%struct.buf* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtx*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @mtxpool_sleep, align 4
  %9 = load %struct.buf*, %struct.buf** %4, align 8
  %10 = call %struct.mtx* @mtx_pool_find(i32 %8, %struct.buf* %9)
  store %struct.mtx* %10, %struct.mtx** %7, align 8
  %11 = load %struct.mtx*, %struct.mtx** %7, align 8
  %12 = call i32 @mtx_lock(%struct.mtx* %11)
  br label %13

13:                                               ; preds = %20, %3
  %14 = load %struct.buf*, %struct.buf** %4, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @B_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.buf*, %struct.buf** %4, align 8
  %22 = load %struct.mtx*, %struct.mtx** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @msleep(%struct.buf* %21, %struct.mtx* %22, i32 %23, i8* %24, i32 0)
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.mtx*, %struct.mtx** %7, align 8
  %28 = call i32 @mtx_unlock(%struct.mtx* %27)
  ret void
}

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.buf*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(%struct.buf*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
