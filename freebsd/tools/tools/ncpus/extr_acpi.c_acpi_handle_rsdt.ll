; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_handle_rsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_handle_rsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIsdt = type { i32, i32, i64 }

@SIZEOF_SDT_HDR = common dso_local global i32 0, align 4
@addr_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ACPIsdt*)* @acpi_handle_rsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_handle_rsdt(%struct.ACPIsdt* %0) #0 {
  %2 = alloca %struct.ACPIsdt*, align 8
  %3 = alloca %struct.ACPIsdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ACPIsdt* %0, %struct.ACPIsdt** %2, align 8
  %7 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %8 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SIZEOF_SDT_HDR, align 4
  %11 = sub nsw i32 %9, %10
  %12 = load i32, i32* @addr_size, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32, i32* @addr_size, align 4
  switch i32 %19, label %42 [
    i32 4, label %20
    i32 8, label %31
  ]

20:                                               ; preds = %18
  %21 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %22 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @addr_size, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = call i32 @le32dec(i8* %29)
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %18
  %32 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %33 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @addr_size, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = call i32 @le64dec(i8* %40)
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  %43 = call i32 @assert(i32 0)
  br label %44

44:                                               ; preds = %42, %31, %20
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @acpi_map_sdt(i32 %45)
  %47 = inttoptr i64 %46 to %struct.ACPIsdt*
  store %struct.ACPIsdt* %47, %struct.ACPIsdt** %3, align 8
  %48 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %49 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %50 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @acpi_checksum(%struct.ACPIsdt* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %65

55:                                               ; preds = %44
  %56 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %57 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcmp(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load %struct.ACPIsdt*, %struct.ACPIsdt** %3, align 8
  %63 = call i32 @acpi_handle_apic(%struct.ACPIsdt* %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %14

68:                                               ; preds = %14
  ret void
}

declare dso_local i32 @le32dec(i8*) #1

declare dso_local i32 @le64dec(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @acpi_map_sdt(i32) #1

declare dso_local i64 @acpi_checksum(%struct.ACPIsdt*, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @acpi_handle_apic(%struct.ACPIsdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
