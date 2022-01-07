; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i8* }

@notify.prefix = internal constant [6 x i8] c"cdev=\00", align 1
@cold = common dso_local global i64 0, align 8
@MAKEDEV_NOWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DEVFS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CDEV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*, i8*, i32)* @notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify(%struct.cdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @cold, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %57

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @M_NOWAIT, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @M_WAITOK, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  %24 = load %struct.cdev*, %struct.cdev** %4, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 6
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @M_TEMP, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @malloc(i32 %31, i32 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %57

38:                                               ; preds = %22
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @memcpy(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @notify.prefix, i64 0, i64 0), i32 5)
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 6
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  %44 = load %struct.cdev*, %struct.cdev** %4, align 8
  %45 = getelementptr inbounds %struct.cdev, %struct.cdev* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @memcpy(i8* %43, i8* %46, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51, i32 %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @M_TEMP, align 4
  %56 = call i32 @free(i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %38, %37, %12
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @devctl_notify_f(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
