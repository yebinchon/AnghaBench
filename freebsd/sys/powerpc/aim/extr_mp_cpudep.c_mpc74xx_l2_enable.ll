; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mp_cpudep.c_mpc74xx_l2_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mp_cpudep.c_mpc74xx_l2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2CR_L2IP = common dso_local global i32 0, align 4
@L2CR_L2I = common dso_local global i32 0, align 4
@SPR_L2CR = common dso_local global i32 0, align 4
@L2CR_L2E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc74xx_l2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc74xx_l2_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @mfpvr()
  %8 = ashr i32 %7, 16
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %12 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load i32, i32* @L2CR_L2IP, align 4
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @L2CR_L2I, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* @SPR_L2CR, align 4
  %16 = call i32 @mfspr(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @L2CR_L2E, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @L2CR_L2E, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @SPR_L2CR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @L2CR_L2I, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mtspr(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %36, %23
  %34 = load i32, i32* @SPR_L2CR, align 4
  %35 = call i32 @mfspr(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %33, label %41

41:                                               ; preds = %36
  %42 = call i32 (...) @powerpc_sync()
  %43 = load i32, i32* @SPR_L2CR, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mtspr(i32 %43, i32 %44)
  %46 = call i32 (...) @powerpc_sync()
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @powerpc_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
