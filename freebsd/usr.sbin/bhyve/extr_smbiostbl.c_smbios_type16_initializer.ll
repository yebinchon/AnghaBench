; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_type16_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_type16_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_structure = type { i32 }
%struct.smbios_table_type16 = type { i32, i64 }

@type16_handle = common dso_local global i32 0, align 4
@guest_lomem = common dso_local global i64 0, align 8
@guest_himem = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*)* @smbios_type16_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbios_type16_initializer(%struct.smbios_structure* %0, i8** %1, i8* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.smbios_structure*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.smbios_table_type16*, align 8
  store %struct.smbios_structure* %0, %struct.smbios_structure** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @type16_handle, align 4
  %16 = load %struct.smbios_structure*, %struct.smbios_structure** %7, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @smbios_generic_initializer(%struct.smbios_structure* %16, i8** %17, i8* %18, i8** %19, i32* %20, i32* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.smbios_table_type16*
  store %struct.smbios_table_type16* %24, %struct.smbios_table_type16** %13, align 8
  %25 = load i64, i64* @guest_lomem, align 8
  %26 = load i64, i64* @guest_himem, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.smbios_table_type16*, %struct.smbios_table_type16** %13, align 8
  %29 = getelementptr inbounds %struct.smbios_table_type16, %struct.smbios_table_type16* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @guest_himem, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 1
  %34 = load %struct.smbios_table_type16*, %struct.smbios_table_type16** %13, align 8
  %35 = getelementptr inbounds %struct.smbios_table_type16, %struct.smbios_table_type16* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret i32 0
}

declare dso_local i32 @smbios_generic_initializer(%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
