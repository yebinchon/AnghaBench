; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuntapmodevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuntapmodevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_driver = type { i32, i32 }

@tunmtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tunmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@tuntap_drivers = common dso_local global %struct.tuntap_driver* null, align 8
@IF_MAXUNIT = common dso_local global i32 0, align 4
@ifnet_arrival_event = common dso_local global i32 0, align 4
@tunrename = common dso_local global i32 0, align 4
@arrival_tag = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@dev_clone = common dso_local global i32 0, align 4
@tunclone = common dso_local global i32 0, align 4
@clone_tag = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @tuntapmodevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuntapmodevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tuntap_driver*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %54 [
    i32 129, label %11
    i32 128, label %53
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* @tunmtx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %31, %11
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.tuntap_driver*, %struct.tuntap_driver** @tuntap_drivers, align 8
  %17 = call i32 @nitems(%struct.tuntap_driver* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.tuntap_driver*, %struct.tuntap_driver** @tuntap_drivers, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %20, i64 %22
  store %struct.tuntap_driver* %23, %struct.tuntap_driver** %8, align 8
  %24 = load %struct.tuntap_driver*, %struct.tuntap_driver** %8, align 8
  %25 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %24, i32 0, i32 1
  %26 = call i32 @clone_setup(i32* %25)
  %27 = load i32, i32* @IF_MAXUNIT, align 4
  %28 = call i32 @new_unrhdr(i32 0, i32 %27, i32* @tunmtx)
  %29 = load %struct.tuntap_driver*, %struct.tuntap_driver** %8, align 8
  %30 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @ifnet_arrival_event, align 4
  %36 = load i32, i32* @tunrename, align 4
  %37 = call i8* @EVENTHANDLER_REGISTER(i32 %35, i32 %36, i32 0, i32 1000)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @arrival_tag, align 8
  %39 = load i32*, i32** @arrival_tag, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %4, align 4
  br label %57

43:                                               ; preds = %34
  %44 = load i32, i32* @dev_clone, align 4
  %45 = load i32, i32* @tunclone, align 4
  %46 = call i8* @EVENTHANDLER_REGISTER(i32 %44, i32 %45, i32 0, i32 1000)
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** @clone_tag, align 8
  %48 = load i32*, i32** @clone_tag, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %43
  br label %56

53:                                               ; preds = %3
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %53, %52
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %50, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @nitems(%struct.tuntap_driver*) #1

declare dso_local i32 @clone_setup(i32*) #1

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
