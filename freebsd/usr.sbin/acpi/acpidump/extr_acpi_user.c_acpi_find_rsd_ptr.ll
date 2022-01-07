; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_find_rsd_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_find_rsd_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_GET = common dso_local global i32 0, align 4
@hint_acpi_0_rsdp = common dso_local global i32 0, align 4
@machdep_acpi_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @acpi_find_rsd_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (...) @acpi_user_init()
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @KENV_GET, align 4
  %8 = load i32, i32* @hint_acpi_0_rsdp, align 4
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %10 = call i64 @kenv(i32 %7, i32 %8, i8* %9, i32 20)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %14 = call i64 @strtoul(i8* %13, i32* null, i32 0)
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  store i64 8, i64* %5, align 8
  %19 = load i32, i32* @machdep_acpi_root, align 4
  %20 = call i64 @sysctlbyname(i32 %19, i64* %4, i64* %5, i32* null, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i32* @acpi_get_rsdp(i64 %28)
  store i32* %29, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  store i32* %32, i32** %1, align 8
  br label %35

33:                                               ; preds = %27, %24
  %34 = call i32* (...) @acpi_scan_rsd_ptr()
  store i32* %34, i32** %1, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i32 @acpi_user_init(...) #1

declare dso_local i64 @kenv(i32, i32, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @sysctlbyname(i32, i64*, i64*, i32*, i32) #1

declare dso_local i32* @acpi_get_rsdp(i64) #1

declare dso_local i32* @acpi_scan_rsd_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
