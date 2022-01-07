; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_assign_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_assign_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64, i64 }
%struct.ioapic_intsrc = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.ioapic = type { i32, i32 }

@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_HV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IRQ_NMI = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@icu_lock = common dso_local global i32 0, align 4
@IOART_INTMSET = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ioapic%u: routing intpin %u (\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c") to lapic %u vector %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsrc*, i64)* @ioapic_assign_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_assign_cpu(%struct.intsrc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intsrc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ioapic_intsrc*, align 8
  %7 = alloca %struct.ioapic*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.intsrc* %0, %struct.intsrc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.intsrc*, %struct.intsrc** %4, align 8
  %12 = bitcast %struct.intsrc* %11 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %12, %struct.ioapic_intsrc** %6, align 8
  %13 = load %struct.intsrc*, %struct.intsrc** %4, align 8
  %14 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ioapic*
  store %struct.ioapic* %16, %struct.ioapic** %7, align 8
  %17 = load i64, i64* @vm_guest, align 8
  %18 = load i64, i64* @VM_GUEST_HV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %22 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %152

27:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %31 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRQ_NMI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %38 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %41 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %152

50:                                               ; preds = %45, %36
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %53 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @apic_alloc_vector(i64 %51, i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOSPC, align 4
  store i32 %59, i32* %3, align 4
  br label %152

60:                                               ; preds = %50
  %61 = call i32 @mtx_lock_spin(i32* @icu_lock)
  %62 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %63 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %60
  %67 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %68 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load %struct.ioapic*, %struct.ioapic** %7, align 8
  %73 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %76 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @IOAPIC_REDTBL_LO(i32 %77)
  %79 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %80 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IOART_INTMSET, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @ioapic_write(i32 %74, i32 %78, i32 %83)
  %85 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %86 = call i32 @DELAY(i32 100)
  %87 = call i32 @mtx_lock_spin(i32* @icu_lock)
  br label %88

88:                                               ; preds = %71, %66, %60
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %91 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %94 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.intsrc*, %struct.intsrc** %4, align 8
  %96 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %101 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %104 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @apic_enable_vector(i64 %102, i64 %105)
  br label %107

107:                                              ; preds = %99, %88
  %108 = load i64, i64* @bootverbose, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.ioapic*, %struct.ioapic** %7, align 8
  %112 = getelementptr inbounds %struct.ioapic, %struct.ioapic* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %115 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %119 = call i32 @ioapic_print_irq(%struct.ioapic_intsrc* %118)
  %120 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %121 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %125 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %110, %107
  %130 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %131 = call i32 @ioapic_program_intpin(%struct.ioapic_intsrc* %130)
  %132 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = load %struct.intsrc*, %struct.intsrc** %4, align 8
  %137 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @apic_disable_vector(i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %6, align 8
  %148 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @apic_free_vector(i64 %145, i64 %146, i64 %149)
  br label %151

151:                                              ; preds = %144, %129
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %58, %49, %25
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @apic_alloc_vector(i64, i64) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ioapic_write(i32, i32, i32) #1

declare dso_local i32 @IOAPIC_REDTBL_LO(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @apic_enable_vector(i64, i64) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @ioapic_print_irq(%struct.ioapic_intsrc*) #1

declare dso_local i32 @ioapic_program_intpin(%struct.ioapic_intsrc*) #1

declare dso_local i32 @apic_disable_vector(i64, i64) #1

declare dso_local i32 @apic_free_vector(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
