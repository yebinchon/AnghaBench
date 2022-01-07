; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_shdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_print_shdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0ANo section headers\0A\00", align 1
@E_MACHINE = common dso_local global i32 0, align 4
@E_SHENTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\0Asection header:\0A\00", align 1
@SH_NAME = common dso_local global i32 0, align 4
@SH_TYPE = common dso_local global i32 0, align 4
@SH_FLAGS = common dso_local global i32 0, align 4
@SH_ADDR = common dso_local global i32 0, align 4
@SH_OFFSET = common dso_local global i32 0, align 4
@SH_SIZE = common dso_local global i32 0, align 4
@SH_LINK = common dso_local global i32 0, align 4
@SH_INFO = common dso_local global i32 0, align 4
@SH_ADDRALIGN = common dso_local global i32 0, align 4
@SH_ENTSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"entry: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09sh_name: %s\0A\00", align 1
@shstrtab = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"\09sh_type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09sh_flags: %s\0A\00", align 1
@sh_flags = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"\09sh_addr: %#jx\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\09sh_offset: %jd\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09sh_size: %jd\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09sh_link: %jd\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\09sh_info: %jd\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\09sh_addralign: %jd\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\09sh_entsize: %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @elf_print_shdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_shdr(i32* %0, i8* %1) #0 {
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
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @out, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %137

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @E_MACHINE, align 4
  %29 = call i64 @elf_get_quarter(i32* %26, i32* %27, i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @E_SHENTSIZE, align 4
  %33 = call i64 @elf_get_quarter(i32* %30, i32* %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @elf_get_shnum(i32* %34, i8* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* @out, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %39

39:                                               ; preds = %134, %25
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %137

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %5, align 8
  %49 = mul nsw i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8* %50, i8** %18, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load i32, i32* @SH_NAME, align 4
  %54 = call i64 @elf_get_word(i32* %51, i8* %52, i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i32, i32* @SH_TYPE, align 4
  %58 = call i64 @elf_get_word(i32* %55, i8* %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load i32, i32* @SH_FLAGS, align 4
  %62 = call i64 @elf_get_word(i32* %59, i8* %60, i32 %61)
  store i64 %62, i64* %9, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load i32, i32* @SH_ADDR, align 4
  %66 = call i64 @elf_get_addr(i32* %63, i8* %64, i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = load i32, i32* @SH_OFFSET, align 4
  %70 = call i64 @elf_get_off(i32* %67, i8* %68, i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* @SH_SIZE, align 4
  %74 = call i64 @elf_get_size(i32* %71, i8* %72, i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* @SH_LINK, align 4
  %78 = call i64 @elf_get_word(i32* %75, i8* %76, i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* @SH_INFO, align 4
  %82 = call i64 @elf_get_word(i32* %79, i8* %80, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* @SH_ADDRALIGN, align 4
  %86 = call i64 @elf_get_size(i32* %83, i8* %84, i32 %85)
  store i64 %86, i64* %15, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = load i32, i32* @SH_ENTSIZE, align 4
  %90 = call i64 @elf_get_size(i32* %87, i8* %88, i32 %89)
  store i64 %90, i64* %16, align 8
  %91 = load i32, i32* @out, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @out, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @out, align 4
  %97 = load i64, i64* @shstrtab, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @out, align 4
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i8* @sh_types(i64 %102, i64 %103)
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @out, align 4
  %107 = load i8**, i8*** @sh_flags, align 8
  %108 = load i64, i64* %9, align 8
  %109 = and i64 %108, 7
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @out, align 4
  %114 = load i64, i64* %10, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @out, align 4
  %117 = load i64, i64* %11, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* @out, align 4
  %120 = load i64, i64* %12, align 8
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @out, align 4
  %123 = load i64, i64* %13, align 8
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @out, align 4
  %126 = load i64, i64* %14, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* @out, align 4
  %129 = load i64, i64* %15, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* @out, align 4
  %132 = load i64, i64* %16, align 8
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %44
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  br label %39

137:                                              ; preds = %22, %39
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @elf_get_quarter(i32*, i32*, i32) #1

declare dso_local i64 @elf_get_shnum(i32*, i8*) #1

declare dso_local i64 @elf_get_word(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_addr(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_off(i32*, i8*, i32) #1

declare dso_local i64 @elf_get_size(i32*, i8*, i32) #1

declare dso_local i8* @sh_types(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
