; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_ident = type { i64, i64, i32 }

@amr_device_ids = common dso_local global %struct.amr_ident* null, align 8
@AMR_ID_PROBE_SIG = common dso_local global i32 0, align 4
@AMR_CFG_SIG = common dso_local global i32 0, align 4
@AMR_SIGNATURE_1 = common dso_local global i32 0, align 4
@AMR_SIGNATURE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amr_ident* (i32)* @amr_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amr_ident* @amr_find_ident(i32 %0) #0 {
  %2 = alloca %struct.amr_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_ident*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.amr_ident*, %struct.amr_ident** @amr_device_ids, align 8
  store %struct.amr_ident* %6, %struct.amr_ident** %4, align 8
  br label %7

7:                                                ; preds = %49, %1
  %8 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  %9 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_vendor(i32 %13)
  %15 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  %16 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @pci_get_device(i32 %20)
  %22 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  %23 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  %28 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AMR_ID_PROBE_SIG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @AMR_CFG_SIG, align 4
  %36 = call i32 @pci_read_config(i32 %34, i32 %35, i32 2)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AMR_SIGNATURE_1, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AMR_SIGNATURE_2, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  store %struct.amr_ident* %47, %struct.amr_ident** %2, align 8
  br label %53

48:                                               ; preds = %19, %12
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.amr_ident*, %struct.amr_ident** %4, align 8
  %51 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %50, i32 1
  store %struct.amr_ident* %51, %struct.amr_ident** %4, align 8
  br label %7

52:                                               ; preds = %7
  store %struct.amr_ident* null, %struct.amr_ident** %2, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.amr_ident*, %struct.amr_ident** %2, align 8
  ret %struct.amr_ident* %54
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
