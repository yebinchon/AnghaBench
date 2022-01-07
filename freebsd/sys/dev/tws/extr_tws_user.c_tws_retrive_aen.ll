; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_retrive_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_retrive_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.tws_ioctl_packet = type { %struct.tws_event_packet*, %struct.TYPE_4__ }
%struct.tws_event_packet = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@TWS_AEN_NO_EVENTS = common dso_local global i8* null, align 8
@TWS_AEN_OVERFLOW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"not a valid event\00", align 1
@TWS_AEN_RETRIEVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*, i32, %struct.tws_ioctl_packet*)* @tws_retrive_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_retrive_aen(%struct.tws_softc* %0, i32 %1, %struct.tws_ioctl_packet* %2) #0 {
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tws_ioctl_packet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tws_event_packet, align 4
  %9 = alloca %struct.tws_event_packet*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tws_ioctl_packet* %2, %struct.tws_ioctl_packet** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %11 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %15 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** @TWS_AEN_NO_EVENTS, align 8
  %21 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %22 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  br label %187

24:                                               ; preds = %3
  %25 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %26 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i8*, i8** @TWS_AEN_OVERFLOW, align 8
  %35 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %36 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %24
  %42 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %43 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.tws_event_packet*
  store %struct.tws_event_packet* %46, %struct.tws_event_packet** %9, align 8
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %165 [
    i32 131, label %48
    i32 130, label %53
    i32 129, label %69
    i32 128, label %117
  ]

48:                                               ; preds = %41
  %49 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %50 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  br label %174

53:                                               ; preds = %41
  %54 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %55 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %59 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %57, %61
  %63 = sub i64 %62, 1
  %64 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %65 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = urem i64 %63, %67
  store i64 %68, i64* %7, align 8
  br label %174

69:                                               ; preds = %41
  %70 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %71 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %70, i32 0, i32 0
  %72 = load %struct.tws_event_packet*, %struct.tws_event_packet** %71, align 8
  %73 = call i32 @memcpy(%struct.tws_event_packet* %8, %struct.tws_event_packet* %72, i32 8)
  %74 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %75 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %97, %69
  %79 = load %struct.tws_event_packet*, %struct.tws_event_packet** %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %79, i64 %80
  %82 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %104

89:                                               ; preds = %78
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  %92 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %93 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = urem i64 %91, %95
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %100 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %78, label %104

104:                                              ; preds = %97, %88
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %107 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i8*, i8** @TWS_AEN_NO_EVENTS, align 8
  %113 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %114 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  br label %187

116:                                              ; preds = %104
  br label %174

117:                                              ; preds = %41
  %118 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %119 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %118, i32 0, i32 0
  %120 = load %struct.tws_event_packet*, %struct.tws_event_packet** %119, align 8
  %121 = call i32 @memcpy(%struct.tws_event_packet* %8, %struct.tws_event_packet* %120, i32 8)
  %122 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %123 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %145, %117
  %127 = load %struct.tws_event_packet*, %struct.tws_event_packet** %9, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %127, i64 %128
  %130 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %8, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %152

137:                                              ; preds = %126
  %138 = load i64, i64* %7, align 8
  %139 = add i64 %138, 1
  %140 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %141 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = urem i64 %139, %143
  store i64 %144, i64* %7, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %148 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %146, %150
  br i1 %151, label %126, label %152

152:                                              ; preds = %145, %136
  %153 = load i64, i64* %7, align 8
  %154 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %155 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %153, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i8*, i8** @TWS_AEN_NO_EVENTS, align 8
  %161 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %162 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  br label %187

164:                                              ; preds = %152
  br label %174

165:                                              ; preds = %41
  %166 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %167 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tws_softc* %167, i32 %168)
  %170 = load i8*, i8** @TWS_AEN_NO_EVENTS, align 8
  %171 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %172 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  br label %187

174:                                              ; preds = %164, %116, %53, %48
  %175 = load %struct.tws_ioctl_packet*, %struct.tws_ioctl_packet** %6, align 8
  %176 = getelementptr inbounds %struct.tws_ioctl_packet, %struct.tws_ioctl_packet* %175, i32 0, i32 0
  %177 = load %struct.tws_event_packet*, %struct.tws_event_packet** %176, align 8
  %178 = load %struct.tws_event_packet*, %struct.tws_event_packet** %9, align 8
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %178, i64 %179
  %181 = call i32 @memcpy(%struct.tws_event_packet* %177, %struct.tws_event_packet* %180, i32 8)
  %182 = load i32, i32* @TWS_AEN_RETRIEVED, align 4
  %183 = load %struct.tws_event_packet*, %struct.tws_event_packet** %9, align 8
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %183, i64 %184
  %186 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %174, %165, %159, %111, %19
  ret void
}

declare dso_local i32 @memcpy(%struct.tws_event_packet*, %struct.tws_event_packet*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %struct.tws_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
