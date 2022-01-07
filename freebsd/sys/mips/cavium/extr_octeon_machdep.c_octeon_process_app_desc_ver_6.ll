; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_process_app_desc_ver_6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_process_app_desc_ver_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Bad octeon_bootinfo %#jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Incompatible CVMX descriptor from bootloader: %d.%d %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*)* @octeon_process_app_desc_ver_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @octeon_process_app_desc_ver_6(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 4294967295
  br i1 %14, label %15, label %20

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %96

20:                                               ; preds = %9
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_8__* @cvmx_phys_to_ptr(i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 13
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, %struct.TYPE_8__* %37)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %96

39:                                               ; preds = %20
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cvmx_sysinfo_minimal_initialize(i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %58, i32 %61, i32 6)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32 %90, i32 %93, i32 4)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %2, align 8
  br label %96

96:                                               ; preds = %39, %29, %15
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %97
}

declare dso_local i32 @cvmx_safe_printf(i8*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @cvmx_sysinfo_minimal_initialize(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @cvmx_sysinfo_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
