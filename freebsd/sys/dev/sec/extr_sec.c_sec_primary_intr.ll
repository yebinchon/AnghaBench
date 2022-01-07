; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_primary_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_primary_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32, i32, i32, i32, i32 }
%struct.sec_desc = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@controller = common dso_local global i32 0, align 4
@SEC_ISR = common dso_local global i32 0, align 4
@SEC_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"I/O error on channel %i!\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@SEC_ICR = common dso_local global i32 0, align 4
@descriptors = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sec_primary_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_primary_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sec_softc*, align 8
  %4 = alloca %struct.sec_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.sec_softc*
  store %struct.sec_softc* %9, %struct.sec_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %11 = load i32, i32* @controller, align 4
  %12 = call i32 @SEC_LOCK(%struct.sec_softc* %10, i32 %11)
  %13 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %14 = load i32, i32* @SEC_ISR, align 4
  %15 = call i32 @SEC_READ(%struct.sec_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SEC_CHANNELS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SEC_INT_CH_ERR(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %56

34:                                               ; preds = %27
  %35 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %41 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SEC_CHAN_CDPR(i32 %42)
  %44 = call i32 @SEC_READ(%struct.sec_softc* %41, i32 %43)
  %45 = call %struct.sec_desc* @sec_find_desc(%struct.sec_softc* %40, i32 %44)
  store %struct.sec_desc* %45, %struct.sec_desc** %4, align 8
  %46 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %47 = icmp ne %struct.sec_desc* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i64, i64* @EIO, align 8
  %50 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %51 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %34
  %53 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sec_channel_reset(%struct.sec_softc* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %33
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %23

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %62 = load i32, i32* @SEC_ICR, align 4
  %63 = call i32 @SEC_WRITE(%struct.sec_softc* %61, i32 %62, i32 -1)
  %64 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %65 = load i32, i32* @controller, align 4
  %66 = call i32 @SEC_UNLOCK(%struct.sec_softc* %64, i32 %65)
  %67 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %68 = load i32, i32* @descriptors, align 4
  %69 = call i32 @SEC_LOCK(%struct.sec_softc* %67, i32 %68)
  %70 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %71 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %72 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @SEC_DESC_SYNC(%struct.sec_softc* %70, i32 %73)
  br label %75

75:                                               ; preds = %96, %60
  %76 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %77 = call i64 @SEC_QUEUED_DESC_CNT(%struct.sec_softc* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %75
  %80 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %81 = call %struct.sec_desc* @SEC_GET_QUEUED_DESC(%struct.sec_softc* %80)
  store %struct.sec_desc* %81, %struct.sec_desc** %4, align 8
  %82 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %83 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 255
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %90 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %95 = call i32 @SEC_PUT_BACK_QUEUED_DESC(%struct.sec_softc* %94)
  br label %120

96:                                               ; preds = %88, %79
  %97 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %98 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %99 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @SEC_DESC_SYNC_POINTERS(%struct.sec_desc* %97, i32 %100)
  %102 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %103 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %106 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %110 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = call i32 @crypto_done(%struct.TYPE_4__* %111)
  %113 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %114 = call i32 @SEC_DESC_FREE_POINTERS(%struct.sec_desc* %113)
  %115 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %116 = load %struct.sec_desc*, %struct.sec_desc** %4, align 8
  %117 = call i32 @SEC_DESC_FREE_LT(%struct.sec_softc* %115, %struct.sec_desc* %116)
  %118 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %119 = call i32 @SEC_DESC_QUEUED2FREE(%struct.sec_softc* %118)
  br label %75

120:                                              ; preds = %93, %75
  %121 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %123 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @SEC_DESC_SYNC(%struct.sec_softc* %121, i32 %124)
  %126 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %127 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %120
  %131 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %132 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %7, align 4
  %134 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %135 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %120
  %137 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %138 = load i32, i32* @descriptors, align 4
  %139 = call i32 @SEC_UNLOCK(%struct.sec_softc* %137, i32 %138)
  %140 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %141 = call i32 @sec_enqueue(%struct.sec_softc* %140)
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %146 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @crypto_unblock(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %136
  ret void
}

declare dso_local i32 @SEC_LOCK(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_READ(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_INT_CH_ERR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.sec_desc* @sec_find_desc(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_CHAN_CDPR(i32) #1

declare dso_local i32 @sec_channel_reset(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @SEC_WRITE(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @SEC_UNLOCK(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_DESC_SYNC(%struct.sec_softc*, i32) #1

declare dso_local i64 @SEC_QUEUED_DESC_CNT(%struct.sec_softc*) #1

declare dso_local %struct.sec_desc* @SEC_GET_QUEUED_DESC(%struct.sec_softc*) #1

declare dso_local i32 @SEC_PUT_BACK_QUEUED_DESC(%struct.sec_softc*) #1

declare dso_local i32 @SEC_DESC_SYNC_POINTERS(%struct.sec_desc*, i32) #1

declare dso_local i32 @crypto_done(%struct.TYPE_4__*) #1

declare dso_local i32 @SEC_DESC_FREE_POINTERS(%struct.sec_desc*) #1

declare dso_local i32 @SEC_DESC_FREE_LT(%struct.sec_softc*, %struct.sec_desc*) #1

declare dso_local i32 @SEC_DESC_QUEUED2FREE(%struct.sec_softc*) #1

declare dso_local i32 @sec_enqueue(%struct.sec_softc*) #1

declare dso_local i32 @crypto_unblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
