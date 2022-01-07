; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_sparc64.c_ef_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_sparc64.c_ef_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_file = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"unhandled relocation type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef_reloc(%struct.elf_file* %0, i8* %1, i32 %2, i64 %3, i64 %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.elf_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i64, align 8
  store %struct.elf_file* %0, %struct.elf_file** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %69 [
    i32 129, label %18
  ]

18:                                               ; preds = %7
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %15, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* %12, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %18
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ELF_R_TYPE(i32 %41)
  switch i64 %42, label %60 [
    i64 128, label %43
  ]

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %16, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i64, i64* %12, align 8
  %57 = sub nsw i64 %55, %56
  %58 = getelementptr inbounds i32, i32* %50, i64 %57
  %59 = call i32 @memcpy(i32* %58, i64* %16, i32 8)
  br label %67

60:                                               ; preds = %38
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ELF_R_TYPE(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %43
  br label %68

68:                                               ; preds = %67, %28, %18
  br label %69

69:                                               ; preds = %7, %68
  ret i32 0
}

declare dso_local i64 @ELF_R_TYPE(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
