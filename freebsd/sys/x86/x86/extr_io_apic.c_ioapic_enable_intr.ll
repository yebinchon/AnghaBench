; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.ioapic_intsrc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Couldn't find an APIC vector for IRQ %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @ioapic_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_enable_intr(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.ioapic_intsrc*, align 8
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %4 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %5 = bitcast %struct.intsrc* %4 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %5, %struct.ioapic_intsrc** %3, align 8
  %6 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %7 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %12 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %13 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @intr_next_cpu(i32 %14)
  %16 = call i64 @ioapic_assign_cpu(%struct.intsrc* %11, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %20 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %10
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %26 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %29 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @apic_enable_vector(i32 %27, i64 %30)
  ret void
}

declare dso_local i64 @ioapic_assign_cpu(%struct.intsrc*, i32) #1

declare dso_local i32 @intr_next_cpu(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @apic_enable_vector(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
