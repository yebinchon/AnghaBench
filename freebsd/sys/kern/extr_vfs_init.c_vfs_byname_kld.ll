; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_byname_kld.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_byname_kld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsconf = type { i32 }
%struct.thread = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@LINKER_UNLOAD_FORCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsconf* @vfs_byname_kld(i8* %0, %struct.thread* %1, i32* %2) #0 {
  %4 = alloca %struct.vfsconf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vfsconf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.vfsconf* @vfs_byname(i8* %11)
  store %struct.vfsconf* %12, %struct.vfsconf** %8, align 8
  %13 = load %struct.vfsconf*, %struct.vfsconf** %8, align 8
  %14 = icmp ne %struct.vfsconf* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.vfsconf*, %struct.vfsconf** %8, align 8
  store %struct.vfsconf* %16, %struct.vfsconf** %4, align 8
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @kern_kldload(%struct.thread* %18, i8* %19, i32* %9)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EEXIST, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.vfsconf* null, %struct.vfsconf** %4, align 8
  br label %55

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.vfsconf* @vfs_byname(i8* %38)
  store %struct.vfsconf* %39, %struct.vfsconf** %8, align 8
  %40 = load %struct.vfsconf*, %struct.vfsconf** %8, align 8
  %41 = icmp eq %struct.vfsconf* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @LINKER_UNLOAD_FORCE, align 4
  %49 = call i32 @kern_kldunload(%struct.thread* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @ENODEV, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store %struct.vfsconf* null, %struct.vfsconf** %4, align 8
  br label %55

53:                                               ; preds = %37
  %54 = load %struct.vfsconf*, %struct.vfsconf** %8, align 8
  store %struct.vfsconf* %54, %struct.vfsconf** %4, align 8
  br label %55

55:                                               ; preds = %53, %50, %36, %15
  %56 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  ret %struct.vfsconf* %56
}

declare dso_local %struct.vfsconf* @vfs_byname(i8*) #1

declare dso_local i32 @kern_kldload(%struct.thread*, i8*, i32*) #1

declare dso_local i32 @kern_kldunload(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
