; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_ofw_isa.c_ofw_isa_route_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_ofw_isa.c_ofw_isa_route_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_iinfo = type { i32 }
%struct.isa_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_isa_route_intr(i32 %0, i32 %1, %struct.ofw_bus_iinfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofw_bus_iinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isa_regs, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ofw_bus_iinfo* %2, %struct.ofw_bus_iinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = call i32 @device_get_parent(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %7, align 8
  %17 = call i32 @ofw_bus_lookup_imap(i32 %15, %struct.ofw_bus_iinfo* %16, %struct.isa_regs* %9, i32 4, i32* %8, i32 4, i32* %11, i32 4, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_lookup_imap(i32, %struct.ofw_bus_iinfo*, %struct.isa_regs*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @PCIB_ROUTE_INTERRUPT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
