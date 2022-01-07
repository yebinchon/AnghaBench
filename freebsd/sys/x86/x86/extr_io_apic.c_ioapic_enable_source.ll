; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_enable_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_enable_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64 }
%struct.ioapic_intsrc = type { i32, i64, i32 }
%struct.ioapic = type { i32 }

@icu_lock = common dso_local global i32 0, align 4
@IOART_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @ioapic_enable_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_enable_source(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.ioapic_intsrc*, align 8
  %4 = alloca %struct.ioapic*, align 8
  %5 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %6 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %7 = bitcast %struct.intsrc* %6 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %7, %struct.ioapic_intsrc** %3, align 8
  %8 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %9 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ioapic*
  store %struct.ioapic* %11, %struct.ioapic** %4, align 8
  %12 = call i32 @mtx_lock_spin(i32* @icu_lock)
  %13 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %14 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %19 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IOART_INTMASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %25 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %28 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IOAPIC_REDTBL_LO(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ioapic_write(i32 %26, i32 %30, i32 %31)
  %33 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %34 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %17, %1
  %36 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ioapic_write(i32, i32, i32) #1

declare dso_local i32 @IOAPIC_REDTBL_LO(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
