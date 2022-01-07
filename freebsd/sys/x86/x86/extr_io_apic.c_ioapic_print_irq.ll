; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_print_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_print_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioapic_intsrc = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ExtINT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SMI\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s IRQ %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioapic_intsrc*)* @ioapic_print_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_print_irq(%struct.ioapic_intsrc* %0) #0 {
  %2 = alloca %struct.ioapic_intsrc*, align 8
  store %struct.ioapic_intsrc* %0, %struct.ioapic_intsrc** %2, align 8
  %3 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %2, align 8
  %4 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %14 [
    i32 131, label %6
    i32 130, label %8
    i32 129, label %10
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %23

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %23

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %23

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %2, align 8
  %16 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @ioapic_bus_string(i32 %17)
  %19 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %2, align 8
  %20 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %12, %10, %8, %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ioapic_bus_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
