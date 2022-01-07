; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_disable_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_disable_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64 }
%struct.ioapic_intsrc = type { i32, i32, i32, i32 }
%struct.ioapic = type { i32 }

@icu_lock = common dso_local global i32 0, align 4
@IOART_INTMSET = common dso_local global i32 0, align 4
@PIC_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*, i32)* @ioapic_disable_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_disable_source(%struct.intsrc* %0, i32 %1) #0 {
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioapic_intsrc*, align 8
  %6 = alloca %struct.ioapic*, align 8
  %7 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %9 = bitcast %struct.intsrc* %8 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %9, %struct.ioapic_intsrc** %5, align 8
  %10 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %11 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ioapic*
  store %struct.ioapic* %13, %struct.ioapic** %6, align 8
  %14 = call i32 @mtx_lock_spin(i32* @icu_lock)
  %15 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %16 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %2
  %20 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %21 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %26 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IOART_INTMSET, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %31 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %34 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IOAPIC_REDTBL_LO(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ioapic_write(i32 %32, i32 %36, i32 %37)
  %39 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %40 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %19, %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PIC_EOI, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %47 = call i32 @_ioapic_eoi_source(%struct.intsrc* %46, i32 1)
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ioapic_write(i32, i32, i32) #1

declare dso_local i32 @IOAPIC_REDTBL_LO(i32) #1

declare dso_local i32 @_ioapic_eoi_source(%struct.intsrc*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
