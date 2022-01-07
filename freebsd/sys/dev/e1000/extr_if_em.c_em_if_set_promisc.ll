; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_set_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@E1000_RCTL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@em_debug_sbp = common dso_local global i64 0, align 8
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @em_if_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_set_promisc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @em_disable_promisc(i32 %9)
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* @E1000_RCTL, align 4
  %14 = call i32 @E1000_READ_REG(i32* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load i32, i32* @E1000_RCTL_UPE, align 4
  %21 = load i32, i32* @E1000_RCTL_MPE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* @em_debug_sbp, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @E1000_RCTL_SBP, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* @E1000_RCTL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @E1000_WRITE_REG(i32* %33, i32 %34, i32 %35)
  br label %56

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* @E1000_RCTL_MPE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @E1000_RCTL_UPE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32, i32* @E1000_RCTL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @E1000_WRITE_REG(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %37
  br label %56

56:                                               ; preds = %55, %31
  ret i32 0
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @em_disable_promisc(i32) #1

declare dso_local i32 @E1000_READ_REG(i32*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
