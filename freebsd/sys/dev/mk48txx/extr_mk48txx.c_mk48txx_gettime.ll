; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.mk48txx_softc = type { i32, i32, i32 (i32, i64, i32)*, i32 (i32, i64)*, i64, i64 }
%struct.clocktime = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64 }

@MK48TXX_ICSR = common dso_local global i64 0, align 8
@MK48TXX_CSR_READ = common dso_local global i32 0, align 4
@MK48TXX_ISEC = common dso_local global i32 0, align 4
@MK48TXX_SEC_MASK = common dso_local global i32 0, align 4
@MK48TXX_IMIN = common dso_local global i32 0, align 4
@MK48TXX_MIN_MASK = common dso_local global i32 0, align 4
@MK48TXX_IHOUR = common dso_local global i32 0, align 4
@MK48TXX_HOUR_MASK = common dso_local global i32 0, align 4
@MK48TXX_IDAY = common dso_local global i32 0, align 4
@MK48TXX_DAY_MASK = common dso_local global i32 0, align 4
@MK48TXX_IMON = common dso_local global i32 0, align 4
@MK48TXX_MON_MASK = common dso_local global i32 0, align 4
@MK48TXX_IYEAR = common dso_local global i32 0, align 4
@MK48TXX_YEAR_MASK = common dso_local global i32 0, align 4
@MK48TXX_NO_CENT_ADJUST = common dso_local global i32 0, align 4
@MK48TXX_IWDAY = common dso_local global i32 0, align 4
@MK48TXX_WDAY_CB = common dso_local global i32 0, align 4
@MK48TXX_WDAY_CB_SHIFT = common dso_local global i32 0, align 4
@POSIX_BASE_YEAR = common dso_local global i32 0, align 4
@MK48TXX_WDAY_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mk48txx_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.mk48txx_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clocktime, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mk48txx_softc* @device_get_softc(i32 %10)
  store %struct.mk48txx_softc* %11, %struct.mk48txx_softc** %5, align 8
  %12 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %19 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %18, i32 0, i32 3
  %20 = load i32 (i32, i64)*, i32 (i32, i64)** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MK48TXX_ICSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 %20(i32 %21, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MK48TXX_CSR_READ, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %30 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %29, i32 0, i32 2
  %31 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @MK48TXX_ICSR, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %31(i32 %32, i64 %35, i32 %36)
  %38 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %39, i32 0, i32 3
  %41 = load i32 (i32, i64)*, i32 (i32, i64)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @MK48TXX_ISEC, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 %41(i32 %42, i64 %46)
  %48 = load i32, i32* @MK48TXX_SEC_MASK, align 4
  %49 = and i32 %47, %48
  %50 = call i8* @FROMBCD(i32 %49)
  %51 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  %52 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %52, i32 0, i32 3
  %54 = load i32 (i32, i64)*, i32 (i32, i64)** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* @MK48TXX_IMIN, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 %54(i32 %55, i64 %59)
  %61 = load i32, i32* @MK48TXX_MIN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = call i8* @FROMBCD(i32 %62)
  %64 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  store i8* %63, i8** %64, align 8
  %65 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %66 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %65, i32 0, i32 3
  %67 = load i32 (i32, i64)*, i32 (i32, i64)** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @MK48TXX_IHOUR, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 %67(i32 %68, i64 %72)
  %74 = load i32, i32* @MK48TXX_HOUR_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i8* @FROMBCD(i32 %75)
  %77 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %79 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %78, i32 0, i32 3
  %80 = load i32 (i32, i64)*, i32 (i32, i64)** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* @MK48TXX_IDAY, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 %80(i32 %81, i64 %85)
  %87 = load i32, i32* @MK48TXX_DAY_MASK, align 4
  %88 = and i32 %86, %87
  %89 = call i8* @FROMBCD(i32 %88)
  %90 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %93 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %92, i32 0, i32 3
  %94 = load i32 (i32, i64)*, i32 (i32, i64)** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @MK48TXX_IMON, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 %94(i32 %95, i64 %99)
  %101 = load i32, i32* @MK48TXX_MON_MASK, align 4
  %102 = and i32 %100, %101
  %103 = call i8* @FROMBCD(i32 %102)
  %104 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %106 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %105, i32 0, i32 3
  %107 = load i32 (i32, i64)*, i32 (i32, i64)** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* @MK48TXX_IYEAR, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = call i32 %107(i32 %108, i64 %112)
  %114 = load i32, i32* @MK48TXX_YEAR_MASK, align 4
  %115 = and i32 %113, %114
  %116 = call i8* @FROMBCD(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %8, align 4
  %118 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %119 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %8, align 4
  %125 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %126 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MK48TXX_NO_CENT_ADJUST, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %2
  %132 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %133 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %132, i32 0, i32 3
  %134 = load i32 (i32, i64)*, i32 (i32, i64)** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i64, i64* %6, align 8
  %137 = load i32, i32* @MK48TXX_IWDAY, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = call i32 %134(i32 %135, i64 %139)
  %141 = load i32, i32* @MK48TXX_WDAY_CB, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @MK48TXX_WDAY_CB_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = mul nsw i32 %144, 100
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %156

148:                                              ; preds = %2
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @POSIX_BASE_YEAR, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 100
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %148
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* %8, align 4
  %158 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %160 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %159, i32 0, i32 3
  %161 = load i32 (i32, i64)*, i32 (i32, i64)** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @MK48TXX_ICSR, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 %161(i32 %162, i64 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* @MK48TXX_CSR_READ, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %172 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %171, i32 0, i32 2
  %173 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @MK48TXX_ICSR, align 8
  %177 = add nsw i64 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = call i32 %173(i32 %174, i64 %177, i32 %178)
  %180 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %181 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %180, i32 0, i32 1
  %182 = call i32 @mtx_unlock(i32* %181)
  %183 = load %struct.timespec*, %struct.timespec** %4, align 8
  %184 = call i32 @clock_ct_to_ts(%struct.clocktime* %7, %struct.timespec* %183)
  ret i32 %184
}

declare dso_local %struct.mk48txx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @FROMBCD(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
