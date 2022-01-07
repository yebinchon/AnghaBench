; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyout_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_copyout_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmspace* }
%struct.vmspace = type { i32, i64 }

@RLIMIT_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyout_map(%struct.thread* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmspace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.vmspace*, %struct.vmspace** %14, align 8
  store %struct.vmspace* %15, %struct.vmspace** %8, align 8
  %16 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %17 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = load i32, i32* @RLIMIT_DATA, align 4
  %21 = call i64 @lim_max(%struct.thread* %19, i32 %20)
  %22 = add i64 %18, %21
  %23 = call i64 @round_page(i64 %22)
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @round_page(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %3
  %32 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %33 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %32, i32 0, i32 0
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* @VM_PROT_READ, align 4
  %37 = load i32, i32* @VM_PROT_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VM_PROT_ALL, align 4
  %40 = load i32, i32* @MAP_PRIVATE, align 4
  %41 = load i32, i32* @MAP_ANON, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FALSE, align 4
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = call i32 @vm_mmap_object(i32* %33, i64* %34, i64 %35, i32 %38, i32 %39, i32 %42, i32* null, i32 0, i32 %43, %struct.thread* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %31, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @lim_max(%struct.thread*, i32) #1

declare dso_local i32 @vm_mmap_object(i32*, i64*, i64, i32, i32, i32, i32*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
