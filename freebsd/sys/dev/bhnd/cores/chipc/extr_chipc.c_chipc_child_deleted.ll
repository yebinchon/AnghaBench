; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_child_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_child_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_devinfo = type { i32, i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @chipc_child_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipc_child_deleted(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.chipc_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.chipc_devinfo* @device_get_ivars(i32 %6)
  store %struct.chipc_devinfo* %7, %struct.chipc_devinfo** %5, align 8
  %8 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %9 = icmp ne %struct.chipc_devinfo* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %12 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %11, i32 0, i32 2
  %13 = call i32 @resource_list_free(i32* %12)
  %14 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %15 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %21 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bhnd_unmap_intr(i32 %19, i32 %22)
  %24 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %25 = getelementptr inbounds %struct.chipc_devinfo, %struct.chipc_devinfo* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.chipc_devinfo*, %struct.chipc_devinfo** %5, align 8
  %28 = load i32, i32* @M_BHND, align 4
  %29 = call i32 @free(%struct.chipc_devinfo* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @device_set_ivars(i32 %31, i32* null)
  ret void
}

declare dso_local %struct.chipc_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @bhnd_unmap_intr(i32, i32) #1

declare dso_local i32 @free(%struct.chipc_devinfo*, i32) #1

declare dso_local i32 @device_set_ivars(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
