; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_scan_rsd_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_scan_rsd_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_EBDA_PTR_LOCATION = common dso_local global i32 0, align 4
@acpi_mem_fd = common dso_local global i32 0, align 4
@ACPI_EBDA_WINDOW_SIZE = common dso_local global i32 0, align 4
@ACPI_HI_RSDP_WINDOW_BASE = common dso_local global i32 0, align 4
@ACPI_HI_RSDP_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @acpi_scan_rsd_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @acpi_scan_rsd_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ACPI_EBDA_PTR_LOCATION, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @acpi_mem_fd, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pread(i32 %6, i32* %3, i32 4, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %25, %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32* @acpi_get_rsdp(i32 %19)
  store i32* %20, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  store i32* %23, i32** %1, align 8
  br label %48

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 16
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* @ACPI_HI_RSDP_WINDOW_BASE, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %44, %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = call i32* @acpi_get_rsdp(i32 %38)
  store i32* %39, i32** %2, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %2, align 8
  store i32* %42, i32** %1, align 8
  br label %48

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 16
  store i32 %46, i32* %3, align 4
  br label %33

47:                                               ; preds = %33
  store i32* null, i32** %1, align 8
  br label %48

48:                                               ; preds = %47, %41, %22
  %49 = load i32*, i32** %1, align 8
  ret i32* %49
}

declare dso_local i32 @pread(i32, i32*, i32, i32) #1

declare dso_local i32* @acpi_get_rsdp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
