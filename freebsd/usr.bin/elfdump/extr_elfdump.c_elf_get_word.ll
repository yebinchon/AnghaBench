; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_get_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_elf_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@EI_CLASS = common dso_local global i64 0, align 8
@elf32_offsets = common dso_local global i32* null, align 8
@EI_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid data format\00", align 1
@elf64_offsets = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid class\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @elf_get_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_get_word(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @EI_CLASS, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %62 [
    i32 133, label %14
    i32 132, label %37
    i32 131, label %60
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32*, i32** @elf32_offsets, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  store i8* %21, i8** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @EI_DATA, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 130, label %31
    i32 128, label %34
  ]

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @be32dec(i8* %29)
  store i64 %30, i64* %7, align 8
  br label %36

31:                                               ; preds = %14
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @le32dec(i8* %32)
  store i64 %33, i64* %7, align 8
  br label %36

34:                                               ; preds = %14
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %14, %31, %28
  br label %62

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load i32*, i32** @elf64_offsets, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8* %44, i8** %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @EI_DATA, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %59 [
    i32 129, label %51
    i32 130, label %54
    i32 128, label %57
  ]

51:                                               ; preds = %37
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @be32dec(i8* %52)
  store i64 %53, i64* %7, align 8
  br label %59

54:                                               ; preds = %37
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @le32dec(i8* %55)
  store i64 %56, i64* %7, align 8
  br label %59

57:                                               ; preds = %37
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %37, %54, %51
  br label %62

60:                                               ; preds = %3
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %3, %59, %36
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i64 @be32dec(i8*) #1

declare dso_local i64 @le32dec(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
