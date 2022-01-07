; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_banks_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_banks_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32 }

@LBC_DEV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"UPM mode not supported yet!\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbc_softc*)* @lbc_banks_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbc_banks_enable(%struct.lbc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lbc_softc* %0, %struct.lbc_softc** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %143, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @LBC_DEV_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %146

12:                                               ; preds = %8
  %13 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %143

24:                                               ; preds = %12
  %25 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %50 [
    i32 8, label %41
    i32 16, label %44
    i32 32, label %47
  ]

41:                                               ; preds = %24
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %42, 2048
  store i64 %43, i64* %5, align 8
  br label %52

44:                                               ; preds = %24
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, 4096
  store i64 %46, i64* %5, align 8
  br label %52

47:                                               ; preds = %24
  %48 = load i64, i64* %5, align 8
  %49 = or i64 %48, 6144
  store i64 %49, i64* %5, align 8
  br label %52

50:                                               ; preds = %24
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %147

52:                                               ; preds = %47, %44, %41
  %53 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 9
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %5, align 8
  %65 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %5, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %5, align 8
  %77 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %5, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %5, align 8
  %89 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %5, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = or i64 %101, 1
  store i64 %102, i64* %5, align 8
  %103 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %104 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @LBC85XX_BR(i32 %109)
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @bus_space_write_4(i32 %105, i32 %108, i32 %110, i64 %111)
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @lbc_address_mask(i64 %113)
  store i64 %114, i64* %5, align 8
  %115 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %116 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %132 [
    i32 131, label %123
    i32 132, label %126
    i32 130, label %129
    i32 129, label %129
    i32 128, label %129
  ]

123:                                              ; preds = %52
  %124 = load i64, i64* %5, align 8
  %125 = or i64 %124, 4087
  store i64 %125, i64* %5, align 8
  br label %132

126:                                              ; preds = %52
  %127 = load i64, i64* %5, align 8
  %128 = or i64 %127, 1942
  store i64 %128, i64* %5, align 8
  br label %132

129:                                              ; preds = %52, %52, %52
  %130 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @ENOSYS, align 4
  store i32 %131, i32* %6, align 4
  br label %147

132:                                              ; preds = %52, %126, %123
  %133 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %134 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %137 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @LBC85XX_OR(i32 %139)
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @bus_space_write_4(i32 %135, i32 %138, i32 %140, i64 %141)
  br label %143

143:                                              ; preds = %132, %23
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %8

146:                                              ; preds = %8
  store i32 0, i32* %2, align 4
  br label %151

147:                                              ; preds = %129, %50
  %148 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %149 = call i32 @lbc_banks_unmap(%struct.lbc_softc* %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %147, %146
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i64) #1

declare dso_local i32 @LBC85XX_BR(i32) #1

declare dso_local i64 @lbc_address_mask(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LBC85XX_OR(i32) #1

declare dso_local i32 @lbc_banks_unmap(%struct.lbc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
