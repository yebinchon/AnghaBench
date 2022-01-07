; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_ints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mpfps = common dso_local global %struct.TYPE_2__* null, align 8
@APIC_ID_ALL = common dso_local global i32 0, align 4
@APIC_LVT_LINT0 = common dso_local global i32 0, align 4
@APIC_LVT_DM_EXTINT = common dso_local global i32 0, align 4
@APIC_LVT_LINT1 = common dso_local global i32 0, align 4
@APIC_LVT_DM_NMI = common dso_local global i32 0, align 4
@mptable_parse_ints_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mptable_parse_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_parse_ints() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @APIC_ID_ALL, align 4
  %7 = load i32, i32* @APIC_LVT_LINT0, align 4
  %8 = load i32, i32* @APIC_LVT_DM_EXTINT, align 4
  %9 = call i32 @lapic_set_lvt_mode(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @APIC_ID_ALL, align 4
  %11 = load i32, i32* @APIC_LVT_LINT1, align 4
  %12 = load i32, i32* @APIC_LVT_DM_NMI, align 4
  %13 = call i32 @lapic_set_lvt_mode(i32 %10, i32 %11, i32 %12)
  %14 = call i32 (...) @mptable_parse_default_config_ints()
  br label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @mptable_parse_ints_handler, align 4
  %17 = call i32 @mptable_walk_table(i32 %16, i32* null)
  br label %18

18:                                               ; preds = %15, %5
  ret void
}

declare dso_local i32 @lapic_set_lvt_mode(i32, i32, i32) #1

declare dso_local i32 @mptable_parse_default_config_ints(...) #1

declare dso_local i32 @mptable_walk_table(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
