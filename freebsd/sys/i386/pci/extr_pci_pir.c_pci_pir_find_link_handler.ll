; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_find_link_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_find_link_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PIR_entry = type { i64, i64, %struct.PIR_intpin* }
%struct.PIR_intpin = type { i32 }
%struct.pci_link_lookup = type { i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PIR_entry*, %struct.PIR_intpin*, i8*)* @pci_pir_find_link_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_pir_find_link_handler(%struct.PIR_entry* %0, %struct.PIR_intpin* %1, i8* %2) #0 {
  %4 = alloca %struct.PIR_entry*, align 8
  %5 = alloca %struct.PIR_intpin*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_link_lookup*, align 8
  store %struct.PIR_entry* %0, %struct.PIR_entry** %4, align 8
  store %struct.PIR_intpin* %1, %struct.PIR_intpin** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pci_link_lookup*
  store %struct.pci_link_lookup* %9, %struct.pci_link_lookup** %7, align 8
  %10 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %11 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pci_link_lookup*, %struct.pci_link_lookup** %7, align 8
  %14 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %19 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pci_link_lookup*, %struct.pci_link_lookup** %7, align 8
  %22 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %27 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %28 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %27, i32 0, i32 2
  %29 = load %struct.PIR_intpin*, %struct.PIR_intpin** %28, align 8
  %30 = ptrtoint %struct.PIR_intpin* %26 to i64
  %31 = ptrtoint %struct.PIR_intpin* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = load %struct.pci_link_lookup*, %struct.pci_link_lookup** %7, align 8
  %35 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %41 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_pir_find_link(i32 %42)
  %44 = load %struct.pci_link_lookup*, %struct.pci_link_lookup** %7, align 8
  %45 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %25, %17, %3
  ret void
}

declare dso_local i32 @pci_pir_find_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
