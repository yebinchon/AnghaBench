; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_ht.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"HT \00", align 1
@PCIM_HTCAP_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@PCIM_HTCAP_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@PCIM_HTCMD_CAP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"revision ID\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unit ID clumping\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"extended config space\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"address mapping\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"MSI %saddress window %s at 0x\00", align 1
@PCIM_HTCMD_MSI_FIXED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"fixed \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PCIM_HTCMD_MSI_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fee00000\00", align 1
@PCIR_HTMSI_ADDRESS_HI = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@PCIR_HTMSI_ADDRESS_LO = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"direct route\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"VC set\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"retry mode\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"X86 encoding\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Gen3\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"function-level extension\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"power management\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"high node count\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"unknown %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64)* @cap_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_ht(i32 %0, %struct.pci_conf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %11 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @read_config(i32 %9, i32* %11, i64 %14, i32 2)
  store i32 %15, i32* %8, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 57344
  %19 = load i32, i32* @PCIM_HTCAP_SLAVE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %111

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 57344
  %26 = load i32, i32* @PCIM_HTCAP_HOST, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %110

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PCIM_HTCMD_CAP_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %106 [
    i32 131, label %34
    i32 136, label %36
    i32 132, label %38
    i32 130, label %40
    i32 140, label %42
    i32 142, label %44
    i32 135, label %46
    i32 141, label %90
    i32 129, label %92
    i32 133, label %94
    i32 128, label %96
    i32 138, label %98
    i32 139, label %100
    i32 134, label %102
    i32 137, label %104
  ]

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %109

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %109

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %109

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %109

42:                                               ; preds = %30
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %109

44:                                               ; preds = %30
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %109

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PCIM_HTCMD_MSI_FIXED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PCIM_HTCMD_MSI_ENABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %52, i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PCIM_HTCMD_MSI_FIXED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %89

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %69 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @PCIR_HTMSI_ADDRESS_HI, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @read_config(i32 %67, i32* %69, i64 %72, i32 4)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %66
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %82 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %81, i32 0, i32 0
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @PCIR_HTMSI_ADDRESS_LO, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @read_config(i32 %80, i32* %82, i64 %85, i32 4)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %79, %64
  br label %109

90:                                               ; preds = %30
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %109

92:                                               ; preds = %30
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %109

94:                                               ; preds = %30
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  br label %109

96:                                               ; preds = %30
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %109

98:                                               ; preds = %30
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %109

100:                                              ; preds = %30
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  br label %109

102:                                              ; preds = %30
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %109

104:                                              ; preds = %30
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  br label %109

106:                                              ; preds = %30
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %104, %102, %100, %98, %96, %94, %92, %90, %89, %44, %42, %40, %38, %36, %34
  br label %110

110:                                              ; preds = %109, %28
  br label %111

111:                                              ; preds = %110, %21
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
