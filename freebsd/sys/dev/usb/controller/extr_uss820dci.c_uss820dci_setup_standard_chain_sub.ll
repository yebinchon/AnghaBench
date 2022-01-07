; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_standard_chain_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_standard_chain_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820_std_temp = type { i32, i32, i32, i32, i32, i32, i32, %struct.uss820dci_td*, %struct.uss820dci_td* }
%struct.uss820dci_td = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, %struct.uss820dci_td* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uss820_std_temp*)* @uss820dci_setup_standard_chain_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp* %0) #0 {
  %2 = alloca %struct.uss820_std_temp*, align 8
  %3 = alloca %struct.uss820dci_td*, align 8
  store %struct.uss820_std_temp* %0, %struct.uss820_std_temp** %2, align 8
  %4 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %5 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %4, i32 0, i32 7
  %6 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  store %struct.uss820dci_td* %6, %struct.uss820dci_td** %3, align 8
  %7 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %8 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %9 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %8, i32 0, i32 8
  store %struct.uss820dci_td* %7, %struct.uss820dci_td** %9, align 8
  %10 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %11 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %10, i32 0, i32 9
  %12 = load %struct.uss820dci_td*, %struct.uss820dci_td** %11, align 8
  %13 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %14 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %13, i32 0, i32 7
  store %struct.uss820dci_td* %12, %struct.uss820dci_td** %14, align 8
  %15 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %16 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %19 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %21 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %24 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %26 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %29 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %31 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %34 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %36 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %38 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %40 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %43 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %45 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %48 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.uss820_std_temp*, %struct.uss820_std_temp** %2, align 8
  %50 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uss820dci_td*, %struct.uss820dci_td** %3, align 8
  %53 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
