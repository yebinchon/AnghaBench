; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ida_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.ida_softc*
  store %struct.ida_softc* %8, %struct.ida_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @bus_generic_detach(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_delete_children(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @destroy_dev(i32 %25)
  %27 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %28 = call i32 @ida_free(%struct.ida_softc* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %20, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @ida_free(%struct.ida_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
