; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_regcompar.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_regcompar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumpreg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @regcompar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcompar(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dumpreg*, align 8
  %6 = alloca %struct.dumpreg*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dumpreg**
  %9 = load %struct.dumpreg*, %struct.dumpreg** %8, align 8
  store %struct.dumpreg* %9, %struct.dumpreg** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dumpreg**
  %12 = load %struct.dumpreg*, %struct.dumpreg** %11, align 8
  store %struct.dumpreg* %12, %struct.dumpreg** %6, align 8
  %13 = load %struct.dumpreg*, %struct.dumpreg** %5, align 8
  %14 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dumpreg*, %struct.dumpreg** %6, align 8
  %17 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
