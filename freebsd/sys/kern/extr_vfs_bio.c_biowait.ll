; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_biowait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_biowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64 }
%struct.mtx = type { i32 }

@mtxpool_sleep = common dso_local global i32 0, align 4
@BIO_DONE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @biowait(%struct.bio* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtx*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @mtxpool_sleep, align 4
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = call %struct.mtx* @mtx_pool_find(i32 %7, %struct.bio* %8)
  store %struct.mtx* %9, %struct.mtx** %6, align 8
  %10 = load %struct.mtx*, %struct.mtx** %6, align 8
  %11 = call i32 @mtx_lock(%struct.mtx* %10)
  br label %12

12:                                               ; preds = %19, %2
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BIO_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = load %struct.mtx*, %struct.mtx** %6, align 8
  %22 = load i32, i32* @PRIBIO, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @msleep(%struct.bio* %20, %struct.mtx* %21, i32 %22, i8* %23, i32 0)
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.mtx*, %struct.mtx** %6, align 8
  %27 = call i32 @mtx_unlock(%struct.mtx* %26)
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %25
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BIO_ERROR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %44, %32
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.bio*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(%struct.bio*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
