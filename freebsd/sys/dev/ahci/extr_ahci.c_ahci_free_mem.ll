; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_free_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32*, i32*, i32*, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahci_free_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_controller*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_controller* @device_get_softc(i32 %4)
  store %struct.ahci_controller* %5, %struct.ahci_controller** %3, align 8
  %6 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %14 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bus_release_resource(i32 %11, i32 %12, i32 %15, i32* %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %22 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %29 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %30, i32* %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %44 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %47 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %45, i32* %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %52 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %54 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %56 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
