; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttyil_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttyil_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64, %struct.tty* }
%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.termios = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@PRIV_TTY_SETA = common dso_local global i32 0, align 4
@TTYDISC = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ttyil_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyil_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.tty*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 1
  %15 = load %struct.tty*, %struct.tty** %14, align 8
  store %struct.tty* %15, %struct.tty** %11, align 8
  %16 = load %struct.tty*, %struct.tty** %11, align 8
  %17 = call i32 @tty_lock(%struct.tty* %16)
  %18 = load %struct.tty*, %struct.tty** %11, align 8
  %19 = call i64 @tty_gone(%struct.tty* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %12, align 4
  br label %72

23:                                               ; preds = %5
  %24 = load %struct.tty*, %struct.tty** %11, align 8
  %25 = load %struct.cdev*, %struct.cdev** %6, align 8
  %26 = call i32 @dev2unit(%struct.cdev* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.thread*, %struct.thread** %10, align 8
  %30 = call i32 @ttydevsw_cioctl(%struct.tty* %24, i32 %26, i32 %27, i64 %28, %struct.thread* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ENOIOCTL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %72

35:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %69 [
    i32 131, label %37
    i32 128, label %46
    i32 130, label %62
    i32 129, label %66
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* %8, align 8
  %39 = inttoptr i64 %38 to %struct.termios*
  %40 = load %struct.cdev*, %struct.cdev** %6, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.termios*
  %44 = bitcast %struct.termios* %39 to i8*
  %45 = bitcast %struct.termios* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %71

46:                                               ; preds = %35
  %47 = load %struct.thread*, %struct.thread** %10, align 8
  %48 = load i32, i32* @PRIV_TTY_SETA, align 4
  %49 = call i32 @priv_check(%struct.thread* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %71

53:                                               ; preds = %46
  %54 = load %struct.cdev*, %struct.cdev** %6, align 8
  %55 = getelementptr inbounds %struct.cdev, %struct.cdev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.termios*
  %58 = load i64, i64* %8, align 8
  %59 = inttoptr i64 %58 to %struct.termios*
  %60 = bitcast %struct.termios* %57 to i8*
  %61 = bitcast %struct.termios* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  br label %71

62:                                               ; preds = %35
  %63 = load i32, i32* @TTYDISC, align 4
  %64 = load i64, i64* %8, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %71

66:                                               ; preds = %35
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @bzero(i64 %67, i32 4)
  br label %71

69:                                               ; preds = %35
  %70 = load i32, i32* @ENOTTY, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %66, %62, %53, %52, %37
  br label %72

72:                                               ; preds = %71, %34, %21
  %73 = load %struct.tty*, %struct.tty** %11, align 8
  %74 = call i32 @tty_unlock(%struct.tty* %73)
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @ttydevsw_cioctl(%struct.tty*, i32, i32, i64, %struct.thread*) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
