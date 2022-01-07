; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_qpi.c_qpi_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_qpi.c_qpi_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"hw.attach_intel_csr_pci\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"qpi\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to add qpi bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @qpi_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpi_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @cpu_vendor_id, align 8
  %7 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @cpu_id, align 4
  %11 = call i32 @CPUID_TO_FAMILY(i32 %10)
  %12 = icmp ne i32 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %29

14:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  %15 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %29

19:                                               ; preds = %14
  %20 = call i64 (...) @pci_cfgregopen()
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @BUS_ADD_CHILD(i32 %24, i32 20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %13, %18, %22, %27, %23
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i64 @pci_cfgregopen(...) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
