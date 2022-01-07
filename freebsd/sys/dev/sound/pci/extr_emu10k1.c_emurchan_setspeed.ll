; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@audigy_adcspeed = common dso_local global i32* null, align 8
@adcspeed = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @emurchan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emurchan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_rchinfo*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %9, %struct.sc_rchinfo** %7, align 8
  %10 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %11 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %16 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32*, i32** @audigy_adcspeed, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @audigy_recval(i32 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %14
  %28 = load i32*, i32** @adcspeed, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @emu_recval(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %36 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 48000, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %42 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 8000, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %49 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %51 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

declare dso_local i64 @audigy_recval(i32) #1

declare dso_local i64 @emu_recval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
