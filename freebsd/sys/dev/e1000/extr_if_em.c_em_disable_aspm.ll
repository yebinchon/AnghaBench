; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_disable_aspm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_disable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIER_LINK_CAP = common dso_local global i32 0, align 4
@PCIEM_LINK_CAP_ASPM = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ASPMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @em_disable_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_disable_aspm(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %1, %1, %1
  br label %18

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCIY_EXPRESS, align 4
  %21 = call i64 @pci_find_cap(i32 %19, i32 %20, i32* %3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %51

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PCIER_LINK_CAP, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pci_read_config(i32 %28, i32 %29, i32 2)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCIEM_LINK_CAP_ASPM, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %51

36:                                               ; preds = %24
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PCIER_LINK_CTL, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pci_read_config(i32 %40, i32 %41, i32 2)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @PCIEM_LINK_CTL_ASPMC, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_write_config(i32 %47, i32 %48, i32 %49, i32 2)
  br label %51

51:                                               ; preds = %36, %35, %23, %17
  ret void
}

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
