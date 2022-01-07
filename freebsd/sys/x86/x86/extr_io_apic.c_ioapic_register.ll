; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioapic_intsrc = type { i32 }
%struct.ioapic = type { i32, i32, i32, %struct.ioapic_intsrc*, i32, i32* }

@icu_lock = common dso_local global i32 0, align 4
@IOAPIC_VER = common dso_local global i32 0, align 4
@IOART_VER_VERSION = common dso_local global i32 0, align 4
@ioapic_list = common dso_local global i32 0, align 4
@io_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ioapic%u <Version %u.%u> irqs %u-%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioapic_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ioapic_intsrc*, align 8
  %4 = alloca %struct.ioapic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ioapic*
  store %struct.ioapic* %9, %struct.ioapic** %4, align 8
  %10 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %11 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = call i32 @mtx_lock_spin(i32* @icu_lock)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @IOAPIC_VER, align 4
  %16 = call i32 @ioapic_read(i32* %14, i32 %15)
  %17 = load i32, i32* @IOART_VER_VERSION, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %20 = load i32, i32* @io_next, align 4
  %21 = call i32 @STAILQ_INSERT_TAIL(i32* @ioapic_list, %struct.ioapic* %19, i32 %20)
  %22 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %23 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %24 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %31 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %34 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %37 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %32, i32 %40)
  %42 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %43 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %42, i32 0, i32 4
  %44 = call i32 @intr_register_pic(i32* %43)
  store i32 0, i32* %7, align 4
  %45 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %46 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %45, i32 0, i32 3
  %47 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %46, align 8
  store %struct.ioapic_intsrc* %47, %struct.ioapic_intsrc** %3, align 8
  br label %48

48:                                               ; preds = %58, %1
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ioapic*, %struct.ioapic** %4, align 8
  %51 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %56 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %55, i32 0, i32 0
  %57 = call i32 @ioapic_reprogram_intpin(i32* %56)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %3, align 8
  %62 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %61, i32 1
  store %struct.ioapic_intsrc* %62, %struct.ioapic_intsrc** %3, align 8
  br label %48

63:                                               ; preds = %48
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ioapic_read(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ioapic*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @intr_register_pic(i32*) #1

declare dso_local i32 @ioapic_reprogram_intpin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
