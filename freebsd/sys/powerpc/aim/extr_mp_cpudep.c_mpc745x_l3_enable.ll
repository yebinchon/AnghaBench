; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mp_cpudep.c_mpc745x_l3_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mp_cpudep.c_mpc745x_l3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_L3CR = common dso_local global i32 0, align 4
@L3CR_L3E = common dso_local global i32 0, align 4
@L3CR_L3I = common dso_local global i32 0, align 4
@L3CR_L3PE = common dso_local global i32 0, align 4
@L3CR_L3CLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc745x_l3_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc745x_l3_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @SPR_L3CR, align 4
  %6 = call i32 @mfspr(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @L3CR_L3E, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @L3CR_L3E, align 4
  %16 = load i32, i32* @L3CR_L3I, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @L3CR_L3PE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @L3CR_L3CLKEN, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %14, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @SPR_L3CR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mtspr(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 67108864
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SPR_L3CR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mtspr(i32 %29, i32 %30)
  %32 = load i32, i32* @L3CR_L3CLKEN, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @SPR_L3CR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mtspr(i32 %35, i32 %36)
  %38 = load i32, i32* @SPR_L3CR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @L3CR_L3I, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mtspr(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %49, %13
  %44 = load i32, i32* @SPR_L3CR, align 4
  %45 = call i32 @mfspr(i32 %44)
  %46 = load i32, i32* @L3CR_L3I, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %43

50:                                               ; preds = %43
  %51 = load i32, i32* @SPR_L3CR, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @L3CR_L3CLKEN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @mtspr(i32 %51, i32 %55)
  %57 = call i32 (...) @powerpc_sync()
  %58 = call i32 @DELAY(i32 100)
  %59 = load i32, i32* @SPR_L3CR, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @mtspr(i32 %59, i32 %60)
  %62 = call i32 (...) @powerpc_sync()
  %63 = call i32 @DELAY(i32 100)
  %64 = load i32, i32* @L3CR_L3E, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @SPR_L3CR, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @mtspr(i32 %67, i32 %68)
  %70 = call i32 (...) @powerpc_sync()
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %50, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
