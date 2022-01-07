; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_unregister_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, i32, %struct.ntb_child* }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_unregister_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_child**, align 8
  %4 = alloca %struct.ntb_child*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ntb_child** @device_get_softc(i32 %6)
  store %struct.ntb_child** %7, %struct.ntb_child*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load %struct.ntb_child**, %struct.ntb_child*** %3, align 8
  %10 = load %struct.ntb_child*, %struct.ntb_child** %9, align 8
  store %struct.ntb_child* %10, %struct.ntb_child** %4, align 8
  %11 = icmp ne %struct.ntb_child* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.ntb_child**, %struct.ntb_child*** %3, align 8
  %14 = load %struct.ntb_child*, %struct.ntb_child** %13, align 8
  %15 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %14, i32 0, i32 2
  %16 = load %struct.ntb_child*, %struct.ntb_child** %15, align 8
  %17 = load %struct.ntb_child**, %struct.ntb_child*** %3, align 8
  store %struct.ntb_child* %16, %struct.ntb_child** %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_delete_child(i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %33

26:                                               ; preds = %12
  %27 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %28 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %27, i32 0, i32 0
  %29 = call i32 @rm_destroy(i32* %28)
  %30 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(%struct.ntb_child* %30, i32 %31)
  br label %8

33:                                               ; preds = %25, %8
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.ntb_child** @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @rm_destroy(i32*) #1

declare dso_local i32 @free(%struct.ntb_child*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
