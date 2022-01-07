; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }
%struct.chipc_devinfo = type { i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @chipc_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chipc_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chipc_softc*, align 8
  %11 = alloca %struct.chipc_devinfo*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.chipc_softc* @device_get_softc(i32* %13)
  store %struct.chipc_softc* %14, %struct.chipc_softc** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32* @device_add_child_ordered(i32* %15, i32 %16, i8* %17, i32 %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %43

23:                                               ; preds = %4
  %24 = load i32, i32* @M_BHND, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call %struct.chipc_devinfo* @malloc(i32 8, i32 %24, i32 %25)
  store %struct.chipc_devinfo* %26, %struct.chipc_devinfo** %11, align 8
  %27 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %11, align 8
  %28 = icmp eq %struct.chipc_devinfo* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @device_delete_child(i32* %30, i32* %31)
  store i32* null, i32** %5, align 8
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %11, align 8
  %35 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %34, i32 0, i32 1
  %36 = call i32 @resource_list_init(i32* %35)
  %37 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %11, align 8
  %38 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %11, align 8
  %41 = call i32 @device_set_ivars(i32* %39, %struct.chipc_devinfo* %40)
  %42 = load i32*, i32** %12, align 8
  store i32* %42, i32** %5, align 8
  br label %43

43:                                               ; preds = %33, %29, %22
  %44 = load i32*, i32** %5, align 8
  ret i32* %44
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local %struct.chipc_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.chipc_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
