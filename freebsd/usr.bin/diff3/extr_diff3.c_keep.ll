; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_keep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_keep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@last = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.range*)* @keep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keep(i32 %0, %struct.range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.range, align 8
  store i32 %0, i32* %3, align 4
  store %struct.range* %1, %struct.range** %4, align 8
  %7 = load i32*, i32** @last, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @last, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %9, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.range*, %struct.range** %4, align 8
  %17 = getelementptr inbounds %struct.range, %struct.range* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %18, %20
  %22 = getelementptr inbounds %struct.range, %struct.range* %6, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load %struct.range*, %struct.range** %4, align 8
  %24 = getelementptr inbounds %struct.range, %struct.range* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %25, %27
  %29 = getelementptr inbounds %struct.range, %struct.range* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @change(i32 %30, %struct.range* %6, i32 1)
  ret void
}

declare dso_local i32 @change(i32, %struct.range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
