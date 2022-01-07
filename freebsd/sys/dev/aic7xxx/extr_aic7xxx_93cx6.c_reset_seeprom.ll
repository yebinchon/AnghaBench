; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_reset_seeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_reset_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seeprom_descriptor = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seeprom_descriptor*)* @reset_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_seeprom(%struct.seeprom_descriptor* %0) #0 {
  %2 = alloca %struct.seeprom_descriptor*, align 8
  %3 = alloca i32, align 4
  store %struct.seeprom_descriptor* %0, %struct.seeprom_descriptor** %2, align 8
  %4 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %5 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %7, i32 %8)
  %10 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %11 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %12 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %10, i32 %13)
  %15 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %18 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  %21 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %15, i32 %20)
  %22 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %23 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %24 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %22, i32 %25)
  %27 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %27, i32 %28)
  %30 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %31 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %2, align 8
  %32 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %30, i32 %33)
  ret void
}

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.seeprom_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
