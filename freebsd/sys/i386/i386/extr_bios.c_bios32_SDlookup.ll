; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios32_SDlookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios32_SDlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios32_SDentry = type { i64, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bios_regs = type { i32, i64, i64, i64 }

@bios32_SDCI = common dso_local global i64 0, align 8
@GCODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bios32_SDlookup(%struct.bios32_SDentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bios32_SDentry*, align 8
  %4 = alloca %struct.bios_regs, align 8
  store %struct.bios32_SDentry* %0, %struct.bios32_SDentry** %3, align 8
  %5 = load i64, i64* @bios32_SDCI, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %10 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* @bios32_SDCI, align 8
  %18 = load i32, i32* @GCODE_SEL, align 4
  %19 = load i32, i32* @SEL_KPL, align 4
  %20 = call i32 @GSEL(i32 %18, i32 %19)
  %21 = call i32 @bios32(%struct.bios_regs* %4, i64 %17, i32 %20)
  %22 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %30 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %34 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %4, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %38 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %40 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %43 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @BIOS_PADDRTOVADDR(i64 %45)
  %47 = load %struct.bios32_SDentry*, %struct.bios32_SDentry** %3, align 8
  %48 = getelementptr inbounds %struct.bios32_SDentry, %struct.bios32_SDentry* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %50

49:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %26, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @bios32(%struct.bios_regs*, i64, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @BIOS_PADDRTOVADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
