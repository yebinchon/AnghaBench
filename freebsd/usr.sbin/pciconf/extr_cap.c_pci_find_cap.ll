; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_pci_find_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_pci_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }

@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR_2 = common dso_local global i32 0, align 4
@PCICAP_ID = common dso_local global i32 0, align 4
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_cap(i32 %0, %struct.pci_conf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %13 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %12, i32 0, i32 1
  %14 = load i32, i32* @PCIR_STATUS, align 4
  %15 = call i8* @read_config(i32 %11, i32* %13, i32 %14, i32 2)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

22:                                               ; preds = %3
  %23 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %24 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCIM_HDRTYPE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %32 [
    i32 128, label %28
    i32 130, label %28
    i32 129, label %30
  ]

28:                                               ; preds = %22, %22
  %29 = load i32, i32* @PCIR_CAP_PTR, align 4
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @PCIR_CAP_PTR_2, align 4
  store i32 %31, i32* %9, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %72

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %36 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %35, i32 0, i32 1
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @read_config(i32 %34, i32* %36, i32 %37, i32 1)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %62, %33
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 255
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %51 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %50, i32 0, i32 1
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PCICAP_ID, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i8* @read_config(i32 %49, i32* %51, i32 %54, i32 1)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %48
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %65 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %64, i32 0, i32 1
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i8* @read_config(i32 %63, i32* %65, i32 %68, i32 1)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %9, align 4
  br label %40

71:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %60, %32, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @read_config(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
