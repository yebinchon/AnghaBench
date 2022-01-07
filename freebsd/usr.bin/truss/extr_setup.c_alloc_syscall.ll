; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_alloc_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_alloc_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threadinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32**, i32* }
%struct.ptrace_lwpinfo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.threadinfo*, %struct.ptrace_lwpinfo*)* @alloc_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_syscall(%struct.threadinfo* %0, %struct.ptrace_lwpinfo* %1) #0 {
  %3 = alloca %struct.threadinfo*, align 8
  %4 = alloca %struct.ptrace_lwpinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.threadinfo* %0, %struct.threadinfo** %3, align 8
  store %struct.ptrace_lwpinfo* %1, %struct.ptrace_lwpinfo** %4, align 8
  %6 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %7 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %13 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %20 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %27 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %52, %2
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %36 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = call i64 @nitems(i32** %38)
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %43 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %57 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %62 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %65 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %68 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nitems(i32**) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
