; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.ida_softc = type { i32 }
%struct.ida_user_command = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ida_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ida_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ida_softc*, align 8
  %12 = alloca %struct.ida_user_command*, align 8
  %13 = alloca %struct.cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %19 = load %struct.cdev*, %struct.cdev** %6, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ida_softc*
  store %struct.ida_softc* %22, %struct.ida_softc** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = inttoptr i64 %23 to %struct.ida_user_command*
  store %struct.ida_user_command* %24, %struct.ida_user_command** %12, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %72 [
    i32 128, label %26
  ]

26:                                               ; preds = %5
  %27 = load %struct.ida_user_command*, %struct.ida_user_command** %12, align 8
  %28 = getelementptr inbounds %struct.ida_user_command, %struct.ida_user_command* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.cmd_info* @ida_cmd_lookup(i32 %29)
  store %struct.cmd_info* %30, %struct.cmd_info** %13, align 8
  %31 = load %struct.cmd_info*, %struct.cmd_info** %13, align 8
  %32 = icmp eq %struct.cmd_info* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %16, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.cmd_info*, %struct.cmd_info** %13, align 8
  %37 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.cmd_info*, %struct.cmd_info** %13, align 8
  %40 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.ida_user_command*, %struct.ida_user_command** %12, align 8
  %46 = getelementptr inbounds %struct.ida_user_command, %struct.ida_user_command* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %18, align 8
  br label %51

49:                                               ; preds = %35
  %50 = bitcast i32* %17 to i8*
  store i8* %50, i8** %18, align 8
  store i32 4, i32* %14, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.ida_softc*, %struct.ida_softc** %11, align 8
  %53 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load %struct.ida_softc*, %struct.ida_softc** %11, align 8
  %56 = load %struct.ida_user_command*, %struct.ida_user_command** %12, align 8
  %57 = getelementptr inbounds %struct.ida_user_command, %struct.ida_user_command* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %18, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ida_user_command*, %struct.ida_user_command** %12, align 8
  %62 = getelementptr inbounds %struct.ida_user_command, %struct.ida_user_command* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ida_user_command*, %struct.ida_user_command** %12, align 8
  %65 = getelementptr inbounds %struct.ida_user_command, %struct.ida_user_command* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @ida_command(%struct.ida_softc* %55, i32 %58, i8* %59, i32 %60, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.ida_softc*, %struct.ida_softc** %11, align 8
  %70 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_unlock(i32* %70)
  br label %74

72:                                               ; preds = %5
  %73 = load i32, i32* @ENOIOCTL, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %72, %51, %33
  %75 = load i32, i32* %16, align 4
  ret i32 %75
}

declare dso_local %struct.cmd_info* @ida_cmd_lookup(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ida_command(%struct.ida_softc*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
