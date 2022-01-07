; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.msi_intsrc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @msi_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_enable_intr(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.msi_intsrc*, align 8
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %4 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %5 = bitcast %struct.intsrc* %4 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %5, %struct.msi_intsrc** %3, align 8
  %6 = load %struct.msi_intsrc*, %struct.msi_intsrc** %3, align 8
  %7 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.msi_intsrc*, %struct.msi_intsrc** %3, align 8
  %10 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @apic_enable_vector(i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @apic_enable_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
