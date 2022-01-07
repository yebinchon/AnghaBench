; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32, i32, i32 }

@BIO_READ = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"biord\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"biowr\00", align 1
@B_EINTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufwait(%struct.buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  %4 = load %struct.buf*, %struct.buf** %3, align 8
  %5 = getelementptr inbounds %struct.buf, %struct.buf* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BIO_READ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.buf*, %struct.buf** %3, align 8
  %11 = load i32, i32* @PRIBIO, align 4
  %12 = call i32 @bwait(%struct.buf* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.buf*, %struct.buf** %3, align 8
  %15 = load i32, i32* @PRIBIO, align 4
  %16 = call i32 @bwait(%struct.buf* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.buf*, %struct.buf** %3, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @B_EINTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @B_EINTR, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.buf*, %struct.buf** %3, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @EINTR, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %17
  %33 = load %struct.buf*, %struct.buf** %3, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BIO_ERROR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.buf*, %struct.buf** %3, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.buf*, %struct.buf** %3, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @EIO, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @bwait(%struct.buf*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
