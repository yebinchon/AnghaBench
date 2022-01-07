; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_symbol_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_symbol_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

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
  %10 = alloca i32, align 4
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
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp uge %struct.TYPE_7__* %15, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %28
  %30 = icmp ult %struct.TYPE_7__* %21, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ELF_ST_TYPE(i32 %51)
  %53 = load i64, i64* @STT_GNU_IFUNC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %31
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32 ()*
  %59 = call i32 %58()
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %31
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %136

69:                                               ; preds = %20, %3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = icmp eq %struct.TYPE_7__* %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOENT, align 4
  store i32 %78, i32* %4, align 4
  br label %136

79:                                               ; preds = %69
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp uge %struct.TYPE_7__* %80, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %93
  %95 = icmp ult %struct.TYPE_7__* %86, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @ELF_ST_TYPE(i32 %116)
  %118 = load i64, i64* @STT_GNU_IFUNC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %96
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32 ()*
  %124 = call i32 %123()
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %120, %96
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %136

134:                                              ; preds = %85, %79
  %135 = load i32, i32* @ENOENT, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %125, %77, %60
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
