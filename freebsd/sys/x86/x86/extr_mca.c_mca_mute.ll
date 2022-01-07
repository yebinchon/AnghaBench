; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_mute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_record = type { i64, i32 }

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@intel6h_HSD131 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mca_record*)* @mca_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_mute(%struct.mca_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mca_record*, align 8
  store %struct.mca_record* %0, %struct.mca_record** %3, align 8
  %4 = load i64, i64* @cpu_vendor_id, align 8
  %5 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load i32, i32* @cpu_id, align 4
  %9 = call i32 @CPUID_TO_FAMILY(i32 %8)
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = load i32, i32* @cpu_id, align 4
  %13 = call i32 @CPUID_TO_MODEL(i32 %12)
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @cpu_id, align 4
  %17 = call i32 @CPUID_TO_MODEL(i32 %16)
  %18 = icmp eq i32 %17, 61
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @cpu_id, align 4
  %21 = call i32 @CPUID_TO_MODEL(i32 %20)
  %22 = icmp eq i32 %21, 69
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @cpu_id, align 4
  %25 = call i32 @CPUID_TO_MODEL(i32 %24)
  %26 = icmp eq i32 %25, 70
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %19, %15, %11
  %28 = load %struct.mca_record*, %struct.mca_record** %3, align 8
  %29 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.mca_record*, %struct.mca_record** %3, align 8
  %34 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, -6917529023346114561
  %38 = icmp eq i64 %37, -9223372036853792763
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @intel6h_HSD131, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %39, %32, %27, %23, %7, %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
