; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_utimesat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_utimesat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timeval = type { i32 }
%struct.nameidata = type { i32 }
%struct.timespec = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@cap_futimes_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_utimesat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, %struct.timeval* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca [2 x %struct.timespec], align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.timeval* %4, %struct.timeval** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.timeval*, %struct.timeval** %12, align 8
  %18 = load i32, i32* %13, align 4
  %19 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %15, i64 0, i64 0
  %20 = call i32 @getutimes(%struct.timeval* %17, i32 %18, %struct.timespec* %19)
  store i32 %20, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %7, align 4
  br label %53

24:                                               ; preds = %6
  %25 = load i32, i32* @LOOKUP, align 4
  %26 = load i32, i32* @FOLLOW, align 4
  %27 = load i32, i32* @AUDITVNODE1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %14, i32 %25, i32 %28, i32 %29, i8* %30, i32 %31, i32* @cap_futimes_rights, %struct.thread* %32)
  %34 = call i32 @namei(%struct.nameidata* %14)
  store i32 %34, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %7, align 4
  br label %53

38:                                               ; preds = %24
  %39 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %40 = call i32 @NDFREE(%struct.nameidata* %14, i32 %39)
  %41 = load %struct.thread*, %struct.thread** %8, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %15, i64 0, i64 0
  %45 = load %struct.timeval*, %struct.timeval** %12, align 8
  %46 = icmp eq %struct.timeval* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @setutimes(%struct.thread* %41, i32 %43, %struct.timespec* %44, i32 2, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vrele(i32 %50)
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %38, %36, %22
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @getutimes(%struct.timeval*, i32, %struct.timespec*) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

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
