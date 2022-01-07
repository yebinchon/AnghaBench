; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_record = type { i32 }

@MC_STATUS_UC = common dso_local global i32 0, align 4
@MC_STATUS_PCC = common dso_local global i32 0, align 4
@MCE = common dso_local global i32 0, align 4
@MC_STATUS_OVER = common dso_local global i32 0, align 4
@MSR_MCG_CAP = common dso_local global i32 0, align 4
@MCG_CAP_COUNT = common dso_local global i32 0, align 4
@mca_lock = common dso_local global i32 0, align 4
@CMCI = common dso_local global i32 0, align 4
@cmc_state = common dso_local global i32* null, align 8
@cmci_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @mca_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_scan(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mca_record, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %12 = load i32, i32* @MC_STATUS_UC, align 4
  %13 = load i32, i32* @MC_STATUS_PCC, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MCE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MC_STATUS_OVER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @MSR_MCG_CAP, align 4
  %24 = call i32 @rdmsr(i32 %23)
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %52, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MCG_CAP_COUNT, align 4
  %29 = and i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mca_check_status(i32 %32, %struct.mca_record* %5)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  %45 = call i32 @mtx_lock_spin(i32* @mca_lock)
  %46 = call i32 @mca_log(%struct.mca_record* %5)
  %47 = call i32 @mtx_unlock_spin(i32* @mca_lock)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mca_record_entry(i32 %49, %struct.mca_record* %5)
  br label %51

51:                                               ; preds = %48, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load i32*, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @mca_check_status(i32, %struct.mca_record*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mca_log(%struct.mca_record*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @mca_record_entry(i32, %struct.mca_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
