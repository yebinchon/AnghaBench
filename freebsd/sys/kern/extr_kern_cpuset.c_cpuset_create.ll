; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }

@cpuset_unr = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@cpuset_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset**, %struct.cpuset*, i32*)* @cpuset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_create(%struct.cpuset** %0, %struct.cpuset* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuset**, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpuset** %0, %struct.cpuset*** %5, align 8
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @cpuset_unr, align 4
  %12 = call i32 @alloc_unr(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENFILE, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* @cpuset_zone, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.cpuset* @uma_zalloc(i32 %18, i32 %21)
  store %struct.cpuset* %22, %struct.cpuset** %8, align 8
  %23 = load %struct.cpuset**, %struct.cpuset*** %5, align 8
  store %struct.cpuset* %22, %struct.cpuset** %23, align 8
  %24 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %25 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @_cpuset_create(%struct.cpuset* %24, %struct.cpuset* %25, i32* %26, i32* null, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %40

32:                                               ; preds = %17
  %33 = load i32, i32* @cpuset_unr, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @free_unr(i32 %33, i32 %34)
  %36 = load i32, i32* @cpuset_zone, align 4
  %37 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %38 = call i32 @uma_zfree(i32 %36, %struct.cpuset* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %31, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local %struct.cpuset* @uma_zalloc(i32, i32) #1

declare dso_local i32 @_cpuset_create(%struct.cpuset*, %struct.cpuset*, i32*, i32*, i32) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
