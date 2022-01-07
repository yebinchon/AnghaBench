; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIrsdp = type { i32, i32, i32 }
%struct.ACPIsdt = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"no acpi0 device located\00", align 1
@machdep_acpi_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot find ACPI information\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"cannot find ACPI information: sysctl %s does not point to RSDP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RSDT\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"RSDT is corrupted\00", align 1
@addr_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"XSDT\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"XSDT is corrupted\00", align 1
@ncpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ACPIrsdp*, align 8
  %3 = alloca %struct.ACPIsdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 (...) @acpi0_present()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %82

10:                                               ; preds = %0
  %11 = call i32 (...) @acpi_user_init()
  store i64 4, i64* %5, align 8
  %12 = load i32, i32* @machdep_acpi_root, align 4
  %13 = call i64 @sysctlbyname(i32 %12, i32* %4, i64* %5, i32* null, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %82

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.ACPIrsdp* @acpi_get_rsdp(i32 %18)
  store %struct.ACPIrsdp* %19, %struct.ACPIrsdp** %2, align 8
  %20 = load %struct.ACPIrsdp*, %struct.ACPIrsdp** %2, align 8
  %21 = icmp eq %struct.ACPIrsdp* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @machdep_acpi_root, align 4
  %24 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %1, align 4
  br label %82

25:                                               ; preds = %17
  %26 = load %struct.ACPIrsdp*, %struct.ACPIrsdp** %2, align 8
  %27 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.ACPIrsdp*, %struct.ACPIrsdp** %2, align 8
  %32 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @acpi_map_sdt(i32 %33)
  %35 = inttoptr i64 %34 to %struct.ACPIsdt*
  store %struct.ACPIsdt* %35, %struct.ACPIsdt** %3, align 8
  %36 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %37 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @memcmp(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  %42 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %43 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %44 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @acpi_checksum(%struct.ACPIsdt* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %30
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  store i32 4, i32* @addr_size, align 4
  br label %72

51:                                               ; preds = %25
  %52 = load %struct.ACPIrsdp*, %struct.ACPIrsdp** %2, align 8
  %53 = getelementptr inbounds %struct.ACPIrsdp, %struct.ACPIrsdp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @acpi_map_sdt(i32 %54)
  %56 = inttoptr i64 %55 to %struct.ACPIsdt*
  store %struct.ACPIsdt* %56, %struct.ACPIsdt** %3, align 8
  %57 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %58 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @memcmp(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  %63 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %64 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %65 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @acpi_checksum(%struct.ACPIsdt* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %51
  %70 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  store i32 4, i32* @addr_size, align 4
  br label %72

72:                                               ; preds = %71, %50
  store i32 0, i32* @ncpu, align 4
  %73 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %74 = call i32 @acpi_handle_rsdt(%struct.ACPIsdt* %73)
  %75 = load i32, i32* @ncpu, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @ncpu, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 1, %77 ], [ %79, %78 ]
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %80, %22, %15, %8
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @acpi0_present(...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @acpi_user_init(...) #1

declare dso_local i64 @sysctlbyname(i32, i32*, i64*, i32*, i32) #1

declare dso_local %struct.ACPIrsdp* @acpi_get_rsdp(i32) #1

declare dso_local i64 @acpi_map_sdt(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @acpi_checksum(%struct.ACPIsdt*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @acpi_handle_rsdt(%struct.ACPIsdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
