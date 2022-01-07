; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_setup_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_setup_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mptable_maxbusid = common dso_local global i32 0, align 4
@M_MPTABLE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@busses = common dso_local global %struct.TYPE_5__* null, align 8
@NOBUS = common dso_local global i32 0, align 4
@IOAPIC_MAX_ID = common dso_local global i32 0, align 4
@ioapics = common dso_local global i32** null, align 8
@mpfps = common dso_local global %struct.TYPE_4__* null, align 8
@MPFB2_IMCR_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mptable_setup_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptable_setup_io() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @mptable_count_items()
  %4 = load i32, i32* @mptable_maxbusid, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @M_MPTABLE, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call %struct.TYPE_5__* @malloc(i32 %8, i32 %9, i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @busses, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %23, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @mptable_maxbusid, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* @NOBUS, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @busses, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %12

26:                                               ; preds = %12
  %27 = call i32 (...) @mptable_parse_apics_and_busses()
  %28 = call i32 (...) @mptable_parse_ints()
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @IOAPIC_MAX_ID, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32**, i32*** @ioapics, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32**, i32*** @ioapics, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ioapic_register(i32* %45)
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %29

51:                                               ; preds = %29
  %52 = call i32 (...) @mptable_pci_setup()
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mpfps, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MPFB2_IMCR_PRESENT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = call i32 @outb(i32 34, i32 112)
  %61 = call i32 @inb(i32 35)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @outb(i32 35, i32 %64)
  br label %66

66:                                               ; preds = %59, %51
  ret i32 0
}

declare dso_local i32 @mptable_count_items(...) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mptable_parse_apics_and_busses(...) #1

declare dso_local i32 @mptable_parse_ints(...) #1

declare dso_local i32 @ioapic_register(i32*) #1

declare dso_local i32 @mptable_pci_setup(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
