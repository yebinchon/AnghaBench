; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_linkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@cap_linkat_source_rights = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_linkat(%struct.thread* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nameidata, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  br label %18

18:                                               ; preds = %43, %7
  %19 = call i32 (...) @bwillwrite()
  %20 = load i32, i32* @LOOKUP, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @AUDITVNODE1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.thread*, %struct.thread** %9, align 8
  %28 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %16, i32 %20, i32 %23, i32 %24, i8* %25, i32 %26, i32* @cap_linkat_source_rights, %struct.thread* %27)
  %29 = call i32 @namei(%struct.nameidata* %16)
  store i32 %29, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %8, align 4
  br label %49

33:                                               ; preds = %18
  %34 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %35 = call i32 @NDFREE(%struct.nameidata* %16, i32 %34)
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @kern_linkat_vp(%struct.thread* %36, i32 %38, i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %18, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %31
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @kern_linkat_vp(%struct.thread*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
