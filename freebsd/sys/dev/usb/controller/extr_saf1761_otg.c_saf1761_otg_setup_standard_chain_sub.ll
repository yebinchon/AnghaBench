; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_setup_standard_chain_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_setup_standard_chain_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_std_temp = type { i32, i32, i32, i32, i32, i32, i32, %struct.saf1761_otg_td*, %struct.saf1761_otg_td* }
%struct.saf1761_otg_td = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.saf1761_otg_td* }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_std_temp*)* @saf1761_otg_setup_standard_chain_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %0) #0 {
  %2 = alloca %struct.saf1761_otg_std_temp*, align 8
  %3 = alloca %struct.saf1761_otg_td*, align 8
  store %struct.saf1761_otg_std_temp* %0, %struct.saf1761_otg_std_temp** %2, align 8
  %4 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %5 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %4, i32 0, i32 7
  %6 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  store %struct.saf1761_otg_td* %6, %struct.saf1761_otg_td** %3, align 8
  %7 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %8 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %9 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %8, i32 0, i32 8
  store %struct.saf1761_otg_td* %7, %struct.saf1761_otg_td** %9, align 8
  %10 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %11 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %10, i32 0, i32 11
  %12 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %11, align 8
  %13 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %14 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %13, i32 0, i32 7
  store %struct.saf1761_otg_td* %12, %struct.saf1761_otg_td** %14, align 8
  %15 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %16 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %19 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %21 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %24 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %29 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %31 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %34 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %36 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %38 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %40 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %47 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %50 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.saf1761_otg_std_temp*, %struct.saf1761_otg_std_temp** %2, align 8
  %52 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %55 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @SOTG_HOST_CHANNEL_MAX, align 4
  %57 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %58 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
