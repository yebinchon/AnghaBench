; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_6xx_print_cacheinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_6xx_print_cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_HID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpu%u: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"L1 I-cache %sabled, \00", align 1
@HID0_ICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"L1 D-cache %sabled\0A\00", align 1
@HID0_DCE = common dso_local global i32 0, align 4
@SPR_L2CR = common dso_local global i32 0, align 4
@L2CR_L2E = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"256KB L2 cache, \00", align 1
@SPR_L3CR = common dso_local global i32 0, align 4
@L3CR_L3E = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%cMB L3 backside cache\00", align 1
@L3CR_L3SIZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"L3 cache disabled\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"512KB L2 cache\0A\00", align 1
@L2CR_L2SIZ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"256KB \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"512KB \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1MB \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"write-%s\00", align 1
@L2CR_L2WT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"through\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@L2CR_L2PE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c", with parity\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c" backside cache\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"L2 cache disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cpu_6xx_print_cacheinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_6xx_print_cacheinfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SPR_HID0, align 4
  %7 = call i32 @mfspr(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HID0_ICE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HID0_DCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @SPR_L2CR, align 4
  %27 = call i32 @mfspr(i32 %26)
  %28 = load i32, i32* @L2CR_L2E, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %55 [
    i32 130, label %33
    i32 129, label %33
    i32 128, label %33
    i32 134, label %53
  ]

33:                                               ; preds = %31, %31, %31
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i32, i32* @SPR_L3CR, align 4
  %36 = call i32 @mfspr(i32 %35)
  %37 = load i32, i32* @L3CR_L3E, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @SPR_L3CR, align 4
  %42 = call i32 @mfspr(i32 %41)
  %43 = load i32, i32* @L3CR_L3SIZ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 50, i32 49
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  br label %51

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %84

53:                                               ; preds = %31
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %84

55:                                               ; preds = %31
  %56 = load i32, i32* @SPR_L2CR, align 4
  %57 = call i32 @mfspr(i32 %56)
  %58 = load i32, i32* @L2CR_L2SIZ, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %66 [
    i32 132, label %60
    i32 131, label %62
    i32 133, label %64
  ]

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %66

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %66

64:                                               ; preds = %55
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %66

66:                                               ; preds = %55, %64, %62, %60
  %67 = load i32, i32* @SPR_L2CR, align 4
  %68 = call i32 @mfspr(i32 %67)
  %69 = load i32, i32* @L2CR_L2WT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @SPR_L2CR, align 4
  %76 = call i32 @mfspr(i32 %75)
  %77 = load i32, i32* @L2CR_L2PE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %66
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %53, %51
  br label %87

85:                                               ; preds = %2
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %84
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
