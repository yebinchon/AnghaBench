; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_chdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_chdir(%struct.thread* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @LOOKUP, align 4
  %11 = load i32, i32* @FOLLOW, align 4
  %12 = load i32, i32* @LOCKSHARED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LOCKLEAF, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AUDITVNODE1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = call i32 @NDINIT(%struct.nameidata* %8, i32 %10, i32 %17, i32 %18, i8* %19, %struct.thread* %20)
  %22 = call i32 @namei(%struct.nameidata* %8)
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = call i32 @change_dir(i32 %28, %struct.thread* %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vput(i32 %34)
  %36 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %37 = call i32 @NDFREE(%struct.nameidata* %8, i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @VOP_UNLOCK(i32 %41, i32 0)
  %43 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %44 = call i32 @NDFREE(%struct.nameidata* %8, i32 %43)
  %45 = load %struct.thread*, %struct.thread** %5, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pwd_chdir(%struct.thread* %45, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %32, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @change_dir(i32, %struct.thread*) #1

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @pwd_chdir(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
