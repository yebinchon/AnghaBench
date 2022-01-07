; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_diskioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_diskioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@ndisks = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@disk_fd = common dso_local global i32* null, align 8
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @cb_diskioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_diskioctl(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ndisks, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @EBADF, align 4
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %55 [
    i32 128, label %21
    i32 129, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 512, i32* %23, align 4
  br label %57

24:                                               ; preds = %19
  %25 = load i32*, i32** @disk_fd, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fstat(i32 %29, %struct.stat* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOTTY, align 4
  store i32 %33, i32* %5, align 4
  br label %58

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISCHR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** @disk_fd, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %46 = call i32 @ioctl(i32 %44, i32 129, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOTTY, align 4
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %39, %34
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %57

55:                                               ; preds = %19
  %56 = load i32, i32* @ENOTTY, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %50, %21
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55, %48, %32, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
