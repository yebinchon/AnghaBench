; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sys_machdep.c_sparc_sigtramp_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sys_machdep.c_sparc_sigtramp_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sparc_sigtramp_install_args = type { i64, i32* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @sparc_sigtramp_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_sigtramp_install(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sparc_sigtramp_install_args, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @copyin(i8* %12, %struct.sparc_sigtramp_install_args* %6, i32 16)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sparc_sigtramp_install_args, %struct.sparc_sigtramp_install_args* %6, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sparc_sigtramp_install_args, %struct.sparc_sigtramp_install_args* %6, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.proc*, %struct.proc** %7, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @suword(i32* %23, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EFAULT, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %17
  %34 = getelementptr inbounds %struct.sparc_sigtramp_install_args, %struct.sparc_sigtramp_install_args* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.proc*, %struct.proc** %7, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %30, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @copyin(i8*, %struct.sparc_sigtramp_install_args*, i32) #1

declare dso_local i64 @suword(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
