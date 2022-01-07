; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }

@AR_EEPROM_OFFSET = common dso_local global i32 0, align 4
@AR_CMD_RREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_read_eeprom(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %9 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %10 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %9)
  %11 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %12 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %11, i32 0, i32 0
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @AR_EEPROM_OFFSET, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %45, %1
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @htole32(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %26
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %35 = load i32, i32* @AR_CMD_RREG, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @otus_cmd(%struct.otus_softc* %34, i32 %35, i32* %36, i32 32, i32* %37, i32 32)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %48

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 32
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %14

48:                                               ; preds = %41, %14
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @otus_cmd(%struct.otus_softc*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
