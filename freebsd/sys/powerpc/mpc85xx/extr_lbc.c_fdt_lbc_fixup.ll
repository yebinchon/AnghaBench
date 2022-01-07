; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_fdt_lbc_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_fdt_lbc_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lbc_devinfo = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bank-width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.lbc_softc*, %struct.lbc_devinfo*)* @fdt_lbc_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdt_lbc_fixup(i32 %0, %struct.lbc_softc* %1, %struct.lbc_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbc_softc*, align 8
  %6 = alloca %struct.lbc_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.lbc_softc* %1, %struct.lbc_softc** %5, align 8
  store %struct.lbc_devinfo* %2, %struct.lbc_devinfo** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = bitcast i32* %7 to i8*
  %11 = call i64 @OF_getprop(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10, i32 4)
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %6, align 8
  %16 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.lbc_softc*, %struct.lbc_softc** %5, align 8
  %19 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %38

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 8
  %31 = load %struct.lbc_softc*, %struct.lbc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %27, %13
  ret void
}

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
