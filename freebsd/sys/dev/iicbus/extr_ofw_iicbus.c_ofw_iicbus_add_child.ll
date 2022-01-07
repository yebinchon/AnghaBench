; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ofw_iicbus.c_ofw_iicbus_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_iicbus_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @ofw_iicbus_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ofw_iicbus_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ofw_iicbus_devinfo*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32* @device_add_child_ordered(i32* %12, i32 %13, i8* %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  store i32* %20, i32** %5, align 8
  br label %53

21:                                               ; preds = %4
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.ofw_iicbus_devinfo* @malloc(i32 40, i32 %22, i32 %25)
  store %struct.ofw_iicbus_devinfo* %26, %struct.ofw_iicbus_devinfo** %11, align 8
  %27 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %28 = icmp eq %struct.ofw_iicbus_devinfo* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @device_delete_child(i32* %30, i32* %31)
  store i32* null, i32** %5, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %35 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %38 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %41 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %44 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %47 = getelementptr inbounds %struct.ofw_iicbus_devinfo, %struct.ofw_iicbus_devinfo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.ofw_iicbus_devinfo*, %struct.ofw_iicbus_devinfo** %11, align 8
  %51 = call i32 @device_set_ivars(i32* %49, %struct.ofw_iicbus_devinfo* %50)
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %33, %29, %19
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local %struct.ofw_iicbus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ofw_iicbus_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
