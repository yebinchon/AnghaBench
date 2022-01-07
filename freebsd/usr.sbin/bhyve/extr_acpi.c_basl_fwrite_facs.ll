; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_facs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_facs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" * bhyve FACS template\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Signature : \22FACS\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[0004]\09\09Length : 00000040\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"[0004]\09\09Hardware Signature : 00000000\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"[0004]\09\0932 Firmware Waking Vector : 00000000\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[0004]\09\09Global Lock : 00000000\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Flags (decoded below) : 00000000\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\09\09\09S4BIOS Support Present : 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\09\09\0964-bit Wake Supported (V2) : 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"[0008]\09\0964 Firmware Waking Vector : 0000000000000000\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"[0001]\09\09Version : 02\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"[0003]\09\09Reserved : 000000\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"[0004]\09\09OspmFlags (decoded below) : 00000000\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\09\09\0964-bit Wake Env Required (V2) : 0\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @basl_fwrite_facs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_fwrite_facs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @EFPRINTF(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @EFPRINTF(i32* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @EFPRINTF(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @EFPRINTF(i32* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @EFPRINTF(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @EFPRINTF(i32* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @EFPRINTF(i32* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @EFPRINTF(i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @EFPRINTF(i32* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @EFPRINTF(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @EFPRINTF(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @EFPRINTF(i32* %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @EFPRINTF(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @EFPRINTF(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @EFPRINTF(i32* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @EFPRINTF(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @EFFLUSH(i32* %36)
  store i32 0, i32* %2, align 4
  br label %40

38:                                               ; No predecessors!
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @EFPRINTF(i32*, i8*) #1

declare dso_local i32 @EFFLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
