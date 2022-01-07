; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_fill_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_fill_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.pipe* }
%struct.pipe = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.kinfo_file = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.filedesc = type { i32 }

@DTYPE_FIFO = common dso_local global i64 0, align 8
@KF_TYPE_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kinfo_file*, %struct.filedesc*)* @pipe_fill_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_fill_kinfo(%struct.file* %0, %struct.kinfo_file* %1, %struct.filedesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kinfo_file*, align 8
  %7 = alloca %struct.filedesc*, align 8
  %8 = alloca %struct.pipe*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %6, align 8
  store %struct.filedesc* %2, %struct.filedesc** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DTYPE_FIFO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %17 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %18 = call i32 @vn_fill_kinfo(%struct.file* %15, %struct.kinfo_file* %16, %struct.filedesc* %17)
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load i32, i32* @KF_TYPE_PIPE, align 4
  %21 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %22 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.pipe*, %struct.pipe** %24, align 8
  store %struct.pipe* %25, %struct.pipe** %8, align 8
  %26 = load %struct.pipe*, %struct.pipe** %8, align 8
  %27 = ptrtoint %struct.pipe* %26 to i64
  %28 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %29 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  %32 = load %struct.pipe*, %struct.pipe** %8, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %36 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 %34, i64* %38, align 8
  %39 = load %struct.pipe*, %struct.pipe** %8, align 8
  %40 = getelementptr inbounds %struct.pipe, %struct.pipe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %44 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %19, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @vn_fill_kinfo(%struct.file*, %struct.kinfo_file*, %struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
