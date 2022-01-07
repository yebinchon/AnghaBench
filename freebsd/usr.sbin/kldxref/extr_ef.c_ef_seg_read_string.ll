; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_seg_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_seg_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"ef_seg_read_string(%s): bad offset (%jx:%ju)\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64, i8*)* @ef_seg_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef_seg_read_string(%struct.TYPE_4__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @ef_get_offset(%struct.TYPE_4__* %12, i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* @EFAULT, align 4
  store i32 %35, i32* %5, align 4
  br label %57

36:                                               ; preds = %17
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @pread(i32 %39, i8* %40, i64 %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @strnlen(i8* %49, i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EFAULT, align 4
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %54, %46, %34
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @ef_get_offset(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i64 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
