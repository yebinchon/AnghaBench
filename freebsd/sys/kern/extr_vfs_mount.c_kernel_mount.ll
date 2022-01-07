; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_kernel_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_kernel_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32, i32, i32* }
%struct.uio = type { i32, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"kernel_mount NULL ma\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"kernel_mount NULL ma->v\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"kernel_mount odd ma->len (%d)\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_mount(%struct.mntarg* %0, i32 %1) #0 {
  %3 = alloca %struct.mntarg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uio, align 8
  %6 = alloca i32, align 4
  store %struct.mntarg* %0, %struct.mntarg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %8 = icmp ne %struct.mntarg* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %12 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %18 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %25 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %31 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %35 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @UIO_SYSSPACE, align 4
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %41 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @curthread, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @vfs_donmount(i32 %46, i32 %47, %struct.uio* %5)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %2
  %50 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  %51 = call i32 @free_mntarg(%struct.mntarg* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vfs_donmount(i32, i32, %struct.uio*) #1

declare dso_local i32 @free_mntarg(%struct.mntarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
