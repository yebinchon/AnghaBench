; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_dsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsdt_fp = common dso_local global i32* null, align 8
@dsdt_error = common dso_local global i64 0, align 8
@dsdt_indent_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" * bhyve DSDT template\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"DefinitionBlock (\22bhyve_dsdt.aml\22, \22DSDT\22, 2,\22BHYVE \22, \22BVDSDT  \22, 0x00000001)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"  Name (_S5, Package ()\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"      0x05,\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"      Zero,\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"  })\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"  Scope (_SB.PC00)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"    Device (HPET)\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"      Name (_HID, EISAID(\22PNP0103\22))\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"      Name (_UID, 0)\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"      Name (_CRS, ResourceTemplate ()\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"      {\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"      })\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"    }\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"  }\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @basl_fwrite_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_fwrite_dsdt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  store i32* %4, i32** @dsdt_fp, align 8
  store i64 0, i64* @dsdt_error, align 8
  store i64 0, i64* @dsdt_indent_level, align 8
  %5 = call i32 @dsdt_line(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @dsdt_line(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @dsdt_line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 @dsdt_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 @dsdt_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 @dsdt_line(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 (...) @pci_write_dsdt()
  %16 = call i32 @dsdt_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %17 = call i32 @dsdt_line(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %18 = call i32 @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %20 = call i32 @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %21 = call i32 @dsdt_line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %22 = call i32 @dsdt_line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %23 = call i32 @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %24 = call i32 @dsdt_line(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %25 = call i32 @dsdt_indent(i32 4)
  %26 = call i32 @dsdt_fixed_mem32(i32 -19922944, i32 1024)
  %27 = call i32 @dsdt_unindent(i32 4)
  %28 = call i32 @dsdt_line(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %29 = call i32 @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %30 = call i32 @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %31 = call i32 @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %32 = load i64, i64* @dsdt_error, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i64, i64* @dsdt_error, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %1
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @EFFLUSH(i32* %38)
  store i32 0, i32* %2, align 4
  br label %42

40:                                               ; No predecessors!
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %37, %34
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dsdt_line(i8*) #1

declare dso_local i32 @pci_write_dsdt(...) #1

declare dso_local i32 @dsdt_indent(i32) #1

declare dso_local i32 @dsdt_fixed_mem32(i32, i32) #1

declare dso_local i32 @dsdt_unindent(i32) #1

declare dso_local i32 @EFFLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
