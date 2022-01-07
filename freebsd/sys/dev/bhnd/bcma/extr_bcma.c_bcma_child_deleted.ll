; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_child_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_child_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bcma_devinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @bcma_child_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_child_deleted(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_softc*, align 8
  %6 = alloca %struct.bcma_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bhnd_softc* @device_get_softc(i32 %7)
  store %struct.bhnd_softc* %8, %struct.bhnd_softc** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bhnd_generic_child_deleted(i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.bcma_devinfo* @device_get_ivars(i32 %12)
  store %struct.bcma_devinfo* %13, %struct.bcma_devinfo** %6, align 8
  %14 = icmp ne %struct.bcma_devinfo* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %19 = call i32 @bcma_free_dinfo(i32 %16, i32 %17, %struct.bcma_devinfo* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_set_ivars(i32 %21, i32* null)
  ret void
}

declare dso_local %struct.bhnd_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_generic_child_deleted(i32, i32) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @bcma_free_dinfo(i32, i32, %struct.bcma_devinfo*) #1

declare dso_local i32 @device_set_ivars(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
