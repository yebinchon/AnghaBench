; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_hypervisor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_HV = common dso_local global i32 0, align 4
@VM_GUEST_VM = common dso_local global i64 0, align 8
@vm_guest = common dso_local global i64 0, align 8
@hv_vendor = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"smbios.system.serial\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"VMware-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VMW\00", align 1
@VMW_HVCMD_GETVERSION = common dso_local global i32 0, align 4
@VMW_HVMAGIC = common dso_local global i64 0, align 8
@VM_GUEST_VMWARE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"smbios.bios.vendor\00", align 1
@vm_bnames = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"smbios.system.product\00", align 1
@vm_pnames = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @identify_hypervisor() #0 {
  %1 = alloca [4 x i64], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpu_feature2, align 4
  %5 = load i32, i32* @CPUID2_HV, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = load i64, i64* @VM_GUEST_VM, align 8
  store i64 %9, i64* @vm_guest, align 8
  %10 = call i32 (...) @identify_hypervisor_cpuid_base()
  %11 = load i8*, i8** @hv_vendor, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %122

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i8* @kern_getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @VMW_HVCMD_GETVERSION, align 4
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 0
  %32 = call i32 @vmware_hvcall(i32 %30, i64* %31)
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VMW_HVMAGIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @VM_GUEST_VMWARE, align 8
  store i64 %38, i64* @vm_guest, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @freeenv(i8* %39)
  br label %122

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @freeenv(i8* %43)
  br label %45

45:                                               ; preds = %42, %17
  %46 = call i8* @kern_getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i8* %46, i8** %2, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %80, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_bnames, align 8
  %53 = call i32 @nitems(%struct.TYPE_4__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load i8*, i8** %2, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_bnames, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strcmp(i8* %56, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_bnames, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @vm_guest, align 8
  %72 = load i64, i64* @vm_guest, align 8
  %73 = load i64, i64* @VM_GUEST_VM, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @freeenv(i8* %76)
  br label %122

78:                                               ; preds = %65
  br label %83

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %50

83:                                               ; preds = %78, %50
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @freeenv(i8* %84)
  br label %86

86:                                               ; preds = %83, %45
  %87 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i8* %87, i8** %2, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pnames, align 8
  %94 = call i32 @nitems(%struct.TYPE_4__* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load i8*, i8** %2, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pnames, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @strcmp(i8* %97, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pnames, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* @vm_guest, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = call i32 @freeenv(i8* %113)
  br label %122

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %91

119:                                              ; preds = %91
  %120 = load i8*, i8** %2, align 8
  %121 = call i32 @freeenv(i8* %120)
  br label %122

122:                                              ; preds = %15, %37, %75, %106, %119, %86
  ret void
}

declare dso_local i32 @identify_hypervisor_cpuid_base(...) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @vmware_hvcall(i32, i64*) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
