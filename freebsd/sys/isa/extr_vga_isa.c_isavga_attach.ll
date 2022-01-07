; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_vga_isa.c_isavga_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_vga_isa.c_isavga_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@isavga_cdevsw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isavga_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isavga_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_unit(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_4__* @device_get_softc(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = load i32, i32* @RF_SHAREABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @bus_alloc_resource_any(i32 %12, i32 %13, i32* %6, i32 %16)
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = load i32, i32* @RF_SHAREABLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bus_alloc_resource_any(i32 %18, i32 %19, i32* %6, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_flags(i32 %26)
  %28 = call i32 @vga_attach_unit(i32 %24, %struct.TYPE_4__* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_4__* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @vga_attach_unit(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @device_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
