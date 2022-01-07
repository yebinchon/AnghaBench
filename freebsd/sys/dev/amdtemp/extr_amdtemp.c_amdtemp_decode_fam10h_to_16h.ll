; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_decode_fam10h_to_16h.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_decode_fam10h_to_16h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMDTEMP_REPTMP10H_CURTMP_SHIFT = common dso_local global i32 0, align 4
@AMDTEMP_REPTMP10H_CURTMP_MASK = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@AMDTEMP_REPTMP10H_TJSEL_SHIFT = common dso_local global i32 0, align 4
@AMDTEMP_REPTMP10H_TJSEL_MASK = common dso_local global i32 0, align 4
@AMDTEMP_CURTMP_RANGE_ADJUST = common dso_local global i64 0, align 8
@AMDTEMP_ZERO_C_TO_K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @amdtemp_decode_fam10h_to_16h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_decode_fam10h_to_16h(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AMDTEMP_REPTMP10H_CURTMP_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @AMDTEMP_REPTMP10H_CURTMP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = mul nsw i32 %10, 5
  %12 = sdiv i32 %11, 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @cpu_id, align 4
  %14 = call i32 @CPUID_TO_FAMILY(i32 %13)
  %15 = icmp sge i32 %14, 21
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AMDTEMP_REPTMP10H_TJSEL_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @AMDTEMP_REPTMP10H_TJSEL_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i64, i64* @AMDTEMP_CURTMP_RANGE_ADJUST, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %16, %2
  %30 = load i64, i64* @AMDTEMP_ZERO_C_TO_K, align 8
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 %31, 10
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
