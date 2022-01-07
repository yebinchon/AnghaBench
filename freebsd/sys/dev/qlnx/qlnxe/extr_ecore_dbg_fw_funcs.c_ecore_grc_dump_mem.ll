; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i8)* @ecore_grc_dump_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_mem(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32 %11, i8 signext %12) #0 {
  %14 = alloca %struct.ecore_hwfn*, align 8
  %15 = alloca %struct.ecore_ptt*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %14, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32 %11, i32* %25, align 4
  store i8 %12, i8* %26, align 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %27, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %17, align 4
  %34 = load i8*, i8** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %23, align 4
  %39 = load i8*, i8** %24, align 8
  %40 = load i32, i32* %25, align 4
  %41 = load i8, i8* %26, align 1
  %42 = call i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %28, i32* %32, i32 %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38, i8* %39, i32 %40, i8 signext %41)
  %43 = load i32, i32* %27, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %27, align 4
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %27, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, i32* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %27, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %27, align 4
  %58 = load i32, i32* %27, align 4
  ret i32 %58
}

declare dso_local i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i8 signext) #1

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
