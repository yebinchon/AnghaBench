; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pty/extr_pty.c_ptydev_fdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pty/extr_pty.c_ptydev_fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.file = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@pty_warningcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"is using legacy pty devices\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* @ptydev_fdopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptydev_fdopen(%struct.cdev* %0, i32 %1, %struct.thread* %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i64*
  %15 = call i32 @atomic_cmpset_ptr(i64* %14, i32 0, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %21 = load %struct.cdev*, %struct.cdev** %6, align 8
  %22 = call i32 @devtoname(%struct.cdev* %21)
  %23 = call i32 @strlcpy(i8* %20, i32 %22, i32 6)
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  store i8 116, i8* %24, align 1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FREAD, align 4
  %27 = load i32, i32* @FWRITE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load %struct.thread*, %struct.thread** %8, align 8
  %31 = load %struct.file*, %struct.file** %9, align 8
  %32 = load %struct.cdev*, %struct.cdev** %6, align 8
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %34 = call i32 @pts_alloc_external(i32 %29, %struct.thread* %30, %struct.file* %31, %struct.cdev* %32, i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load %struct.cdev*, %struct.cdev** %6, align 8
  %39 = call i32 @destroy_dev_sched(%struct.cdev* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %19
  %42 = call i32 @counted_warning(i32* @pty_warningcnt, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %37, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @atomic_cmpset_ptr(i64*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @pts_alloc_external(i32, %struct.thread*, %struct.file*, %struct.cdev*, i8*) #1

declare dso_local i32 @destroy_dev_sched(%struct.cdev*) #1

declare dso_local i32 @counted_warning(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
