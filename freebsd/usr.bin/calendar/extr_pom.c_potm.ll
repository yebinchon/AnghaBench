; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_potm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_potm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPSILONg = common dso_local global double 0.000000e+00, align 8
@RHOg = common dso_local global double 0.000000e+00, align 8
@PI = common dso_local global i32 0, align 4
@ECCEN = common dso_local global i32 0, align 4
@lzero = common dso_local global double 0.000000e+00, align 8
@Pzero = common dso_local global double 0.000000e+00, align 8
@Nzero = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @potm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @potm(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %2, align 8
  %19 = load double, double* %2, align 8
  %20 = fmul double 3.600000e+02, %19
  %21 = fdiv double %20, 0x4076D3E00D1B7176
  store double %21, double* %3, align 8
  %22 = call i32 @adj360(double* %3)
  %23 = load double, double* %3, align 8
  %24 = load double, double* @EPSILONg, align 8
  %25 = fadd double %23, %24
  %26 = load double, double* @RHOg, align 8
  %27 = fsub double %25, %26
  store double %27, double* %4, align 8
  %28 = call i32 @adj360(double* %4)
  %29 = load i32, i32* @PI, align 4
  %30 = sdiv i32 360, %29
  %31 = load i32, i32* @ECCEN, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sitofp i32 %32 to double
  %34 = load double, double* %4, align 8
  %35 = call i32 @dtor(double %34)
  %36 = call double @sin(i32 %35)
  %37 = fmul double %33, %36
  store double %37, double* %5, align 8
  %38 = load double, double* %3, align 8
  %39 = load double, double* %5, align 8
  %40 = fadd double %38, %39
  %41 = load double, double* @EPSILONg, align 8
  %42 = fadd double %40, %41
  store double %42, double* %6, align 8
  %43 = call i32 @adj360(double* %6)
  %44 = load double, double* %2, align 8
  %45 = fmul double 0x402A5A50A7B8404E, %44
  %46 = load double, double* @lzero, align 8
  %47 = fadd double %45, %46
  store double %47, double* %7, align 8
  %48 = call i32 @adj360(double* %7)
  %49 = load double, double* %7, align 8
  %50 = load double, double* %2, align 8
  %51 = fmul double 0x3FBC84FAA623EB98, %50
  %52 = fsub double %49, %51
  %53 = load double, double* @Pzero, align 8
  %54 = fsub double %52, %53
  store double %54, double* %8, align 8
  %55 = call i32 @adj360(double* %8)
  %56 = load double, double* @Nzero, align 8
  %57 = load double, double* %2, align 8
  %58 = fmul double 5.295390e-02, %57
  %59 = fsub double %56, %58
  store double %59, double* %18, align 8
  %60 = call i32 @adj360(double* %18)
  %61 = load double, double* %7, align 8
  %62 = load double, double* %6, align 8
  %63 = fsub double %61, %62
  %64 = fmul double 2.000000e+00, %63
  %65 = load double, double* %8, align 8
  %66 = fsub double %64, %65
  %67 = call i32 @dtor(double %66)
  %68 = call double @sin(i32 %67)
  %69 = fmul double 1.273900e+00, %68
  store double %69, double* %9, align 8
  %70 = load double, double* %4, align 8
  %71 = call i32 @dtor(double %70)
  %72 = call double @sin(i32 %71)
  %73 = fmul double 1.858000e-01, %72
  store double %73, double* %10, align 8
  %74 = load double, double* %4, align 8
  %75 = call i32 @dtor(double %74)
  %76 = call double @sin(i32 %75)
  %77 = fmul double 3.700000e-01, %76
  store double %77, double* %11, align 8
  %78 = load double, double* %8, align 8
  %79 = load double, double* %9, align 8
  %80 = fadd double %78, %79
  %81 = load double, double* %10, align 8
  %82 = fsub double %80, %81
  %83 = load double, double* %11, align 8
  %84 = fsub double %82, %83
  store double %84, double* %12, align 8
  %85 = load double, double* %12, align 8
  %86 = call i32 @dtor(double %85)
  %87 = call double @sin(i32 %86)
  %88 = fmul double 6.288600e+00, %87
  store double %88, double* %5, align 8
  %89 = load double, double* %12, align 8
  %90 = fmul double 2.000000e+00, %89
  %91 = call i32 @dtor(double %90)
  %92 = call double @sin(i32 %91)
  %93 = fmul double 2.140000e-01, %92
  store double %93, double* %13, align 8
  %94 = load double, double* %7, align 8
  %95 = load double, double* %9, align 8
  %96 = fadd double %94, %95
  %97 = load double, double* %5, align 8
  %98 = fadd double %96, %97
  %99 = load double, double* %10, align 8
  %100 = fsub double %98, %99
  %101 = load double, double* %13, align 8
  %102 = fadd double %100, %101
  store double %102, double* %14, align 8
  %103 = load double, double* %14, align 8
  %104 = load double, double* %6, align 8
  %105 = fsub double %103, %104
  %106 = fmul double 2.000000e+00, %105
  %107 = call i32 @dtor(double %106)
  %108 = call double @sin(i32 %107)
  %109 = fmul double 6.583000e-01, %108
  store double %109, double* %15, align 8
  %110 = load double, double* %14, align 8
  %111 = load double, double* %15, align 8
  %112 = fadd double %110, %111
  store double %112, double* %16, align 8
  %113 = load double, double* %16, align 8
  %114 = load double, double* %6, align 8
  %115 = fsub double %113, %114
  store double %115, double* %17, align 8
  %116 = load double, double* %17, align 8
  %117 = call i32 @dtor(double %116)
  %118 = call i32 @cos(i32 %117)
  %119 = sub nsw i32 1, %118
  %120 = mul nsw i32 50, %119
  %121 = sitofp i32 %120 to double
  ret double %121
}

declare dso_local i32 @adj360(double*) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @dtor(double) #1

declare dso_local i32 @cos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
