; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.piix4_pci_device = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ichst\00", align 1
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@piix4_pci_devices = common dso_local global %struct.piix4_pci_device* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"smist: found supported isa bridge %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"smist\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"smist: add child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @smist_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smist_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.piix4_pci_device*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = call i64 @resource_disabled(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %65

10:                                               ; preds = %2
  %11 = load i64, i64* @cpu_vendor_id, align 8
  %12 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %65

15:                                               ; preds = %10
  %16 = load i32, i32* @cpu_id, align 4
  %17 = and i32 %16, 4080
  switch i32 %17, label %19 [
    i32 1664, label %18
    i32 1696, label %18
  ]

18:                                               ; preds = %15, %15
  br label %20

19:                                               ; preds = %15
  br label %65

20:                                               ; preds = %18
  %21 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** @piix4_pci_devices, align 8
  store %struct.piix4_pci_device* %21, %struct.piix4_pci_device** %5, align 8
  br label %22

22:                                               ; preds = %38, %20
  %23 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** %5, align 8
  %24 = getelementptr inbounds %struct.piix4_pci_device, %struct.piix4_pci_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** %5, align 8
  %29 = getelementptr inbounds %struct.piix4_pci_device, %struct.piix4_pci_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** %5, align 8
  %32 = getelementptr inbounds %struct.piix4_pci_device, %struct.piix4_pci_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @pci_find_device(i32 %30, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** %5, align 8
  %40 = getelementptr inbounds %struct.piix4_pci_device, %struct.piix4_pci_device* %39, i32 1
  store %struct.piix4_pci_device* %40, %struct.piix4_pci_device** %5, align 8
  br label %22

41:                                               ; preds = %36, %22
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %65

45:                                               ; preds = %41
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.piix4_pci_device*, %struct.piix4_pci_device** %5, align 8
  %50 = getelementptr inbounds %struct.piix4_pci_device, %struct.piix4_pci_device* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32*, i32** %4, align 8
  %55 = call i32* @device_find_child(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %65

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @BUS_ADD_CHILD(i32* %59, i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @device_printf(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %9, %14, %19, %44, %57, %62, %58
  ret void
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32* @pci_find_device(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
