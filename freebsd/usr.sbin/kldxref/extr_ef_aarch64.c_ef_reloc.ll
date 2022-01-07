; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_aarch64.c_ef_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_aarch64.c_ef_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_file = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EF_RELOC_RELA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unhandled relocation type %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef_reloc(%struct.elf_file* %0, i8* %1, i32 %2, i64 %3, i64 %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.elf_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__*, align 8
  store %struct.elf_file* %0, %struct.elf_file** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @EF_RELOC_RELA, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %8, align 4
  br label %68

25:                                               ; preds = %7
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %19, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %13, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %16, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ELF_R_TYPE(i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i64*, i64** %16, align 8
  %45 = bitcast i64* %44 to i8*
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %25
  %49 = load i64*, i64** %16, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = load i8*, i8** %15, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = icmp uge i8* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %25
  store i32 0, i32* %8, align 4
  br label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %18, align 4
  switch i32 %57, label %64 [
    i32 128, label %58
    i32 129, label %63
  ]

58:                                               ; preds = %56
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64*, i64** %16, align 8
  store i64 %61, i64* %62, align 8
  br label %67

63:                                               ; preds = %56
  br label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %63, %58
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %55, %23
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
