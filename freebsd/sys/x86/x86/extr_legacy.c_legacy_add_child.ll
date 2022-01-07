; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_legacy_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_legacy_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.legacy_device = type { i32, i32, i32 }

@M_LEGACYDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @legacy_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @legacy_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.legacy_device*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @M_LEGACYDEV, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.legacy_device* @malloc(i32 12, i32 %12, i32 %15)
  store %struct.legacy_device* %16, %struct.legacy_device** %11, align 8
  %17 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %18 = icmp eq %struct.legacy_device* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %22 = getelementptr inbounds %struct.legacy_device, %struct.legacy_device* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %24 = getelementptr inbounds %struct.legacy_device, %struct.legacy_device* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %26 = getelementptr inbounds %struct.legacy_device, %struct.legacy_device* %25, i32 0, i32 2
  store i32 -1, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @device_add_child_ordered(i32* %27, i32 %28, i8* %29, i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %36 = load i32, i32* @M_LEGACYDEV, align 4
  %37 = call i32 @free(%struct.legacy_device* %35, i32 %36)
  br label %42

38:                                               ; preds = %20
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.legacy_device*, %struct.legacy_device** %11, align 8
  %41 = call i32 @device_set_ivars(i32* %39, %struct.legacy_device* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local %struct.legacy_device* @malloc(i32, i32, i32) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.legacy_device*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.legacy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
