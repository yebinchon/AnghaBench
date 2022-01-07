; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_lookup_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_lookup_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i64, i8*, i64*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@STN_UNDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"ef_lookup_symbol: file %s have corrupted symbol table\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@STT_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, %struct.TYPE_6__**)* @ef_lookup_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef_lookup_symbol(%struct.TYPE_5__* %0, i8* %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @elf_hash(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = urem i64 %17, %20
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %91, %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @STN_UNDEF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %4, align 4
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %4, align 4
  br label %100

56:                                               ; preds = %40
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %56
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SHN_UNDEF, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ELF_ST_TYPE(i32 %82)
  %84 = load i64, i64* @STT_FUNC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79, %68
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %88, align 8
  store i32 0, i32* %4, align 4
  br label %100

89:                                               ; preds = %79, %74
  %90 = load i32, i32* @ENOENT, align 4
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %56
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  br label %24

98:                                               ; preds = %24
  %99 = load i32, i32* @ENOENT, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %89, %86, %50, %34
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @elf_hash(i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
