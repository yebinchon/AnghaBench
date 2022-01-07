; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devreq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dev_lookup = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devreq*, i32**)* @find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_device(%struct.devreq* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devreq*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store %struct.devreq* %0, %struct.devreq** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load %struct.devreq*, %struct.devreq** %4, align 8
  %8 = getelementptr inbounds %struct.devreq, %struct.devreq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @memchr(i32 %9, i8 signext 0, i32 4)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.devreq*, %struct.devreq** %4, align 8
  %16 = getelementptr inbounds %struct.devreq, %struct.devreq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @device_lookup_by_name(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  store i32 0, i32* %3, align 4
  br label %37

24:                                               ; preds = %14
  store i32* null, i32** %6, align 8
  %25 = load i32, i32* @dev_lookup, align 4
  %26 = load %struct.devreq*, %struct.devreq** %4, align 8
  %27 = getelementptr inbounds %struct.devreq, %struct.devreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %25, i32 %28, i32** %6)
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %32, %21, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @memchr(i32, i8 signext, i32) #1

declare dso_local i32* @device_lookup_by_name(i32) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
