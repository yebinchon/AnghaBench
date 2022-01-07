; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_iorange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_iorange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_res_context = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"_CRS has fixed I/O port range defined as relocatable\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"I/O range not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64, i64, i64)* @acpi_res_set_iorange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_res_set_iorange(i32 %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.acpi_res_context*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acpi_res_context*
  store %struct.acpi_res_context* %15, %struct.acpi_res_context** %13, align 8
  %16 = load %struct.acpi_res_context*, %struct.acpi_res_context** %13, align 8
  %17 = icmp eq %struct.acpi_res_context* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %44

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load %struct.acpi_res_context*, %struct.acpi_res_context** %13, align 8
  %35 = getelementptr inbounds %struct.acpi_res_context, %struct.acpi_res_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @bus_set_resource(i32 %32, i32 %33, i32 %36, i64 %38, i64 %39)
  br label %44

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %31, %18
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
