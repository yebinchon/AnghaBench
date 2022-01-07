; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbiowrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbiowrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.pbio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PBIO_BUFSIZ = common dso_local global i32 0, align 4
@PBIO_PORTA = common dso_local global i32 0, align 4
@PBIO_PORTB = common dso_local global i32 0, align 4
@PBIO_PORTC = common dso_local global i32 0, align 4
@PBIOPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pbioop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @pbiowrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbiowrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pbio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = call i32 @UNIT(%struct.cdev* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.cdev*, %struct.cdev** %5, align 8
  %19 = call i32 @PORT(%struct.cdev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.pbio_softc* @pbio_addr(i32 %20)
  store %struct.pbio_softc* %21, %struct.pbio_softc** %8, align 8
  %22 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %23 = icmp eq %struct.pbio_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %4, align 4
  br label %158

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %156, %26
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %157

32:                                               ; preds = %27
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PBIO_BUFSIZ, align 4
  %37 = call i32 @min(i64 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %39 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = call i32 @uiomove(i8* %45, i32 %46, %struct.uio* %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %158

52:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %153, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %156

57:                                               ; preds = %53
  %58 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %59 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %14, align 1
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %123 [
    i32 0, label %71
    i32 1, label %76
    i32 2, label %81
    i32 3, label %102
  ]

71:                                               ; preds = %57
  %72 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %73 = load i32, i32* @PBIO_PORTA, align 4
  %74 = load i8, i8* %14, align 1
  %75 = call i32 @pboutb(%struct.pbio_softc* %72, i32 %73, i8 signext %74)
  br label %123

76:                                               ; preds = %57
  %77 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %78 = load i32, i32* @PBIO_PORTB, align 4
  %79 = load i8, i8* %14, align 1
  %80 = call i32 @pboutb(%struct.pbio_softc* %77, i32 %78, i8 signext %79)
  br label %123

81:                                               ; preds = %57
  %82 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %83 = load i32, i32* @PBIO_PORTC, align 4
  %84 = call signext i8 @pbinb(%struct.pbio_softc* %82, i32 %83)
  store i8 %84, i8* %15, align 1
  %85 = load i8, i8* %15, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 15
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %15, align 1
  %89 = load i8, i8* %14, align 1
  %90 = sext i8 %89 to i32
  %91 = shl i32 %90, 4
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %14, align 1
  %93 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %94 = load i32, i32* @PBIO_PORTC, align 4
  %95 = load i8, i8* %14, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %15, align 1
  %98 = sext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = call i32 @pboutb(%struct.pbio_softc* %93, i32 %94, i8 signext %100)
  br label %123

102:                                              ; preds = %57
  %103 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %104 = load i32, i32* @PBIO_PORTC, align 4
  %105 = call signext i8 @pbinb(%struct.pbio_softc* %103, i32 %104)
  store i8 %105, i8* %15, align 1
  %106 = load i8, i8* %15, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 240
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %15, align 1
  %110 = load i8, i8* %14, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 15
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %115 = load i32, i32* @PBIO_PORTC, align 4
  %116 = load i8, i8* %15, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* %14, align 1
  %119 = sext i8 %118 to i32
  %120 = or i32 %117, %119
  %121 = trunc i32 %120 to i8
  %122 = call i32 @pboutb(%struct.pbio_softc* %114, i32 %115, i8 signext %121)
  br label %123

123:                                              ; preds = %57, %102, %81, %76, %71
  %124 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %125 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %123
  %134 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %135 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = ptrtoint i64* %140 to i32
  %142 = load i32, i32* @PBIOPRI, align 4
  %143 = load %struct.pbio_softc*, %struct.pbio_softc** %8, align 8
  %144 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @tsleep(i32 %141, i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %133, %123
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %53

156:                                              ; preds = %53
  br label %27

157:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %50, %24
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @UNIT(%struct.cdev*) #1

declare dso_local i32 @PORT(%struct.cdev*) #1

declare dso_local %struct.pbio_softc* @pbio_addr(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @pboutb(%struct.pbio_softc*, i32, i8 signext) #1

declare dso_local signext i8 @pbinb(%struct.pbio_softc*, i32) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
