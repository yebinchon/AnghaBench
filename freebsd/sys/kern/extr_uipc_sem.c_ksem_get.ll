; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i64, %struct.ksem* }
%struct.ksem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DTYPE_SEM = common dso_local global i64 0, align 8
@KS_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32*, %struct.file**)* @ksem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_get(%struct.thread* %0, i32 %1, i32* %2, %struct.file** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.file**, align 8
  %10 = alloca %struct.ksem*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.file** %3, %struct.file*** %9, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @fget(%struct.thread* %13, i32 %14, i32* %15, %struct.file** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %11, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DTYPE_SEM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %11, align 8
  %29 = load %struct.thread*, %struct.thread** %6, align 8
  %30 = call i32 @fdrop(%struct.file* %28, %struct.thread* %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %5, align 4
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.file*, %struct.file** %11, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load %struct.ksem*, %struct.ksem** %34, align 8
  store %struct.ksem* %35, %struct.ksem** %10, align 8
  %36 = load %struct.ksem*, %struct.ksem** %10, align 8
  %37 = getelementptr inbounds %struct.ksem, %struct.ksem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KS_DEAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.file*, %struct.file** %11, align 8
  %44 = load %struct.thread*, %struct.thread** %6, align 8
  %45 = call i32 @fdrop(%struct.file* %43, %struct.thread* %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %32
  %48 = load %struct.file*, %struct.file** %11, align 8
  %49 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* %48, %struct.file** %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %42, %27, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
