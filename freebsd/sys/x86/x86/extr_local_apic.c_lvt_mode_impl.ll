; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lvt_mode_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lvt_mode_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32 }
%struct.lvt = type { i64, i64, i32, i32, i64 }

@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_LVT_TM = common dso_local global i32 0, align 4
@APIC_LVT_IIPP = common dso_local global i32 0, align 4
@APIC_LVT_DM = common dso_local global i32 0, align 4
@APIC_LVT_VECTOR = common dso_local global i32 0, align 4
@APIC_LVT_IIPP_INTALO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lapic%u: Forcing LINT%u to edge trigger\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad APIC LVT delivery mode: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lapic*, %struct.lvt*, i32, i32)* @lvt_mode_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvt_mode_impl(%struct.lapic* %0, %struct.lvt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lapic*, align 8
  %6 = alloca %struct.lvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lapic* %0, %struct.lapic** %5, align 8
  store %struct.lvt* %1, %struct.lvt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @APIC_LVT_M, align 4
  %10 = load i32, i32* @APIC_LVT_TM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @APIC_LVT_IIPP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @APIC_LVT_DM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @APIC_LVT_VECTOR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load %struct.lvt*, %struct.lvt** %6, align 8
  %22 = getelementptr inbounds %struct.lvt, %struct.lvt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @APIC_LVT_TM, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %4
  %30 = load %struct.lvt*, %struct.lvt** %6, align 8
  %31 = getelementptr inbounds %struct.lvt, %struct.lvt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @APIC_LVT_IIPP_INTALO, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.lvt*, %struct.lvt** %6, align 8
  %40 = getelementptr inbounds %struct.lvt, %struct.lvt* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @APIC_LVT_M, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.lvt*, %struct.lvt** %6, align 8
  %49 = getelementptr inbounds %struct.lvt, %struct.lvt* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.lvt*, %struct.lvt** %6, align 8
  %54 = getelementptr inbounds %struct.lvt, %struct.lvt* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %81 [
    i32 129, label %56
    i32 128, label %56
    i32 130, label %56
    i32 132, label %56
    i32 131, label %75
  ]

56:                                               ; preds = %47, %47, %47, %47
  %57 = load %struct.lvt*, %struct.lvt** %6, align 8
  %58 = getelementptr inbounds %struct.lvt, %struct.lvt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @bootverbose, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.lapic*, %struct.lapic** %5, align 8
  %66 = getelementptr inbounds %struct.lapic, %struct.lapic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @APIC_LVT_TM, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %64, %61, %56
  br label %84

75:                                               ; preds = %47
  %76 = load %struct.lvt*, %struct.lvt** %6, align 8
  %77 = getelementptr inbounds %struct.lvt, %struct.lvt* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %84

81:                                               ; preds = %47
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %75, %74
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
