; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_src_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_src_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i32 }

@ES1371_DIS_SRC = common dso_local global i32 0, align 4
@ES1371_DIS_P1 = common dso_local global i32 0, align 4
@ES1371_DIS_P2 = common dso_local global i32 0, align 4
@ES1371_DIS_R1 = common dso_local global i32 0, align 4
@ES1371_REG_SMPRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es_info*, i16)* @es1371_src_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_src_read(%struct.es_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.es_info*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.es_info* %0, %struct.es_info** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.es_info*, %struct.es_info** %3, align 8
  %7 = call i32 @es1371_wait_src_ready(%struct.es_info* %6)
  %8 = load i32, i32* @ES1371_DIS_SRC, align 4
  %9 = load i32, i32* @ES1371_DIS_P1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ES1371_DIS_P2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ES1371_DIS_R1, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %7, %14
  store i32 %15, i32* %5, align 4
  %16 = load i16, i16* %4, align 2
  %17 = call i32 @ES1371_SRC_RAM_ADDRO(i16 zeroext %16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.es_info*, %struct.es_info** %3, align 8
  %21 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @es_wr(%struct.es_info* %20, i32 %21, i32 %22, i32 4)
  %24 = load %struct.es_info*, %struct.es_info** %3, align 8
  %25 = call i32 @es1371_wait_src_ready(%struct.es_info* %24)
  %26 = call i32 @ES1371_SRC_RAM_DATAI(i32 %25)
  ret i32 %26
}

declare dso_local i32 @es1371_wait_src_ready(%struct.es_info*) #1

declare dso_local i32 @ES1371_SRC_RAM_ADDRO(i16 zeroext) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @ES1371_SRC_RAM_DATAI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
