; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_smap_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_smap_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_smap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_smap*, i32*, i32*)* @add_smap_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_smap_entries(%struct.bios_smap* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bios_smap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bios_smap*, align 8
  %8 = alloca %struct.bios_smap*, align 8
  %9 = alloca i64, align 8
  store %struct.bios_smap* %0, %struct.bios_smap** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %11 = bitcast %struct.bios_smap* %10 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 -1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %15 = ptrtoint %struct.bios_smap* %14 to i64
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.bios_smap*
  store %struct.bios_smap* %18, %struct.bios_smap** %8, align 8
  %19 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  store %struct.bios_smap* %19, %struct.bios_smap** %7, align 8
  br label %20

20:                                               ; preds = %32, %3
  %21 = load %struct.bios_smap*, %struct.bios_smap** %7, align 8
  %22 = load %struct.bios_smap*, %struct.bios_smap** %8, align 8
  %23 = icmp ult %struct.bios_smap* %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.bios_smap*, %struct.bios_smap** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @add_smap_entry(%struct.bios_smap* %25, i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.bios_smap*, %struct.bios_smap** %7, align 8
  %34 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %33, i32 1
  store %struct.bios_smap* %34, %struct.bios_smap** %7, align 8
  br label %20

35:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @add_smap_entry(%struct.bios_smap*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
