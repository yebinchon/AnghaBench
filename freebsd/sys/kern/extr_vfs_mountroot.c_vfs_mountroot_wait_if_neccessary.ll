; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_wait_if_neccessary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_wait_if_neccessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@root_mount_always_wait = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"mountroot: waiting for device %s...\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@root_mount_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"rmdev\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @vfs_mountroot_wait_if_neccessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_mountroot_wait_if_neccessary(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @strstr(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* @root_mount_always_wait, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %11, %2
  %25 = call i32 (...) @vfs_mountroot_wait()
  store i32 0, i32* %3, align 4
  br label %63

26:                                               ; preds = %21
  %27 = call i32 (...) @g_waitidle()
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @parse_mount_dev_present(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %26
  %33 = call i32 (...) @vfs_mountroot_wait()
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @hz, align 4
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @root_mount_timeout, align 4
  %39 = load i32, i32* @hz, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %55, %32
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @parse_mount_dev_present(i8* %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ %54, %50 ]
  br i1 %56, label %41, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ENODEV, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %31, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @vfs_mountroot_wait(...) #1

declare dso_local i32 @g_waitidle(...) #1

declare dso_local i64 @parse_mount_dev_present(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
