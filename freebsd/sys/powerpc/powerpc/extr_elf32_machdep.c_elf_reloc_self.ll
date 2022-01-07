; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf32_machdep.c_elf_reloc_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf32_machdep.c_elf_reloc_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@DT_NULL = common dso_local global i32 0, align 4
@R_PPC_RELATIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_reloc_self(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %33, %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DT_NULL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %32 [
    i32 129, label %19
    i32 128, label %27
  ]

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %5, align 8
  br label %32

27:                                               ; preds = %15
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %15, %27, %19
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %3, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = ptrtoint %struct.TYPE_6__* %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %38, %39
  %41 = inttoptr i64 %40 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %6, align 8
  br label %42

42:                                               ; preds = %67, %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = icmp ult %struct.TYPE_6__* %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ELF_R_TYPE(i32 %49)
  %51 = load i64, i64* @R_PPC_RELATIVE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %67

54:                                               ; preds = %46
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = inttoptr i64 %59 to i64*
  store i64* %60, i64** %8, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %54, %53
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %5, align 8
  br label %42

70:                                               ; preds = %42
  ret void
}

declare dso_local i64 @ELF_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
