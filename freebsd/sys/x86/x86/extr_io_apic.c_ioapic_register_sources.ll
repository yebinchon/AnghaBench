; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_register_sources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_register_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic = type { i32 }
%struct.ioapic_intsrc = type { i64, i32 }
%struct.ioapic = type { i32, %struct.ioapic_intsrc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic*)* @ioapic_register_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_register_sources(%struct.pic* %0) #0 {
  %2 = alloca %struct.pic*, align 8
  %3 = alloca %struct.ioapic_intsrc*, align 8
  %4 = alloca %struct.ioapic*, align 8
  %5 = alloca i32, align 4
  store %struct.pic* %0, %struct.pic** %2, align 8
  %6 = load %struct.pic*, %struct.pic** %2, align 8
  %7 = bitcast %struct.pic* %6 to %struct.ioapic*
  store %struct.ioapic* %7, %struct.ioapic** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %9 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %8, i32 0, i32 1
  %10 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %9, align 8
  store %struct.ioapic_intsrc* %10, %struct.ioapic_intsrc** %3, align 8
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %14 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %19 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %24 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %23, i32 0, i32 1
  %25 = call i32 @intr_register_source(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %31 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %30, i32 1
  store %struct.ioapic_intsrc* %31, %struct.ioapic_intsrc** %3, align 8
  br label %11

32:                                               ; preds = %11
  ret void
}

declare dso_local i32 @intr_register_source(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
