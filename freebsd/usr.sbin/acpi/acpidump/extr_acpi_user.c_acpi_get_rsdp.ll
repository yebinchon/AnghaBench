; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_get_rsdp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_get_rsdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }

@acpi_mem_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1
@ACPI_RSDP_CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@ACPI_RSDP_XCHECKSUM_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32)* @acpi_get_rsdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @acpi_get_rsdp(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @acpi_mem_fd, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pread(i32 %6, %struct.TYPE_6__* %4, i32 8, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @memcmp(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @acpi_mem_fd, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pread(i32 %15, %struct.TYPE_6__* %4, i32 24, i32 %16)
  %18 = load i32, i32* @ACPI_RSDP_CHECKSUM_LENGTH, align 4
  %19 = call i64 @acpi_checksum(%struct.TYPE_6__* %4, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %43

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @ACPI_RSDP_XCHECKSUM_LENGTH, align 4
  %28 = call i64 @acpi_checksum(%struct.TYPE_6__* %4, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %43

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 4, i64* %5, align 8
  br label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.TYPE_6__* @acpi_map_physical(i32 %40, i64 %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %2, align 8
  br label %43

43:                                               ; preds = %39, %30, %21, %13
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %44
}

declare dso_local i32 @pread(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @acpi_checksum(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @acpi_map_physical(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
