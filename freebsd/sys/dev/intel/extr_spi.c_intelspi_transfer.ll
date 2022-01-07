; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64 }
%struct.intelspi_softc = type { i32, i64, i32, i64, i64, %struct.spi_command*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@INTELSPI_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"intelspi\00", align 1
@EINTR = common dso_local global i32 0, align 4
@CS_LOW = common dso_local global i32 0, align 4
@INTELSPI_SSPREG_SSCR1 = common dso_local global i32 0, align 4
@SSCR1_TIE = common dso_local global i32 0, align 4
@SSCR1_RIE = common dso_local global i32 0, align 4
@SSCR1_TINTE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@CS_HIGH = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"transfer timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @intelspi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelspi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.intelspi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.intelspi_softc* @device_get_softc(i32 %11)
  store %struct.intelspi_softc* %12, %struct.intelspi_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %14 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %17 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %23 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %26 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %32 = call i32 @INTELSPI_LOCK(%struct.intelspi_softc* %31)
  br label %33

33:                                               ; preds = %52, %3
  %34 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %35 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @INTELSPI_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %43 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %42, i32 0, i32 6
  %44 = call i32 @mtx_sleep(i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EINTR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %50 = call i32 @INTELSPI_UNLOCK(%struct.intelspi_softc* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %144

52:                                               ; preds = %40
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* @INTELSPI_BUSY, align 4
  %55 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %56 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %58 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %59 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %58, i32 0, i32 5
  store %struct.spi_command* %57, %struct.spi_command** %59, align 8
  %60 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %61 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %63 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %65 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %68 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %72 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %74 = load i32, i32* @CS_LOW, align 4
  %75 = call i32 @intelspi_set_cs(%struct.intelspi_softc* %73, i32 %74)
  %76 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %77 = call i32 @intelspi_transact(%struct.intelspi_softc* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %53
  %80 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %81 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %82 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @SSCR1_TIE, align 4
  %84 = load i32, i32* @SSCR1_RIE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SSCR1_TINTE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %91 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %96 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %95, i32 0, i32 6
  %97 = load i32, i32* @hz, align 4
  %98 = mul nsw i32 %97, 2
  %99 = call i32 @mtx_sleep(i32 %94, i32* %96, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %79, %53
  %101 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %102 = load i32, i32* @CS_HIGH, align 4
  %103 = call i32 @intelspi_set_cs(%struct.intelspi_softc* %101, i32 %102)
  %104 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %105 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %104, i32 0, i32 5
  store %struct.spi_command* null, %struct.spi_command** %105, align 8
  %106 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %107 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %109 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %111 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %113 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %114 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @SSCR1_TIE, align 4
  %116 = load i32, i32* @SSCR1_RIE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SSCR1_TINTE, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %124 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %128 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @wakeup_one(i32 %129)
  %131 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %132 = call i32 @INTELSPI_UNLOCK(%struct.intelspi_softc* %131)
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @EWOULDBLOCK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %100
  %137 = load %struct.intelspi_softc*, %struct.intelspi_softc** %8, align 8
  %138 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @EIO, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %136, %100
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %48
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.intelspi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INTELSPI_LOCK(%struct.intelspi_softc*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @INTELSPI_UNLOCK(%struct.intelspi_softc*) #1

declare dso_local i32 @intelspi_set_cs(%struct.intelspi_softc*, i32) #1

declare dso_local i32 @intelspi_transact(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_READ(%struct.intelspi_softc*, i32) #1

declare dso_local i32 @INTELSPI_WRITE(%struct.intelspi_softc*, i32, i32) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
