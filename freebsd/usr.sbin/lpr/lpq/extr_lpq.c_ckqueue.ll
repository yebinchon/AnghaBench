; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpq/extr_lpq.c_ckqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpq/extr_lpq.c_ckqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8* }
%struct.dirent = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer*)* @ckqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckqueue(%struct.printer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.printer*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %3, align 8
  %7 = load %struct.printer*, %struct.printer** %3, align 8
  %8 = getelementptr inbounds %struct.printer, %struct.printer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @opendir(i8* %10)
  store i32* %11, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.dirent* @readdir(i32* %16)
  store %struct.dirent* %17, %struct.dirent** %4, align 8
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.dirent*, %struct.dirent** %4, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 99
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.dirent*, %struct.dirent** %4, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 102
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19
  br label %15

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @closedir(i32* %37)
  store i32 1, i32* %2, align 4
  br label %42

39:                                               ; preds = %15
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @closedir(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
