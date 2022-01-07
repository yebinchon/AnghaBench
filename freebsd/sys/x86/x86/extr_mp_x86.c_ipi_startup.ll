; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_ipi_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_ipi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_DEST_DESTFLD = common dso_local global i32 0, align 4
@APIC_TRIGMOD_LEVEL = common dso_local global i32 0, align 4
@APIC_LEVEL_ASSERT = common dso_local global i32 0, align 4
@APIC_DESTMODE_PHY = common dso_local global i32 0, align 4
@APIC_DELMODE_INIT = common dso_local global i32 0, align 4
@APIC_LEVEL_DEASSERT = common dso_local global i32 0, align 4
@APIC_TRIGMOD_EDGE = common dso_local global i32 0, align 4
@APIC_DELMODE_STARTUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to deliver first STARTUP IPI to APIC %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to deliver second STARTUP IPI to APIC %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipi_startup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @APIC_DEST_DESTFLD, align 4
  %6 = load i32, i32* @APIC_TRIGMOD_LEVEL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @APIC_LEVEL_ASSERT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @APIC_DESTMODE_PHY, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @APIC_DELMODE_INIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @lapic_ipi_raw(i32 %13, i32 %14)
  %16 = call i32 @lapic_ipi_wait(i32 100)
  %17 = load i32, i32* @APIC_DEST_DESTFLD, align 4
  %18 = load i32, i32* @APIC_TRIGMOD_LEVEL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @APIC_LEVEL_DEASSERT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @APIC_DESTMODE_PHY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @APIC_DELMODE_INIT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @lapic_ipi_raw(i32 %25, i32 %26)
  %28 = call i32 @DELAY(i32 10000)
  %29 = load i32, i32* @APIC_DEST_DESTFLD, align 4
  %30 = load i32, i32* @APIC_TRIGMOD_EDGE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @APIC_LEVEL_ASSERT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @APIC_DESTMODE_PHY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @APIC_DELMODE_STARTUP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @lapic_ipi_raw(i32 %39, i32 %40)
  %42 = call i32 @lapic_ipi_wait(i32 100)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = call i32 @DELAY(i32 200)
  %49 = load i32, i32* @APIC_DEST_DESTFLD, align 4
  %50 = load i32, i32* @APIC_TRIGMOD_EDGE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @APIC_LEVEL_ASSERT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @APIC_DESTMODE_PHY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @APIC_DELMODE_STARTUP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @lapic_ipi_raw(i32 %59, i32 %60)
  %62 = call i32 @lapic_ipi_wait(i32 100)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %47
  %68 = call i32 @DELAY(i32 200)
  ret void
}

declare dso_local i32 @lapic_ipi_raw(i32, i32) #1

declare dso_local i32 @lapic_ipi_wait(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
