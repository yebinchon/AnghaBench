; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_free_child_ivars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_free_child_ivars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_ivars = type { i64, %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars*, i64, %struct.xenbus_device_ivars*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xenbus_device_ivars* }

@M_XENBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device_ivars*)* @xenbusb_free_child_ivars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbusb_free_child_ivars(%struct.xenbus_device_ivars* %0) #0 {
  %2 = alloca %struct.xenbus_device_ivars*, align 8
  store %struct.xenbus_device_ivars* %0, %struct.xenbus_device_ivars** %2, align 8
  %3 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %4 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %7 = icmp ne %struct.xenbus_device_ivars* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %10 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %9, i32 0, i32 6
  %11 = call i32 @xs_unregister_watch(%struct.TYPE_2__* %10)
  %12 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %13 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %14, align 8
  %16 = load i32, i32* @M_XENBUS, align 4
  %17 = call i32 @free(%struct.xenbus_device_ivars* %15, i32 %16)
  %18 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %19 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.xenbus_device_ivars* null, %struct.xenbus_device_ivars** %20, align 8
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %23 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %24, align 8
  %26 = icmp ne %struct.xenbus_device_ivars* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %29 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %28, i32 0, i32 5
  %30 = call i32 @xs_unregister_watch(%struct.TYPE_2__* %29)
  %31 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %32 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.xenbus_device_ivars* null, %struct.xenbus_device_ivars** %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %36 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %35, i32 0, i32 4
  %37 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %36, align 8
  %38 = icmp ne %struct.xenbus_device_ivars* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %41 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %40, i32 0, i32 4
  %42 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %41, align 8
  %43 = load i32, i32* @M_XENBUS, align 4
  %44 = call i32 @free(%struct.xenbus_device_ivars* %42, i32 %43)
  %45 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %46 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %45, i32 0, i32 4
  store %struct.xenbus_device_ivars* null, %struct.xenbus_device_ivars** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %49 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %51 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %50, i32 0, i32 2
  %52 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %51, align 8
  %53 = icmp ne %struct.xenbus_device_ivars* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %56 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %55, i32 0, i32 2
  %57 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %56, align 8
  %58 = load i32, i32* @M_XENBUS, align 4
  %59 = call i32 @free(%struct.xenbus_device_ivars* %57, i32 %58)
  %60 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %61 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %60, i32 0, i32 2
  store %struct.xenbus_device_ivars* null, %struct.xenbus_device_ivars** %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  %63 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %64 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %63, i32 0, i32 1
  %65 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %64, align 8
  %66 = icmp ne %struct.xenbus_device_ivars* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %69 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %68, i32 0, i32 1
  %70 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %69, align 8
  %71 = load i32, i32* @M_XENBUS, align 4
  %72 = call i32 @free(%struct.xenbus_device_ivars* %70, i32 %71)
  %73 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %74 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %73, i32 0, i32 1
  store %struct.xenbus_device_ivars* null, %struct.xenbus_device_ivars** %74, align 8
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %77 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %2, align 8
  %79 = load i32, i32* @M_XENBUS, align 4
  %80 = call i32 @free(%struct.xenbus_device_ivars* %78, i32 %79)
  ret void
}

declare dso_local i32 @xs_unregister_watch(%struct.TYPE_2__*) #1

declare dso_local i32 @free(%struct.xenbus_device_ivars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
