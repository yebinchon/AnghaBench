; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_ehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_CLASS = common dso_local global i32 0, align 4
@E_DATA = common dso_local global i32 0, align 4
@E_OSABI = common dso_local global i32 0, align 4
@E_TYPE = common dso_local global i32 0, align 4
@E_MACHINE = common dso_local global i32 0, align 4
@E_VERSION = common dso_local global i32 0, align 4
@E_ENTRY = common dso_local global i32 0, align 4
@E_PHOFF = common dso_local global i32 0, align 4
@E_SHOFF = common dso_local global i32 0, align 4
@E_FLAGS = common dso_local global i32 0, align 4
@E_EHSIZE = common dso_local global i32 0, align 4
@E_PHENTSIZE = common dso_local global i32 0, align 4
@E_PHNUM = common dso_local global i32 0, align 4
@E_SHENTSIZE = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\0Aelf header:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09e_ident: %s %s %s\0A\00", align 1
@ei_classes = common dso_local global i8** null, align 8
@ei_data = common dso_local global i8** null, align 8
@ei_abis = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"\09e_type: %s\0A\00", align 1
@e_types = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"\09e_machine: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09e_version: %s\0A\00", align 1
@ei_versions = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"\09e_entry: %#jx\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\09e_phoff: %jd\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09e_shoff: %jd\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09e_flags: %jd\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09e_ehsize: %jd\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\09e_phentsize: %jd\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\09e_phnum: %jd\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\09e_shentsize: %jd\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\09e_shnum: %jd\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\09e_shstrndx: %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @elf_print_ehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_ehdr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @E_CLASS, align 4
  %24 = call i64 @elf_get_byte(i32* %21, i32* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @E_DATA, align 4
  %28 = call i64 @elf_get_byte(i32* %25, i32* %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @E_OSABI, align 4
  %32 = call i64 @elf_get_byte(i32* %29, i32* %30, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @E_TYPE, align 4
  %36 = call i64 @elf_get_quarter(i32* %33, i32* %34, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @E_MACHINE, align 4
  %40 = call i64 @elf_get_quarter(i32* %37, i32* %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @E_VERSION, align 4
  %44 = call i64 @elf_get_word(i32* %41, i32* %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @E_ENTRY, align 4
  %48 = call i64 @elf_get_addr(i32* %45, i32* %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @E_PHOFF, align 4
  %52 = call i64 @elf_get_off(i32* %49, i32* %50, i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @E_SHOFF, align 4
  %56 = call i64 @elf_get_off(i32* %53, i32* %54, i32 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @E_FLAGS, align 4
  %60 = call i64 @elf_get_word(i32* %57, i32* %58, i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @E_EHSIZE, align 4
  %64 = call i64 @elf_get_quarter(i32* %61, i32* %62, i32 %63)
  store i64 %64, i64* %15, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @E_PHENTSIZE, align 4
  %68 = call i64 @elf_get_quarter(i32* %65, i32* %66, i32 %67)
  store i64 %68, i64* %16, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @E_PHNUM, align 4
  %72 = call i64 @elf_get_quarter(i32* %69, i32* %70, i32 %71)
  store i64 %72, i64* %17, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @E_SHENTSIZE, align 4
  %76 = call i64 @elf_get_quarter(i32* %73, i32* %74, i32 %75)
  store i64 %76, i64* %18, align 8
  %77 = load i32, i32* @out, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @out, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @out, align 4
  %82 = load i8**, i8*** @ei_classes, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** @ei_data, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** @ei_abis, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %89, i8* %93)
  %95 = load i32, i32* @out, align 4
  %96 = load i8**, i8*** @e_types, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @out, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i8* @e_machines(i64 %102)
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @out, align 4
  %106 = load i8**, i8*** @ei_versions, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* @out, align 4
  %112 = load i64, i64* %11, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* @out, align 4
  %116 = load i64, i64* %12, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @out, align 4
  %120 = load i64, i64* %13, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @out, align 4
  %124 = load i64, i64* %14, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* @out, align 4
  %128 = load i64, i64* %15, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* @out, align 4
  %132 = load i64, i64* %16, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* @out, align 4
  %136 = load i64, i64* %17, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @out, align 4
  %140 = load i64, i64* %18, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %141)
  %143 = load i8*, i8** %4, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %2
  %146 = load i32*, i32** %3, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @elf_get_shnum(i32* %146, i8* %147)
  store i64 %148, i64* %19, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = call i64 @elf_get_shstrndx(i32* %149, i8* %150)
  store i64 %151, i64* %20, align 8
  %152 = load i32, i32* @out, align 4
  %153 = load i64, i64* %19, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @out, align 4
  %157 = load i64, i64* %20, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %145, %2
  ret void
}

declare dso_local i64 @elf_get_byte(i32*, i32*, i32) #1

declare dso_local i64 @elf_get_quarter(i32*, i32*, i32) #1

declare dso_local i64 @elf_get_word(i32*, i32*, i32) #1

declare dso_local i64 @elf_get_addr(i32*, i32*, i32) #1

declare dso_local i64 @elf_get_off(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @e_machines(i64) #1

declare dso_local i64 @elf_get_shnum(i32*, i8*) #1

declare dso_local i64 @elf_get_shstrndx(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
