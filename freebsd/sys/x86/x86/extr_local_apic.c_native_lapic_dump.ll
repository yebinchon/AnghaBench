; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_lapic_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_lapic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAPIC_VERSION = common dso_local global i64 0, align 8
@APIC_VER_MAXLVT = common dso_local global i32 0, align 4
@MAXLVTSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cpu%d %s:\0A\00", align 1
@cpuid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"     ID: 0x%08x   VER: 0x%08x LDR: 0x%08x DFR: 0x%08x\00", align 1
@LAPIC_ID = common dso_local global i64 0, align 8
@LAPIC_LDR = common dso_local global i64 0, align 8
@x2apic_mode = common dso_local global i32 0, align 4
@LAPIC_DFR = common dso_local global i64 0, align 8
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_X2APIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" x2APIC: %d\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"\0A  lint0: 0x%08x lint1: 0x%08x TPR: 0x%08x SVR: 0x%08x\0A\00", align 1
@LAPIC_LVT_LINT0 = common dso_local global i64 0, align 8
@LAPIC_LVT_LINT1 = common dso_local global i64 0, align 8
@LAPIC_TPR = common dso_local global i64 0, align 8
@LAPIC_SVR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"  timer: 0x%08x therm: 0x%08x err: 0x%08x\00", align 1
@LAPIC_LVT_TIMER = common dso_local global i64 0, align 8
@LAPIC_LVT_THERMAL = common dso_local global i64 0, align 8
@LAPIC_LVT_ERROR = common dso_local global i64 0, align 8
@APIC_LVT_PMC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" pmc: 0x%08x\00", align 1
@LAPIC_LVT_PCINT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@APIC_LVT_CMCI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"   cmci: 0x%08x\0A\00", align 1
@LAPIC_LVT_CMCI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"   AMD ext features: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"   AMD elvt%d: 0x%08x\0A\00", align 1
@LAPIC_EXT_LVT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @native_lapic_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_lapic_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @LAPIC_VERSION, align 8
  %9 = call i32 @lapic_read32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @APIC_VER_MAXLVT, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MAXLVTSHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i32 @PCPU_GET(i32 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  %19 = load i64, i64* @LAPIC_ID, align 8
  %20 = call i32 @lapic_read32(i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @LAPIC_LDR, align 8
  %23 = call i32 @lapic_read32(i64 %22)
  %24 = load i32, i32* @x2apic_mode, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %30

27:                                               ; preds = %1
  %28 = load i64, i64* @LAPIC_DFR, align 8
  %29 = call i32 @lapic_read32(i64 %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %27 ]
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 %23, i32 %31)
  %33 = load i32, i32* @cpu_feature2, align 4
  %34 = load i32, i32* @CPUID2_X2APIC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @x2apic_mode, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i64, i64* @LAPIC_LVT_LINT0, align 8
  %42 = call i32 @lapic_read32(i64 %41)
  %43 = load i64, i64* @LAPIC_LVT_LINT1, align 8
  %44 = call i32 @lapic_read32(i64 %43)
  %45 = load i64, i64* @LAPIC_TPR, align 8
  %46 = call i32 @lapic_read32(i64 %45)
  %47 = load i64, i64* @LAPIC_SVR, align 8
  %48 = call i32 @lapic_read32(i64 %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44, i32 %46, i32 %48)
  %50 = load i64, i64* @LAPIC_LVT_TIMER, align 8
  %51 = call i32 @lapic_read32(i64 %50)
  %52 = load i64, i64* @LAPIC_LVT_THERMAL, align 8
  %53 = call i32 @lapic_read32(i64 %52)
  %54 = load i64, i64* @LAPIC_LVT_ERROR, align 8
  %55 = call i32 @lapic_read32(i64 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %53, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @APIC_LVT_PMC, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %40
  %61 = load i64, i64* @LAPIC_LVT_PCINT, align 8
  %62 = call i32 @lapic_read32(i64 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %40
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @APIC_LVT_CMCI, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @LAPIC_LVT_CMCI, align 8
  %71 = call i32 @lapic_read32(i64 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = call i32 (...) @amd_read_ext_features()
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = call i32 (...) @amd_read_elvt_count()
  store i32 %80, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %93, %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* @LAPIC_EXT_LVT0, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @lapic_read32(i64 %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %81

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %73
  ret void
}

declare dso_local i32 @lapic_read32(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @amd_read_ext_features(...) #1

declare dso_local i32 @amd_read_elvt_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
