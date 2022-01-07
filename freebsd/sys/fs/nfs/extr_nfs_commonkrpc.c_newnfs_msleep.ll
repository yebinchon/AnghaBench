; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_msleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_msleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mtx = type { i32 }

@PCATCH = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newnfs_msleep(%struct.thread* %0, i8* %1, %struct.mtx* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.mtx* %2, %struct.mtx** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @PCATCH, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.mtx*, %struct.mtx** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @msleep(i8* %21, %struct.mtx* %22, i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %44

27:                                               ; preds = %6
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = icmp eq %struct.thread* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %31, %struct.thread** %8, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = call i32 @newnfs_set_sigmask(%struct.thread* %33, i32* %14)
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.mtx*, %struct.mtx** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @msleep(i8* %35, %struct.mtx* %36, i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.thread*, %struct.thread** %8, align 8
  %42 = call i32 @newnfs_restore_sigmask(%struct.thread* %41, i32* %14)
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @msleep(i8*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @newnfs_set_sigmask(%struct.thread*, i32*) #1

declare dso_local i32 @newnfs_restore_sigmask(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
