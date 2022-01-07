; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_lookup_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_lookup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@M_LINKER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__start_set_\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__stop_set_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8***, i8***, i32*)* @link_elf_lookup_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_elf_lookup_set(i32 %0, i8* %1, i8*** %2, i8*** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i8*** %3, i8**** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 13
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @M_LINKER, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call i8* @malloc(i32 %24, i32 %25, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @link_elf_lookup_symbol(i32 %32, i8* %33, i32* %11)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %99

38:                                               ; preds = %5
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @link_elf_symbol_values(i32 %39, i32 %40, %struct.TYPE_3__* %12)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ESRCH, align 4
  store i32 %46, i32* %17, align 4
  br label %99

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8**
  store i8** %50, i8*** %14, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @link_elf_lookup_symbol(i32 %55, i8* %56, i32* %11)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %99

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @link_elf_symbol_values(i32 %62, i32 %63, %struct.TYPE_3__* %12)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @ESRCH, align 4
  store i32 %69, i32* %17, align 4
  br label %99

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8**
  store i8** %73, i8*** %15, align 8
  %74 = load i8**, i8*** %15, align 8
  %75 = load i8**, i8*** %14, align 8
  %76 = ptrtoint i8** %74 to i64
  %77 = ptrtoint i8** %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %18, align 4
  %81 = load i8***, i8**** %8, align 8
  %82 = icmp ne i8*** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i8**, i8*** %14, align 8
  %85 = load i8***, i8**** %8, align 8
  store i8** %84, i8*** %85, align 8
  br label %86

86:                                               ; preds = %83, %70
  %87 = load i8***, i8**** %9, align 8
  %88 = icmp ne i8*** %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8**, i8*** %15, align 8
  %91 = load i8***, i8**** %9, align 8
  store i8** %90, i8*** %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %18, align 4
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %68, %60, %45, %37
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* @M_LINKER, align 4
  %102 = call i32 @free(i8* %100, i32 %101)
  %103 = load i32, i32* %17, align 4
  ret i32 %103
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @link_elf_lookup_symbol(i32, i8*, i32*) #1

declare dso_local i32 @link_elf_symbol_values(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
