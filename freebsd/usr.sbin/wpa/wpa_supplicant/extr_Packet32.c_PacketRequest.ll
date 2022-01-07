; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketRequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.adapter = type { i32, i32 }
%struct.ifreq = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@OID_802_11_ADD_KEY = common dso_local global i64 0, align 8
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@SIOCGDRVSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketRequest(i8* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifreq, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %148

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.adapter*
  store %struct.adapter* %19, %struct.adapter** %8, align 8
  %20 = bitcast %struct.ifreq* %10 to i8*
  %21 = call i32 @bzero(i8* %20, i32 16)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %111

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OID_802_11_ADD_KEY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = bitcast i32* %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %11, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 40, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.TYPE_7__* @malloc(i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %13, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %148

45:                                               ; preds = %31
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = bitcast %struct.TYPE_7__* %46 to i8*
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 40, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @bzero(i8* %47, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 24, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @bcopy(i32 %93, i8* %96, i32 4)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = bitcast %struct.TYPE_8__* %101 to i8*
  %103 = getelementptr inbounds i8, i8* %102, i64 24
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bcopy(i32 %100, i8* %103, i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = bitcast %struct.TYPE_7__* %108 to i8*
  %110 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  br label %115

111:                                              ; preds = %25, %17
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to i8*
  %114 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %45
  %116 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.adapter*, %struct.adapter** %8, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @strlcpy(i32 %117, i32 %120, i32 4)
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @TRUE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.adapter*, %struct.adapter** %8, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SIOCSDRVSPEC, align 4
  %130 = call i64 @ioctl(i32 %128, i32 %129, %struct.ifreq* %10)
  store i64 %130, i64* %9, align 8
  br label %137

131:                                              ; preds = %115
  %132 = load %struct.adapter*, %struct.adapter** %8, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SIOCGDRVSPEC, align 4
  %136 = call i64 @ioctl(i32 %134, i32 %135, %struct.ifreq* %10)
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %131, %125
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %139 = icmp ne %struct.TYPE_7__* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %142 = call i32 @free(%struct.TYPE_7__* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i64, i64* %9, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %148

147:                                              ; preds = %143
  store i32 1, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %146, %44, %16
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
