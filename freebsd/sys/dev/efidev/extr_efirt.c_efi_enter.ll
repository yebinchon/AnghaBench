; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@efi_lock = common dso_local global i32 0, align 4
@FPU_KERN_NOCTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @efi_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_enter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @efi_runtime, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %1, align 4
  br label %34

9:                                                ; preds = %0
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %2, align 8
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @PMAP_LOCK(i32* %17)
  %19 = call i32 @mtx_lock(i32* @efi_lock)
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = load i32, i32* @FPU_KERN_NOCTX, align 4
  %22 = call i32 @fpu_kern_enter(%struct.thread* %20, i32* null, i32 %21)
  %23 = call i32 (...) @efi_arch_enter()
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = call i32 @fpu_kern_leave(%struct.thread* %27, i32* null)
  %29 = call i32 @mtx_unlock(i32* @efi_lock)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @PMAP_UNLOCK(i32* %30)
  br label %32

32:                                               ; preds = %26, %9
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @PMAP_LOCK(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @fpu_kern_enter(%struct.thread*, i32*, i32) #1

declare dso_local i32 @efi_arch_enter(...) #1

declare dso_local i32 @fpu_kern_leave(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
