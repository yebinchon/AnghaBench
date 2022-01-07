; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, %struct.ntb_child*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_link_enable(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_child*, align 8
  %9 = alloca %struct.ntb_child**, align 8
  %10 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ntb_child* @device_get_ivars(i32 %11)
  store %struct.ntb_child* %12, %struct.ntb_child** %8, align 8
  %13 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %14 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = call %struct.ntb_child** @device_get_softc(i32 %16)
  store %struct.ntb_child** %17, %struct.ntb_child*** %9, align 8
  %18 = load %struct.ntb_child**, %struct.ntb_child*** %9, align 8
  %19 = load %struct.ntb_child*, %struct.ntb_child** %18, align 8
  store %struct.ntb_child* %19, %struct.ntb_child** %10, align 8
  br label %20

20:                                               ; preds = %32, %3
  %21 = load %struct.ntb_child*, %struct.ntb_child** %10, align 8
  %22 = icmp ne %struct.ntb_child* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.ntb_child*, %struct.ntb_child** %10, align 8
  %25 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %30 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  store i32 0, i32* %4, align 4
  br label %44

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ntb_child*, %struct.ntb_child** %10, align 8
  %34 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %33, i32 0, i32 1
  %35 = load %struct.ntb_child*, %struct.ntb_child** %34, align 8
  store %struct.ntb_child* %35, %struct.ntb_child** %10, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %38 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_get_parent(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @NTB_LINK_ENABLE(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local %struct.ntb_child** @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @NTB_LINK_ENABLE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
