; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_check_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.mca_record = type { i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i8*, i8* }

@mca_msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MC_STATUS_VAL = common dso_local global i32 0, align 4
@MC_STATUS_ADDRV = common dso_local global i32 0, align 4
@MC_STATUS_MISCV = common dso_local global i32 0, align 4
@apic_id = common dso_local global i32 0, align 4
@MSR_MCG_CAP = common dso_local global i32 0, align 4
@MSR_MCG_STATUS = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@MC_STATUS_PCC = common dso_local global i32 0, align 4
@MC_STATUS_UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mca_record*)* @mca_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_check_status(i32 %0, %struct.mca_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mca_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.mca_record* %1, %struct.mca_record** %5, align 8
  %8 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 %8(i32 %9)
  %11 = call i8* @rdmsr(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MC_STATUS_VAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %21 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %24 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %26 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %25, i32 0, i32 10
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MC_STATUS_ADDRV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 2), align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %32(i32 %33)
  %35 = call i8* @rdmsr(i32 %34)
  %36 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %37 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %18
  %39 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %40 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %39, i32 0, i32 9
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MC_STATUS_MISCV, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 1), align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %46(i32 %47)
  %49 = call i8* @rdmsr(i32 %48)
  %50 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %51 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %38
  %53 = call i32 (...) @rdtsc()
  %54 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %55 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @apic_id, align 4
  %57 = call i8* @PCPU_GET(i32 %56)
  %58 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %59 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @MSR_MCG_CAP, align 4
  %61 = call i8* @rdmsr(i32 %60)
  %62 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %63 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @MSR_MCG_STATUS, align 4
  %65 = call i8* @rdmsr(i32 %64)
  %66 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %67 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @cpu_id, align 4
  %69 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %70 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @cpu_vendor_id, align 4
  %72 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %73 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @cpuid, align 4
  %75 = call i8* @PCPU_GET(i32 %74)
  %76 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %77 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.mca_record*, %struct.mca_record** %5, align 8
  %79 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MC_STATUS_PCC, align 4
  %82 = load i32, i32* @MC_STATUS_UC, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %52
  %87 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 %87(i32 %88)
  %90 = call i32 @wrmsr(i32 %89, i32 0)
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %92 = call i32 @do_cpuid(i32 0, i32* %91)
  br label %93

93:                                               ; preds = %86, %52
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @rdmsr(i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i8* @PCPU_GET(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
