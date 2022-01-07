; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_sprom_opcode_idx_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i8*)* @bhnd_nvram_sprom_getvar_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_getvar_order(%struct.bhnd_nvram_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bhnd_sprom_opcode_idx_entry*, align 8
  %9 = alloca %struct.bhnd_sprom_opcode_idx_entry*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bhnd_sprom_opcode_idx_entry*
  store %struct.bhnd_sprom_opcode_idx_entry* %11, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.bhnd_sprom_opcode_idx_entry*
  store %struct.bhnd_sprom_opcode_idx_entry* %13, %struct.bhnd_sprom_opcode_idx_entry** %9, align 8
  %14 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %15 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %9, align 8
  %16 = icmp ult %struct.bhnd_sprom_opcode_idx_entry* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %20 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %9, align 8
  %21 = icmp ugt %struct.bhnd_sprom_opcode_idx_entry* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %25

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %22, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
