; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_PHENTSIZE = common dso_local global i32 0, align 4
@E_PHNUM = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0Aprogram header:\0A\00", align 1
@P_TYPE = common dso_local global i32 0, align 4
@P_OFFSET = common dso_local global i32 0, align 4
@P_VADDR = common dso_local global i32 0, align 4
@P_PADDR = common dso_local global i32 0, align 4
@P_FILESZ = common dso_local global i32 0, align 4
@P_MEMSZ = common dso_local global i32 0, align 4
@P_FLAGS = common dso_local global i32 0, align 4
@P_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"entry: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09p_type: %s\0A\00", align 1
@p_types = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"\09p_offset: %jd\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09p_vaddr: %#jx\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\09p_paddr: %#jx\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\09p_filesz: %jd\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09p_memsz: %jd\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\09p_flags: %s\0A\00", align 1
@p_flags = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"\09p_align: %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @elf_print_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_phdr(i32* %0, i8* %1) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @E_PHENTSIZE, align 4
  %20 = call i64 @elf_get_quarter(i32* %17, i32* %18, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @E_PHNUM, align 4
  %24 = call i64 @elf_get_quarter(i32* %21, i32* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @out, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %113, %2
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = mul nsw i64 %35, %36
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8* %38, i8** %15, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* @P_TYPE, align 4
  %42 = call i64 @elf_get_word(i32* %39, i8* %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i32, i32* @P_OFFSET, align 4
  %46 = call i64 @elf_get_off(i32* %43, i8* %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i32, i32* @P_VADDR, align 4
  %50 = call i64 @elf_get_addr(i32* %47, i8* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* @P_PADDR, align 4
  %54 = call i64 @elf_get_addr(i32* %51, i8* %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* @P_FILESZ, align 4
  %58 = call i64 @elf_get_size(i32* %55, i8* %56, i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* @P_MEMSZ, align 4
  %62 = call i64 @elf_get_size(i32* %59, i8* %60, i32 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* @P_FLAGS, align 4
  %66 = call i64 @elf_get_word(i32* %63, i8* %64, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* @P_ALIGN, align 4
  %70 = call i64 @elf_get_size(i32* %67, i8* %68, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i32, i32* @out, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @out, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @out, align 4
  %77 = load i8**, i8*** @p_types, align 8
  %78 = load i64, i64* %7, align 8
  %79 = and i64 %78, 7
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @out, align 4
  %84 = load i64, i64* %8, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @out, align 4
  %88 = load i64, i64* %9, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @out, align 4
  %92 = load i64, i64* %10, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @out, align 4
  %96 = load i64, i64* %11, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @out, align 4
  %100 = load i64, i64* %12, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @out, align 4
  %104 = load i8**, i8*** @p_flags, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @out, align 4
  %110 = load i64, i64* %14, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %32
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %27

116:                                              ; preds = %27
  ret void
}

declare dso_local i64 @elf_get_quarter(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @elf_get_word(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_off(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_addr(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_size(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
