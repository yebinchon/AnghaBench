; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ecap_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ecap_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"VC %d\00", align 1
@PCIR_VC_CAP1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" max VC%d\00", align 1
@PCIM_VC_CAP1_EXT_COUNT = common dso_local global i32 0, align 4
@PCIM_VC_CAP1_LOWPRI_EXT_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c" lowpri VC0-VC%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64, i32)* @ecap_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecap_vc(i32 %0, %struct.pci_conf* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %39

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %18 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PCIR_VC_CAP1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @read_config(i32 %16, i32* %18, i64 %21, i32 4)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCIM_VC_CAP1_EXT_COUNT, align 4
  %25 = and i32 %23, %24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PCIM_VC_CAP1_LOWPRI_EXT_COUNT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PCIM_VC_CAP1_LOWPRI_EXT_COUNT, align 4
  %34 = and i32 %32, %33
  %35 = ashr i32 %34, 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %15
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
