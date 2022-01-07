; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.h_sli_eq_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.h_sli_eq_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@SLI4_EQCQ_EQ_ID_MASK_LO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sli_eq_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_eq_doorbell(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = bitcast i32* %7 to i8*
  %10 = bitcast i8* %9 to %struct.anon*
  store %struct.anon* %10, %struct.anon** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SLI4_EQCQ_EQ_ID_MASK_LO, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.anon*, %struct.anon** %8, align 8
  %15 = bitcast %struct.anon* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, 511
  %18 = and i32 %16, -512
  %19 = or i32 %18, %17
  store i32 %19, i32* %15, align 4
  %20 = shl i32 %17, 23
  %21 = ashr i32 %20, 23
  %22 = load %struct.anon*, %struct.anon** %8, align 8
  %23 = bitcast %struct.anon* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -1025
  %26 = or i32 %25, 1024
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 9
  %29 = and i32 %28, 31
  %30 = load %struct.anon*, %struct.anon** %8, align 8
  %31 = bitcast %struct.anon* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, 31
  %34 = shl i32 %33, 11
  %35 = and i32 %32, -63489
  %36 = or i32 %35, %34
  store i32 %36, i32* %31, align 4
  %37 = shl i32 %33, 27
  %38 = ashr i32 %37, 27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.anon*, %struct.anon** %8, align 8
  %41 = bitcast %struct.anon* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, 8191
  %44 = shl i32 %43, 16
  %45 = and i32 %42, -536805377
  %46 = or i32 %45, %44
  store i32 %46, i32* %41, align 4
  %47 = shl i32 %43, 19
  %48 = ashr i32 %47, 19
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.anon*, %struct.anon** %8, align 8
  %51 = bitcast %struct.anon* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, 1
  %54 = shl i32 %53, 29
  %55 = and i32 %52, -536870913
  %56 = or i32 %55, %54
  store i32 %56, i32* %51, align 4
  %57 = shl i32 %53, 31
  %58 = ashr i32 %57, 31
  %59 = load i32, i32* @TRUE, align 4
  %60 = load %struct.anon*, %struct.anon** %8, align 8
  %61 = bitcast %struct.anon* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, 1
  %64 = shl i32 %63, 9
  %65 = and i32 %62, -513
  %66 = or i32 %65, %64
  store i32 %66, i32* %61, align 4
  %67 = shl i32 %63, 31
  %68 = ashr i32 %67, 31
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
