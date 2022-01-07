; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_bus_enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_bus_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_softc = type { i32, i32, %struct.TYPE_2__*, i32*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ADB_COMMAND_BUS_RESET = common dso_local global i32 0, align 4
@ADB_COMMAND_TALK = common dso_local global i32 0, align 4
@ADB_COMMAND_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adb_bus_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_bus_enumerate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.adb_softc* @device_get_softc(i32 %12)
  store %struct.adb_softc* %13, %struct.adb_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %24 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %25, i32 0, i32 0
  store i32 65535, i32* %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %46, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %33 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  %39 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ADB_COMMAND_BUS_RESET, align 4
  %52 = call i32 @adb_send_raw_packet_sync(i32 %50, i32 0, i32 %51, i32 0, i32 0, i32* null, i32* null)
  %53 = call i32 @DELAY(i32 1500)
  store i32 8, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %154, %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %55, 7
  br i1 %56, label %57, label %157

57:                                               ; preds = %54
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %150, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %62 = call i32 @adb_send_raw_packet_sync(i32 %59, i32 %60, i32 %61, i32 3, i32 0, i32* null, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %58
  %66 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %67 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 61440
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, 254
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ADB_COMMAND_LISTEN, align 4
  %86 = call i32 @adb_send_raw_packet_sync(i32 %83, i32 %84, i32 %85, i32 3, i32 4, i32* %7, i32* null)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %90 = call i32 @adb_send_raw_packet_sync(i32 %87, i32 %88, i32 %89, i32 3, i32 0, i32* null, i32* null)
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %93 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %65
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %65
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %149

106:                                              ; preds = %58
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %106
  %110 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %111 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 61440
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, 15
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @ADB_COMMAND_LISTEN, align 4
  %128 = call i32 @adb_send_raw_packet_sync(i32 %125, i32 %126, i32 %127, i32 3, i32 4, i32* %7, i32* null)
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %132 = call i32 @adb_send_raw_packet_sync(i32 %129, i32 %130, i32 %131, i32 3, i32 0, i32* null, i32* null)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %135 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 %133, i32* %140, align 4
  %141 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %142 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  br label %153

148:                                              ; preds = %106
  br label %149

149:                                              ; preds = %148, %103
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %58, label %153

153:                                              ; preds = %150, %109
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %54

157:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %195, %157
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 16
  br i1 %160, label %161, label %198

161:                                              ; preds = %158
  %162 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %163 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %162, i32 0, i32 2
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %161
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @device_add_child(i32 %172, i32* null, i32 -1)
  %174 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %175 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %173, i32* %179, align 4
  %180 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %181 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %188 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = call i32 @device_set_ivars(i32 %186, %struct.TYPE_2__* %192)
  br label %194

194:                                              ; preds = %171, %161
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %158

198:                                              ; preds = %158
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @bus_generic_attach(i32 %199)
  %201 = load %struct.adb_softc*, %struct.adb_softc** %4, align 8
  %202 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %201, i32 0, i32 1
  %203 = call i32 @config_intrhook_disestablish(i32* %202)
  ret void
}

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @adb_send_raw_packet_sync(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
