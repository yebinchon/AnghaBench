; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_init_manageability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_init_manageability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64 }

@E1000_MANC2H = common dso_local global i32 0, align 4
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_ARP_EN = common dso_local global i32 0, align 4
@E1000_MANC_EN_MNG2HOST = common dso_local global i32 0, align 4
@E1000_MNG2HOST_PORT_623 = common dso_local global i32 0, align 4
@E1000_MNG2HOST_PORT_664 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @em_init_manageability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_init_manageability(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i32, i32* @E1000_MANC2H, align 4
  %13 = call i32 @E1000_READ_REG(i32* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i32, i32* @E1000_MANC, align 4
  %17 = call i32 @E1000_READ_REG(i32* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @E1000_MANC_ARP_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @E1000_MANC_EN_MNG2HOST, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 32
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 64
  store i32 %28, i32* %3, align 4
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* @E1000_MANC2H, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @E1000_WRITE_REG(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* @E1000_MANC, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @E1000_WRITE_REG(i32* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @E1000_READ_REG(i32*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
