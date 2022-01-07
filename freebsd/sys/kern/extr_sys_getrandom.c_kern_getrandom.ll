; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_getrandom.c_kern_getrandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_getrandom.c_kern_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@GRND_VALIDFLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IOSIZE_MAX = common dso_local global i64 0, align 8
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@GRND_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i64, i32)* @kern_getrandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_getrandom(%struct.thread* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uio, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GRND_VALIDFLAGS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %69

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @IOSIZE_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %69

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 6
  store %struct.iovec* %11, %struct.iovec** %39, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @UIO_USERSPACE, align 4
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @UIO_READ, align 4
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store %struct.thread* %48, %struct.thread** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @GRND_NONBLOCK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @read_random_uio(%struct.uio* %10, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %34
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %59, %61
  %63 = load %struct.thread*, %struct.thread** %6, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %58, %34
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %29, %24, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @read_random_uio(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
