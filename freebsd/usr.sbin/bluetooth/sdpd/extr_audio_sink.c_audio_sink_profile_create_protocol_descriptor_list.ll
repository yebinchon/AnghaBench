; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_audio_sink.c_audio_sink_profile_create_protocol_descriptor_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_audio_sink.c_audio_sink_profile_create_protocol_descriptor_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SDP_DATA_SEQ8 = common dso_local global i32 0, align 4
@SDP_DATA_UUID16 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@SDP_DATA_UINT16 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_AVDTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @audio_sink_profile_create_protocol_descriptor_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_sink_profile_create_protocol_descriptor_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 18
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ugt i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %68

24:                                               ; preds = %4
  %25 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @SDP_PUT8(i32 %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @SDP_PUT8(i32 16, i32* %28)
  %30 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @SDP_PUT8(i32 %30, i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @SDP_PUT8(i32 6, i32* %33)
  %35 = load i32, i32* @SDP_DATA_UUID16, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @SDP_PUT8(i32 %35, i32* %36)
  %38 = load i32, i32* @SDP_UUID_PROTOCOL_L2CAP, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @SDP_PUT16(i32 %38, i32* %39)
  %41 = load i32, i32* @SDP_DATA_UINT16, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @SDP_PUT8(i32 %41, i32* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @SDP_PUT16(i32 %46, i32* %47)
  %49 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @SDP_PUT8(i32 %49, i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @SDP_PUT8(i32 6, i32* %52)
  %54 = load i32, i32* @SDP_DATA_UUID16, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @SDP_PUT8(i32 %54, i32* %55)
  %57 = load i32, i32* @SDP_UUID_PROTOCOL_AVDTP, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @SDP_PUT16(i32 %57, i32* %58)
  %60 = load i32, i32* @SDP_DATA_UINT16, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @SDP_PUT8(i32 %60, i32* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @SDP_PUT16(i32 %65, i32* %66)
  store i32 18, i32* %5, align 4
  br label %68

68:                                               ; preds = %24, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
