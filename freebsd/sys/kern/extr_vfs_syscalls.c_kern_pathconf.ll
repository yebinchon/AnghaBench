; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_pathconf(%struct.thread* %0, i8* %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* @LOOKUP, align 4
  %17 = load i32, i32* @LOCKSHARED, align 4
  %18 = load i32, i32* @LOCKLEAF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AUDITVNODE1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.thread*, %struct.thread** %8, align 8
  %27 = call i32 @NDINIT(%struct.nameidata* %14, i32 %16, i32 %23, i32 %24, i8* %25, %struct.thread* %26)
  %28 = call i32 @namei(%struct.nameidata* %14)
  store i32 %28, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %7, align 4
  br label %44

32:                                               ; preds = %6
  %33 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %34 = call i32 @NDFREE(%struct.nameidata* %14, i32 %33)
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i64*, i64** %13, align 8
  %39 = call i32 @VOP_PATHCONF(i32 %36, i32 %37, i64* %38)
  store i32 %39, i32* %15, align 4
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vput(i32 %41)
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %32, %30
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_PATHCONF(i32, i32, i64*) #1

declare dso_local i32 @vput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
