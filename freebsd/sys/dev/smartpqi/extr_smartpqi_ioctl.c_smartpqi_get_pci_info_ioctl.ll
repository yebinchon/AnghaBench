; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_get_pci_info_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_get_pci_info_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pqisrc_softstate* }
%struct.pqisrc_softstate = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"IN udata = %p cdev = %p\0A\00", align 1
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.cdev*)* @smartpqi_get_pci_info_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_get_pci_info_ioctl(i64 %0, %struct.cdev* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.pqisrc_softstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.cdev* %1, %struct.cdev** %4, align 8
  %12 = load %struct.cdev*, %struct.cdev** %4, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %13, align 8
  store %struct.pqisrc_softstate* %14, %struct.pqisrc_softstate** %5, align 8
  %15 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %5, align 8
  %16 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %3, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.cdev*, %struct.cdev** %4, align 8
  %23 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21, %struct.cdev* %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pci_get_bus(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_get_function(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pci_get_domain(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %38 = call i32 @pci_read_config(i32 %36, i32 %37, i32 2)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %41 = call i32 @pci_read_config(i32 %39, i32 %40, i32 2)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 16
  %44 = and i32 %43, -65536
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_get_vendor(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @pci_get_device(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = shl i32 %53, 16
  %55 = and i32 %54, -65536
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
