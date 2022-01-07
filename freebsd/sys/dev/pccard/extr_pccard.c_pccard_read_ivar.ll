; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32, i32, i32, i32, i32 }
%struct.pccard_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8**, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No pccard function pointer\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @pccard_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pccard_ivar*, align 8
  %11 = alloca %struct.pccard_function*, align 8
  %12 = alloca %struct.pccard_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %13)
  store %struct.pccard_ivar* %14, %struct.pccard_ivar** %10, align 8
  %15 = load %struct.pccard_ivar*, %struct.pccard_ivar** %10, align 8
  %16 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %15, i32 0, i32 0
  %17 = load %struct.pccard_function*, %struct.pccard_function** %16, align 8
  store %struct.pccard_function* %17, %struct.pccard_function** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %18)
  store %struct.pccard_softc* %19, %struct.pccard_softc** %12, align 8
  %20 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %21 = icmp ne %struct.pccard_function* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %26 [
    i32 135, label %28
    i32 136, label %39
    i32 129, label %46
    i32 131, label %53
    i32 132, label %60
    i32 134, label %67
    i32 133, label %73
    i32 128, label %79
    i32 130, label %88
    i32 138, label %97
    i32 137, label %106
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %116

28:                                               ; preds = %24
  %29 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %30 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %33 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  %37 = load i64*, i64** %9, align 8
  %38 = bitcast i64* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %115

39:                                               ; preds = %24
  %40 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %41 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %45 = call i32 @bcopy(i32 %42, i64* %43, i32 %44)
  br label %115

46:                                               ; preds = %24
  %47 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %48 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i64*, i64** %9, align 8
  %52 = bitcast i64* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %115

53:                                               ; preds = %24
  %54 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %55 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = bitcast i64* %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %115

60:                                               ; preds = %24
  %61 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %62 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = bitcast i64* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %115

67:                                               ; preds = %24
  %68 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %69 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i64*, i64** %9, align 8
  %72 = bitcast i64* %71 to i32*
  store i32 %70, i32* %72, align 4
  br label %115

73:                                               ; preds = %24
  %74 = load %struct.pccard_function*, %struct.pccard_function** %11, align 8
  %75 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i64*, i64** %9, align 8
  %78 = bitcast i64* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %115

79:                                               ; preds = %24
  %80 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %81 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = bitcast i64* %86 to i8**
  store i8* %85, i8** %87, align 8
  br label %115

88:                                               ; preds = %24
  %89 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %90 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = bitcast i64* %95 to i8**
  store i8* %94, i8** %96, align 8
  br label %115

97:                                               ; preds = %24
  %98 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %99 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = bitcast i64* %104 to i8**
  store i8* %103, i8** %105, align 8
  br label %115

106:                                              ; preds = %24
  %107 = load %struct.pccard_softc*, %struct.pccard_softc** %12, align 8
  %108 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 3
  %112 = load i8*, i8** %111, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = bitcast i64* %113 to i8**
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %106, %97, %88, %79, %73, %67, %60, %53, %46, %39, %28
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
