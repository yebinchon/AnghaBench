; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_fill_file_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_fill_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_file_lock(%struct.file_lock* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.file_lock*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 5
  %24 = call i32 @bcopy(i32* %21, i32* %23, i32 4)
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %46 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
