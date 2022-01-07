; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_regs_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_regs_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"grc_regs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32, i8*, i8*)* @ecore_grc_dump_regs_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_regs_hdr(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %12, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = add nsw i32 2, %20
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @ecore_dump_section_hdr(i32* %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ecore_dump_num_param(i32* %39, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %16, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @ecore_dump_str_param(i32* %48, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %7
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ecore_dump_num_param(i32* %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %56, %7
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @ecore_dump_str_param(i32* %76, i32 %77, i8* %78, i8* %79)
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %72, %69, %66
  %84 = load i32, i32* %16, align 4
  ret i32 %84
}

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
