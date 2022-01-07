; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_madt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_basl_fwrite_madt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" * bhyve MADT template\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Signature : \22APIC\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[0004]\09\09Table Length : 00000000\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Revision : 01\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Checksum : 00\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"[0006]\09\09Oem ID : \22BHYVE \22\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"[0008]\09\09Oem Table ID : \22BVMADT  \22\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"[0004]\09\09Oem Revision : 00000001\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"[0004]\09\09Asl Compiler ID : \22xxxx\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Asl Compiler Revision : 00000000\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"[0004]\09\09Local Apic Address : FEE00000\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Flags (decoded below) : 00000001\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\09\09\09PC-AT Compatibility : 1\0A\00", align 1
@basl_ncpu = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 00\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 08\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"[0001]\09\09Processor ID : %02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"[0001]\09\09Local Apic ID : %02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\09\09\09Processor Enabled : 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\09\09\09Runtime Online Capable : 0\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 01\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 0C\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"[0001]\09\09I/O Apic ID : %02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Reserved : 00\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Address : fec00000\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"[0004]\09\09Interrupt : 00000000\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 02\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"[0001]\09\09Bus : 00\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Source : 00\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"[0004]\09\09Interrupt : 00000002\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"[0002]\09\09Flags (decoded below) : 0005\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\09\09\09Polarity : 1\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\09\09\09Trigger Mode : 1\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Source : %02X\0A\00", align 1
@SCI_INT = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"[0004]\09\09Interrupt : %08X\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"[0002]\09\09Flags (decoded below) : 0000\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"\09\09\09Polarity : 3\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"\09\09\09Trigger Mode : 3\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 04\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 06\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"[0001]\09\09Processor ID : FF\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"[0001]\09\09Interrupt Input LINT : 01\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @basl_fwrite_madt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_fwrite_madt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %62, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @basl_ncpu, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 0)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @SCI_INT, align 4
  %106 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @SCI_INT, align 4
  %109 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0))
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0))
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0))
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0))
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0))
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @EFFLUSH(i32* %134)
  store i32 0, i32* %2, align 4
  br label %138

136:                                              ; No predecessors!
  %137 = load i32, i32* @errno, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %65
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @EFPRINTF(i32*, i8*, ...) #1

declare dso_local i32 @EFFLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
