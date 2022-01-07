; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TPM_INTF_CAPABILITIES = common dso_local global i32 0, align 4
@TPM_CAPSREQ = common dso_local global i32 0, align 4
@TPM_INTF_INT_EDGE_RISING = common dso_local global i32 0, align 4
@TPM_INTF_INT_LEVEL_LOW = common dso_local global i32 0, align 4
@TPM_ACCESS = common dso_local global i32 0, align 4
@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@TPM_ACCESS_ACTIVE_LOCALITY = common dso_local global i32 0, align 4
@TPM_ID = common dso_local global i32 0, align 4
@TPM_CAPBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_tis12_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TPM_INTF_CAPABILITIES, align 4
  %12 = call i32 @bus_space_read_4(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TPM_CAPSREQ, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @TPM_CAPSREQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TPM_INTF_INT_EDGE_RISING, align 4
  %25 = load i32, i32* @TPM_INTF_INT_LEVEL_LOW, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %16
  store i32 0, i32* %3, align 4
  br label %66

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TPM_ACCESS, align 4
  %34 = call i32 @bus_space_read_1(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TPM_ACCESS, align 4
  %38 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  %39 = call i32 @bus_space_write_1(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TPM_ACCESS, align 4
  %43 = call i32 @bus_space_read_1(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TPM_ID, align 4
  %57 = call i32 @bus_space_read_4(i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %66

60:                                               ; preds = %53, %48, %30
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @TPM_ACCESS, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bus_space_write_1(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %59, %29, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
