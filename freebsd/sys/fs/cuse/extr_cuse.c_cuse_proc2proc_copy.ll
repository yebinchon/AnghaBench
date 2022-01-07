; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_proc2proc_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_proc2proc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.iovec = type { i64, i32 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i32, %struct.iovec* }

@curthread = common dso_local global %struct.thread* null, align 8
@UIO_READ = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32, %struct.proc*, i32, i64)* @cuse_proc2proc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_proc2proc_copy(%struct.proc* %0, i32 %1, %struct.proc* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iovec, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca %struct.iovec, align 8
  %17 = alloca %struct.uio, align 8
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.proc* %2, %struct.proc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %11, align 8
  %19 = load %struct.thread*, %struct.thread** %11, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  store %struct.proc* %21, %struct.proc** %12, align 8
  %22 = load %struct.proc*, %struct.proc** %12, align 8
  %23 = load %struct.proc*, %struct.proc** %8, align 8
  %24 = icmp eq %struct.proc* %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  %34 = load %struct.thread*, %struct.thread** %11, align 8
  store %struct.thread* %34, %struct.thread** %33, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  %36 = load i32, i32* @UIO_READ, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  %38 = load i32, i32* @UIO_USERSPACE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %14, %struct.iovec** %41, align 8
  %42 = load %struct.proc*, %struct.proc** %6, align 8
  %43 = call i32 @PHOLD(%struct.proc* %42)
  %44 = load %struct.proc*, %struct.proc** %6, align 8
  %45 = call i32 @proc_rwmem(%struct.proc* %44, %struct.uio* %15)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = call i32 @PRELE(%struct.proc* %46)
  br label %78

48:                                               ; preds = %5
  %49 = load %struct.proc*, %struct.proc** %12, align 8
  %50 = load %struct.proc*, %struct.proc** %6, align 8
  %51 = icmp eq %struct.proc* %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 1
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 2
  %61 = load %struct.thread*, %struct.thread** %11, align 8
  store %struct.thread* %61, %struct.thread** %60, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 3
  %63 = load i32, i32* @UIO_WRITE, align 4
  store i32 %63, i32* %62, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 4
  %65 = load i32, i32* @UIO_USERSPACE, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 5
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %68, align 8
  %69 = load %struct.proc*, %struct.proc** %8, align 8
  %70 = call i32 @PHOLD(%struct.proc* %69)
  %71 = load %struct.proc*, %struct.proc** %8, align 8
  %72 = call i32 @proc_rwmem(%struct.proc* %71, %struct.uio* %17)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.proc*, %struct.proc** %8, align 8
  %74 = call i32 @PRELE(%struct.proc* %73)
  br label %77

75:                                               ; preds = %48
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %52
  br label %78

78:                                               ; preds = %77, %25
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @PHOLD(%struct.proc*) #1

declare dso_local i32 @proc_rwmem(%struct.proc*, %struct.uio*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
