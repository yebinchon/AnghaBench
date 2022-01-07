; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_free_kmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_free_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32*, i64 }

@.str = private unnamed_addr constant [34 x i8] c"pipe_free_kmem: pipe mutex locked\00", align 1
@amountpipekva = common dso_local global i32 0, align 4
@pipe_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*)* @pipe_free_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_free_kmem(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %3 = load %struct.pipe*, %struct.pipe** %2, align 8
  %4 = call i32 @PIPE_MTX(%struct.pipe* %3)
  %5 = call i32 @mtx_owned(i32 %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pipe*, %struct.pipe** %2, align 8
  %11 = getelementptr inbounds %struct.pipe, %struct.pipe* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.pipe*, %struct.pipe** %2, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @atomic_subtract_long(i32* @amountpipekva, i64 %19)
  %21 = load i32, i32* @pipe_map, align 4
  %22 = load %struct.pipe*, %struct.pipe** %2, align 8
  %23 = getelementptr inbounds %struct.pipe, %struct.pipe* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load %struct.pipe*, %struct.pipe** %2, align 8
  %28 = getelementptr inbounds %struct.pipe, %struct.pipe* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = load %struct.pipe*, %struct.pipe** %2, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = call i32 @vm_map_remove(i32 %21, i64 %26, i64 %36)
  %38 = load %struct.pipe*, %struct.pipe** %2, align 8
  %39 = getelementptr inbounds %struct.pipe, %struct.pipe* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %15, %1
  %42 = load %struct.pipe*, %struct.pipe** %2, align 8
  %43 = getelementptr inbounds %struct.pipe, %struct.pipe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.pipe*, %struct.pipe** %2, align 8
  %46 = getelementptr inbounds %struct.pipe, %struct.pipe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.pipe*, %struct.pipe** %2, align 8
  %49 = getelementptr inbounds %struct.pipe, %struct.pipe* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @atomic_subtract_long(i32*, i64) #1

declare dso_local i32 @vm_map_remove(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
