; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_autounmountd.c_do_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_autounmountd.c_do_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"waiting for filesystem event for %ld seconds\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"waiting for filesystem event\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"timeout reached\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"got filesystem event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_wait(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.kevent, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @kevent(i32 %21, i32* null, i32 0, %struct.kevent* %6, i32 1, %struct.timespec* %5)
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @kevent(i32 %25, i32* null, i32 0, %struct.kevent* %6, i32 1, %struct.timespec* null)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %10
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %48

35:                                               ; preds = %30
  %36 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %48

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %34, %46, %40
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
