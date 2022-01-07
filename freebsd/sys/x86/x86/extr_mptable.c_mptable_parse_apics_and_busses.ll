; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_apics_and_busses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_parse_apics_and_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@mpfps = common dso_local global %struct.TYPE_3__* null, align 8
@DEFAULT_IO_APIC_BASE = common dso_local global i32 0, align 4
@ioapics = common dso_local global i32* null, align 8
@busses = common dso_local global %struct.TYPE_4__* null, align 8
@default_data = common dso_local global i8*** null, align 8
@mptable_nbusses = common dso_local global i32 0, align 4
@mptable_parse_apics_and_busses_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mptable_parse_apics_and_busses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_parse_apics_and_busses() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mpfps, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %0
  %6 = load i32, i32* @DEFAULT_IO_APIC_BASE, align 4
  %7 = call i32 @ioapic_create(i32 %6, i32 2, i32 0)
  %8 = load i32*, i32** @ioapics, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @busses, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i8***, i8**** @default_data, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mpfps, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8**, i8*** %13, i64 %18
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @busses, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @mptable_nbusses, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %45

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @busses, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i8***, i8**** @default_data, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mpfps, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8**, i8*** %32, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 4
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @busses, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  br label %45

45:                                               ; preds = %28, %5
  br label %49

46:                                               ; preds = %0
  %47 = load i32, i32* @mptable_parse_apics_and_busses_handler, align 4
  %48 = call i32 @mptable_walk_table(i32 %47, i32* null)
  br label %49

49:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @ioapic_create(i32, i32, i32) #1

declare dso_local i32 @mptable_walk_table(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
