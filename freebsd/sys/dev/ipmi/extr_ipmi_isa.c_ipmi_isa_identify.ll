; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_isa_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_isa_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_get_info = type { i64 }

@SSIF_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ipmi\00", align 1
@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ipmi_isa_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_isa_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_get_info, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 @ipmi_smbios_identify(%struct.ipmi_get_info* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SSIF_MODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @device_find_child(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %20 = call i32 @pci_cfgregread(i32 0, i32 4, i32 2, i32 %19, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 16
  %28 = call i32* @ipmi_pci_match(i32 %25, i32 %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %34

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @BUS_ADD_CHILD(i32 %32, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %34

34:                                               ; preds = %30, %31, %14, %9, %2
  ret void
}

declare dso_local i64 @ipmi_smbios_identify(%struct.ipmi_get_info*) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32* @ipmi_pci_match(i32, i32) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
