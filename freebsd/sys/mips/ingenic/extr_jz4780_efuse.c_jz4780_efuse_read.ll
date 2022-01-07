; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_efuse_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_efuse_softc*, i32, i8*, i32)* @jz4780_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_efuse_read(%struct.jz4780_efuse_softc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.jz4780_efuse_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jz4780_efuse_softc* %0, %struct.jz4780_efuse_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %19, %4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 32, %16 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @jz4780_efuse_read_chunk(%struct.jz4780_efuse_softc* %21, i32 %22, i8* %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @jz4780_efuse_read_chunk(%struct.jz4780_efuse_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
