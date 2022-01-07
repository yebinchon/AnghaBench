; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.h_sli_cq_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.h_sli_cq_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@SLI4_EQCQ_CQ_ID_MASK_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sli_cq_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_cq_doorbell(i32 %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32, i32* @SLI4_EQCQ_CQ_ID_MASK_LO, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.anon*, %struct.anon** %8, align 8
  %15 = bitcast %struct.anon* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, 1023
  %18 = and i32 %16, -1024
  %19 = or i32 %18, %17
  store i32 %19, i32* %15, align 4
  %20 = shl i32 %17, 22
  %21 = ashr i32 %20, 22
  %22 = load %struct.anon*, %struct.anon** %8, align 8
  %23 = bitcast %struct.anon* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -1025
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 10
  %28 = and i32 %27, 31
  %29 = load %struct.anon*, %struct.anon** %8, align 8
  %30 = bitcast %struct.anon* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, 31
  %33 = shl i32 %32, 11
  %34 = and i32 %31, -63489
  %35 = or i32 %34, %33
  store i32 %35, i32* %30, align 4
  %36 = shl i32 %32, 27
  %37 = ashr i32 %36, 27
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.anon*, %struct.anon** %8, align 8
  %40 = bitcast %struct.anon* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, 8191
  %43 = shl i32 %42, 16
  %44 = and i32 %41, -536805377
  %45 = or i32 %44, %43
  store i32 %45, i32* %40, align 4
  %46 = shl i32 %42, 19
  %47 = ashr i32 %46, 19
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.anon*, %struct.anon** %8, align 8
  %50 = bitcast %struct.anon* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, 1
  %53 = shl i32 %52, 29
  %54 = and i32 %51, -536870913
  %55 = or i32 %54, %53
  store i32 %55, i32* %50, align 4
  %56 = shl i32 %52, 31
  %57 = ashr i32 %56, 31
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
