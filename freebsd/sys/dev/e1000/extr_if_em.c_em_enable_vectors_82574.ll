; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_vectors_82574.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_vectors_82574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@EM_NVM_PCIE_CTRL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"EM_NVM_PCIE_CTRL = %#06x\0A\00", align 1
@EM_NVM_MSIX_N_MASK = common dso_local global i32 0, align 4
@EM_NVM_MSIX_N_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Writing to eeprom: increasing reported MSI-X vectors from 3 to 5...\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Writing to eeprom: done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_enable_vectors_82574 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_enable_vectors_82574(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.e1000_hw* %10, %struct.e1000_hw** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @iflib_get_dev(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* @EM_NVM_PCIE_CTRL, align 4
  %15 = call i32 @e1000_read_nvm(%struct.e1000_hw* %13, i32 %14, i32 1, i32* %6)
  %16 = load i64, i64* @bootverbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EM_NVM_MSIX_N_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @EM_NVM_MSIX_N_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EM_NVM_MSIX_N_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @EM_NVM_MSIX_N_SHIFT, align 4
  %37 = shl i32 4, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = load i32, i32* @EM_NVM_PCIE_CTRL, align 4
  %42 = call i32 @e1000_write_nvm(%struct.e1000_hw* %40, i32 %41, i32 1, i32* %6)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = call i32 @e1000_update_nvm_checksum(%struct.e1000_hw* %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %29, %22
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @e1000_write_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_update_nvm_checksum(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
