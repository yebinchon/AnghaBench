; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_thr_create_initthr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_thr_create_initthr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thr_create_initthr_args = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @thr_create_initthr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thr_create_initthr(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.thr_create_initthr_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.thr_create_initthr_args*
  store %struct.thr_create_initthr_args* %8, %struct.thr_create_initthr_args** %6, align 8
  %9 = load %struct.thr_create_initthr_args*, %struct.thr_create_initthr_args** %6, align 8
  %10 = getelementptr inbounds %struct.thr_create_initthr_args, %struct.thr_create_initthr_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.thr_create_initthr_args*, %struct.thr_create_initthr_args** %6, align 8
  %15 = getelementptr inbounds %struct.thr_create_initthr_args, %struct.thr_create_initthr_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @suword_lwpid(i32* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %13, %2
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.thr_create_initthr_args*, %struct.thr_create_initthr_args** %6, align 8
  %27 = getelementptr inbounds %struct.thr_create_initthr_args, %struct.thr_create_initthr_args* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @set_mcontext(%struct.thread* %25, i32* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @suword_lwpid(i32*, i32) #1

declare dso_local i32 @set_mcontext(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
