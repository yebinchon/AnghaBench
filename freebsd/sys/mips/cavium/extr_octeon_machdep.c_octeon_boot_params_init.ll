; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_boot_params_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_boot_params_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i64 }

@MAX_APP_DESC_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"app descriptor passed at invalid address %#jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Your boot code is too old to be supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not parse boot descriptor.\0A\00", align 1
@CVMX_BOARD_TYPE_EBT3000 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"FBSD\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"FreeBSD!\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Your boot loader did not supply a memory descriptor.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @octeon_boot_params_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_boot_params_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @MAX_APP_DESC_ADDR, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %1
  %12 = load i64, i64* %2, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i8*, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @platform_reset()
  br label %16

16:                                               ; preds = %11, %7
  %17 = load i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @platform_reset()
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = call i32* @octeon_process_app_desc_ver_6(%struct.TYPE_4__* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 (...) @platform_reset()
  br label %34

34:                                               ; preds = %31, %26
  %35 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CVMX_BOARD_TYPE_EBT3000, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @ebt3000_str_write(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %54

52:                                               ; preds = %45, %39
  %53 = call i32 @ebt3000_str_write(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %34
  %56 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i32 (...) @platform_reset()
  br label %63

63:                                               ; preds = %60, %55
  %64 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cvmx_bootmem_init(i64 %66)
  %68 = call i32 (...) @octeon_feature_init()
  %69 = call i32 (...) @__cvmx_helper_cfg_init()
  ret void
}

declare dso_local i32 @cvmx_safe_printf(i8*, ...) #1

declare dso_local i32 @platform_reset(...) #1

declare dso_local i32* @octeon_process_app_desc_ver_6(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @ebt3000_str_write(i8*) #1

declare dso_local i32 @cvmx_bootmem_init(i64) #1

declare dso_local i32 @octeon_feature_init(...) #1

declare dso_local i32 @__cvmx_helper_cfg_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
