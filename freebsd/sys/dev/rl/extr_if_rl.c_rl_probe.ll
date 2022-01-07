; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_type = type { i64, i64, i32 }

@RT_VENDORID = common dso_local global i64 0, align 8
@RT_DEVICEID_8139 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@rl_devs = common dso_local global %struct.rl_type* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rl_type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_vendor(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_device(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_revid(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @RT_VENDORID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @RT_DEVICEID_8139, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %18, %1
  %29 = load %struct.rl_type*, %struct.rl_type** @rl_devs, align 8
  store %struct.rl_type* %29, %struct.rl_type** %4, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %55, %28
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rl_type*, %struct.rl_type** @rl_devs, align 8
  %33 = call i32 @nitems(%struct.rl_type* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.rl_type*, %struct.rl_type** %4, align 8
  %38 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.rl_type*, %struct.rl_type** %4, align 8
  %44 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.rl_type*, %struct.rl_type** %4, align 8
  %50 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_set_desc(i32 %48, i32 %51)
  %53 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %53, i32* %2, align 4
  br label %62

54:                                               ; preds = %41, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load %struct.rl_type*, %struct.rl_type** %4, align 8
  %59 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %58, i32 1
  store %struct.rl_type* %59, %struct.rl_type** %4, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %47, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @nitems(%struct.rl_type*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
