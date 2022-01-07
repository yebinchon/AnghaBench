; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elf32core.c_elf_convert_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elf32core.c_elf_convert_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.reg*)* @elf_convert_gregset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_convert_gregset(%struct.TYPE_3__* %0, %struct.reg* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.reg*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.reg* %1, %struct.reg** %4, align 8
  %5 = load %struct.reg*, %struct.reg** %4, align 8
  %6 = getelementptr inbounds %struct.reg, %struct.reg* %5, i32 0, i32 24
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 26
  store i32 %7, i32* %9, align 4
  %10 = load %struct.reg*, %struct.reg** %4, align 8
  %11 = getelementptr inbounds %struct.reg, %struct.reg* %10, i32 0, i32 23
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 25
  store i32 %12, i32* %14, align 8
  %15 = load %struct.reg*, %struct.reg** %4, align 8
  %16 = getelementptr inbounds %struct.reg, %struct.reg* %15, i32 0, i32 22
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 24
  store i32 %17, i32* %19, align 4
  %20 = load %struct.reg*, %struct.reg** %4, align 8
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 23
  store i32 %22, i32* %24, align 8
  %25 = load %struct.reg*, %struct.reg** %4, align 8
  %26 = getelementptr inbounds %struct.reg, %struct.reg* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 22
  store i32 %27, i32* %29, align 4
  %30 = load %struct.reg*, %struct.reg** %4, align 8
  %31 = getelementptr inbounds %struct.reg, %struct.reg* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 21
  store i32 %32, i32* %34, align 8
  %35 = load %struct.reg*, %struct.reg** %4, align 8
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 20
  store i32 %37, i32* %39, align 4
  %40 = load %struct.reg*, %struct.reg** %4, align 8
  %41 = getelementptr inbounds %struct.reg, %struct.reg* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 8
  %45 = load %struct.reg*, %struct.reg** %4, align 8
  %46 = getelementptr inbounds %struct.reg, %struct.reg* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 18
  store i32 %47, i32* %49, align 4
  %50 = load %struct.reg*, %struct.reg** %4, align 8
  %51 = getelementptr inbounds %struct.reg, %struct.reg* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 17
  store i32 %52, i32* %54, align 8
  %55 = load %struct.reg*, %struct.reg** %4, align 8
  %56 = getelementptr inbounds %struct.reg, %struct.reg* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 4
  %60 = load %struct.reg*, %struct.reg** %4, align 8
  %61 = getelementptr inbounds %struct.reg, %struct.reg* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 15
  store i32 %62, i32* %64, align 8
  %65 = load %struct.reg*, %struct.reg** %4, align 8
  %66 = getelementptr inbounds %struct.reg, %struct.reg* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 14
  store i32 %67, i32* %69, align 4
  %70 = load %struct.reg*, %struct.reg** %4, align 8
  %71 = getelementptr inbounds %struct.reg, %struct.reg* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 8
  %75 = load %struct.reg*, %struct.reg** %4, align 8
  %76 = getelementptr inbounds %struct.reg, %struct.reg* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 4
  %80 = load %struct.reg*, %struct.reg** %4, align 8
  %81 = getelementptr inbounds %struct.reg, %struct.reg* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
