; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32* }

@RTL8366_RCR = common dso_local global i32 0, align 4
@RTL8366_RCR_HARD_RESET = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@RTL8366_SGCR = common dso_local global i32 0, align 4
@RTL8366_SGCR_EN_VLAN = common dso_local global i32 0, align 4
@RTL8366_SGCR_EN_VLAN_4KTB = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_REG = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_MEMBER_SHIFT = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_UNTAG_SHIFT = common dso_local global i32 0, align 4
@RTL8366_PVCR_PORT_MASK = common dso_local global i32 0, align 4
@RTL8366_RCR_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rtl8366rb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366rb_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366rb_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %5)
  store %struct.rtl8366rb_softc* %6, %struct.rtl8366rb_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @RTL8366_RCR, align 4
  %9 = load i32, i32* @RTL8366_RCR_HARD_RESET, align 4
  %10 = load i32, i32* @RTL8366_RCR_HARD_RESET, align 4
  %11 = load i32, i32* @RTL_WAITOK, align 4
  %12 = call i32 @smi_rmw(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = call i32 @DELAY(i32 100000)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @RTL8366_SGCR, align 4
  %16 = load i32, i32* @RTL8366_SGCR_EN_VLAN, align 4
  %17 = load i32, i32* @RTL8366_SGCR_EN_VLAN_4KTB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RTL8366_SGCR_EN_VLAN, align 4
  %20 = load i32, i32* @RTL_WAITOK, align 4
  %21 = call i32 @smi_rmw(i32 %14, i32 %15, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %36, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @RTL8366_VMCR_MU_REG, align 4
  %42 = call i32 @RTL8366_VMCR(i32 %41, i32 0)
  %43 = load i32, i32* @RTL_WAITOK, align 4
  %44 = call i32 @smi_rmw(i32 %40, i32 %42, i32 1, i32 0, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @RTL8366_VMCR_MU_REG, align 4
  %47 = call i32 @RTL8366_VMCR(i32 %46, i32 1)
  %48 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_SHIFT, align 4
  %49 = shl i32 33, %48
  %50 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_SHIFT, align 4
  %51 = shl i32 33, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_SHIFT, align 4
  %54 = shl i32 33, %53
  %55 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = load i32, i32* @RTL_WAITOK, align 4
  %59 = call i32 @smi_rmw(i32 %45, i32 %47, i32 %52, i32 %57, i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @RTL8366_PVCR_REG(i32 0)
  %62 = load i32, i32* @RTL8366_PVCR_PORT_MASK, align 4
  %63 = call i32 @RTL8366_PVCR_VAL(i32 0, i32 %62)
  %64 = call i32 @RTL8366_PVCR_VAL(i32 0, i32 1)
  %65 = load i32, i32* @RTL_WAITOK, align 4
  %66 = call i32 @smi_rmw(i32 %60, i32 %61, i32 %63, i32 %64, i32 %65)
  ret void
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @smi_rmw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RTL8366_VMCR(i32, i32) #1

declare dso_local i32 @RTL8366_PVCR_REG(i32) #1

declare dso_local i32 @RTL8366_PVCR_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
