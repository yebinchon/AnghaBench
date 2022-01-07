; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { i32, i32, i32, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @superio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.siosc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.siosc* @device_get_softc(i32 %6)
  store %struct.siosc* %7, %struct.siosc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.siosc*, %struct.siosc** %4, align 8
  %16 = getelementptr inbounds %struct.siosc, %struct.siosc* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.siosc*, %struct.siosc** %4, align 8
  %21 = getelementptr inbounds %struct.siosc, %struct.siosc* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @destroy_dev(i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_delete_children(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYS_RES_IOPORT, align 4
  %29 = load %struct.siosc*, %struct.siosc** %4, align 8
  %30 = getelementptr inbounds %struct.siosc, %struct.siosc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.siosc*, %struct.siosc** %4, align 8
  %33 = getelementptr inbounds %struct.siosc, %struct.siosc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.siosc*, %struct.siosc** %4, align 8
  %37 = getelementptr inbounds %struct.siosc, %struct.siosc* %36, i32 0, i32 0
  %38 = call i32 @mtx_destroy(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %24, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.siosc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
