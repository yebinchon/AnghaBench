; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_tm = type { i32 }
%struct.efi_tmcap = type { i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_get_time(%struct.efi_tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efi_tm*, align 8
  %4 = alloca %struct.efi_tmcap, align 4
  %5 = alloca i32, align 4
  store %struct.efi_tm* %0, %struct.efi_tm** %3, align 8
  %6 = load i32*, i32** @efi_runtime, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = call i32 (...) @EFI_TIME_LOCK()
  %12 = load %struct.efi_tm*, %struct.efi_tm** %3, align 8
  %13 = call i32 @efi_get_time_locked(%struct.efi_tm* %12, %struct.efi_tmcap* %4)
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @EFI_TIME_UNLOCK()
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @EFI_TIME_LOCK(...) #1

declare dso_local i32 @efi_get_time_locked(%struct.efi_tm*, %struct.efi_tmcap*) #1

declare dso_local i32 @EFI_TIME_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
