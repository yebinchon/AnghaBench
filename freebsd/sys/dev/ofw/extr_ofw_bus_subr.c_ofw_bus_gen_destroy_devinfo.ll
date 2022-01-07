; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_gen_destroy_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_gen_destroy_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i32*, i32*, i32*, i32*, i32* }

@M_OFWPROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %0) #0 {
  %2 = alloca %struct.ofw_bus_devinfo*, align 8
  store %struct.ofw_bus_devinfo* %0, %struct.ofw_bus_devinfo** %2, align 8
  %3 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %4 = icmp eq %struct.ofw_bus_devinfo* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  %7 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @M_OFWPROP, align 4
  %16 = call i32 @free(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %6
  %18 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %19 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %24 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @M_OFWPROP, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %30 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %35 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_OFWPROP, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %41 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %46 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @M_OFWPROP, align 4
  %49 = call i32 @free(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %52 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %2, align 8
  %57 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @M_OFWPROP, align 4
  %60 = call i32 @free(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %5, %55, %50
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
