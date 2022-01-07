; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbios.c_smbios_walk_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbios.c_smbios_walk_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_structure_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32 (%struct.smbios_structure_header*, i8*)*, i8*)* @smbios_walk_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbios_walk_table(i64* %0, i32 %1, i32 (%struct.smbios_structure_header*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.smbios_structure_header*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smbios_structure_header*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.smbios_structure_header*, i8*)* %2, i32 (%struct.smbios_structure_header*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %10

10:                                               ; preds = %43, %4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = bitcast i64* %15 to %struct.smbios_structure_header*
  store %struct.smbios_structure_header* %16, %struct.smbios_structure_header** %9, align 8
  %17 = load i32 (%struct.smbios_structure_header*, i8*)*, i32 (%struct.smbios_structure_header*, i8*)** %7, align 8
  %18 = load %struct.smbios_structure_header*, %struct.smbios_structure_header** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 %17(%struct.smbios_structure_header* %18, i8* %19)
  %21 = load %struct.smbios_structure_header*, %struct.smbios_structure_header** %9, align 8
  %22 = getelementptr inbounds %struct.smbios_structure_header, %struct.smbios_structure_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64*, i64** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64* %26, i64** %5, align 8
  br label %27

27:                                               ; preds = %40, %14
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %5, align 8
  br label %27

43:                                               ; preds = %37
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64* %45, i64** %5, align 8
  br label %10

46:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
