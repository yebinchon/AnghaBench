; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_buf.c_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_buf.c_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@debug = common dso_local global i32 0, align 4
@DEBUG_BUF_BWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bwrite: blkno %lld offset %lld bcount %ld\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"bwrite: write %ld (offset %lld) returned %lld\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwrite(%struct.buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  %7 = load %struct.buf*, %struct.buf** %3, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.buf*, %struct.buf** %3, align 8
  %11 = icmp ne %struct.buf* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.buf*, %struct.buf** %3, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* @debug, align 4
  %27 = load i32, i32* @DEBUG_BUF_BWRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.buf*, %struct.buf** %3, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.buf*, %struct.buf** %3, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %38)
  br label %40

40:                                               ; preds = %30, %1
  %41 = load %struct.buf*, %struct.buf** %3, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @lseek(i32 %45, i64 %46, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %2, align 4
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.buf*, %struct.buf** %3, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.buf*, %struct.buf** %3, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.buf*, %struct.buf** %3, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @write(i32 %57, i32 %60, i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @debug, align 4
  %66 = load i32, i32* @DEBUG_BUF_BWRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %52
  %70 = load %struct.buf*, %struct.buf** %3, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73, i64 %75)
  br label %77

77:                                               ; preds = %69, %52
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.buf*, %struct.buf** %3, align 8
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @errno, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @EAGAIN, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %88, %84, %50
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
