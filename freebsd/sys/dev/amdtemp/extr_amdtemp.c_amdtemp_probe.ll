; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"amdtemp\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@CPUID_STEPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"AMD CPU On-Die Thermal Sensors\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdtemp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i64 @resource_disabled(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i32 @amdtemp_match(i32 %12, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %10
  %18 = load i32, i32* @cpu_id, align 4
  %19 = call i32 @CPUID_TO_FAMILY(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @cpu_id, align 4
  %21 = call i32 @CPUID_TO_MODEL(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %43 [
    i32 15, label %23
    i32 16, label %42
    i32 17, label %42
    i32 18, label %42
    i32 20, label %42
    i32 21, label %42
    i32 22, label %42
    i32 23, label %42
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @cpu_id, align 4
  %28 = load i32, i32* @CPUID_STEPPING, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @cpu_id, align 4
  %36 = load i32, i32* @CPUID_STEPPING, align 4
  %37 = and i32 %35, %36
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %34, %31
  br label %45

42:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  br label %45

43:                                               ; preds = %17
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_set_desc(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %43, %39, %15, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @amdtemp_match(i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
