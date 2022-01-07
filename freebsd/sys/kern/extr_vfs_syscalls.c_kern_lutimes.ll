; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_lutimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_lutimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timeval = type { i32 }
%struct.timespec = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_lutimes(%struct.thread* %0, i8* %1, i32 %2, %struct.timeval* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.timespec], align 4
  %13 = alloca %struct.nameidata, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.timeval*, %struct.timeval** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %18 = call i32 @getutimes(%struct.timeval* %15, i32 %16, %struct.timespec* %17)
  store i32 %18, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %50

22:                                               ; preds = %5
  %23 = load i32, i32* @LOOKUP, align 4
  %24 = load i32, i32* @NOFOLLOW, align 4
  %25 = load i32, i32* @AUDITVNODE1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = call i32 @NDINIT(%struct.nameidata* %13, i32 %23, i32 %26, i32 %27, i8* %28, %struct.thread* %29)
  %31 = call i32 @namei(%struct.nameidata* %13)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %50

35:                                               ; preds = %22
  %36 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %37 = call i32 @NDFREE(%struct.nameidata* %13, i32 %36)
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %42 = load %struct.timeval*, %struct.timeval** %10, align 8
  %43 = icmp eq %struct.timeval* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @setutimes(%struct.thread* %38, i32 %40, %struct.timespec* %41, i32 2, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vrele(i32 %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %35, %33, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @getutimes(%struct.timeval*, i32, %struct.timespec*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @setutimes(%struct.thread*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
