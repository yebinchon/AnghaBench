; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_symbol_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_symbol_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@STT_GNU_IFUNC = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_5__*)* @link_elf_symbol_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_elf_symbol_values(i64 %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp uge %struct.TYPE_7__* %18, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %31
  %33 = icmp ult %struct.TYPE_7__* %24, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ELF_ST_TYPE(i32 %49)
  %51 = load i64, i64* @STT_GNU_IFUNC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load i64, i64* %10, align 8
  %55 = inttoptr i64 %54 to i64 ()*
  %56 = call i64 %55()
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %53, %34
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %68

66:                                               ; preds = %23, %3
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
