; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c__ioapic_eoi_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c__ioapic_eoi_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64 }
%struct.ioapic_intsrc = type { i32, i32, i32, i64 }
%struct.ioapic = type { i64, i64 }

@lapic_eoi_suppression = common dso_local global i32 0, align 4
@IOAPIC_EOIR = common dso_local global i32 0, align 4
@icu_lock = common dso_local global i32 0, align 4
@IOART_TRGRLVL = common dso_local global i32 0, align 4
@IOART_TRGREDG = common dso_local global i32 0, align 4
@IOART_INTMSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*, i32)* @_ioapic_eoi_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ioapic_eoi_source(%struct.intsrc* %0, i32 %1) #0 {
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioapic_intsrc*, align 8
  %6 = alloca %struct.ioapic*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @lapic_eoi()
  %10 = load i32, i32* @lapic_eoi_suppression, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %86

13:                                               ; preds = %2
  %14 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %15 = bitcast %struct.intsrc* %14 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %15, %struct.ioapic_intsrc** %5, align 8
  %16 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %17 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %86

21:                                               ; preds = %13
  %22 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %23 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ioapic*
  store %struct.ioapic* %25, %struct.ioapic** %6, align 8
  %26 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %27 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %32 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @IOAPIC_EOIR, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %7, align 8
  %39 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %40 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  store volatile i32 %41, i32* %42, align 4
  br label %86

43:                                               ; preds = %21
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @mtx_lock_spin(i32* @icu_lock)
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %50 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @IOART_TRGRLVL, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @IOART_TRGREDG, align 4
  %57 = load i32, i32* @IOART_INTMSET, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %62 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %65 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @IOAPIC_REDTBL_LO(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ioapic_write(i64 %63, i32 %67, i32 %68)
  %70 = load %struct.ioapic*, %struct.ioapic** %6, align 8
  %71 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %74 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @IOAPIC_REDTBL_LO(i32 %75)
  %77 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %5, align 8
  %78 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ioapic_write(i64 %72, i32 %76, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %48
  %84 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  br label %85

85:                                               ; preds = %83, %48
  br label %86

86:                                               ; preds = %12, %20, %85, %30
  ret void
}

declare dso_local i32 @lapic_eoi(...) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ioapic_write(i64, i32, i32) #1

declare dso_local i32 @IOAPIC_REDTBL_LO(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
