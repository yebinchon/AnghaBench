; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_generic.c_ahci_gen_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_generic.c_ahci_gen_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32*, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_gen_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_gen_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ahci_controller* @device_get_softc(i32 %6)
  store %struct.ahci_controller* %7, %struct.ahci_controller** %4, align 8
  %8 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %13 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %12, i32 0, i32 2
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i64* %13, i32 %14)
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %19 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ahci_gen_ctlr_reset(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ahci_attach(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %45 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %48 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resource(i32 %42, i32 %43, i64 %46, i32* %49)
  br label %51

51:                                               ; preds = %41, %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @ahci_gen_ctlr_reset(i32) #1

declare dso_local i32 @ahci_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
