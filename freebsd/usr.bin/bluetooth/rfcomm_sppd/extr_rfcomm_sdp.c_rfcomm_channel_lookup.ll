; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sdp.c_rfcomm_channel_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sdp.c_rfcomm_channel_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32*, i32, i32 }

@PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE = common dso_local global i32 0, align 4
@SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST = common dso_local global i32 0, align 4
@SDP_ATTR_INVALID = common dso_local global i32 0, align 4
@NG_HCI_BDADDR_ANY = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@SDP_ATTR_OK = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i64 0, align 8
@PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE = common dso_local global i64 0, align 8
@SDP_DATA_ALT8 = common dso_local global i64 0, align 8
@SDP_DATA_ALT16 = common dso_local global i64 0, align 8
@SDP_DATA_ALT32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_channel_lookup(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32, i32* @PROTOCOL_DESCRIPTOR_LIST_BUFFER_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST, align 4
  %25 = load i32, i32* @SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST, align 4
  %26 = call i64 @SDP_ATTR_RANGE(i32 %24, i32 %25)
  store i64 %26, i64* %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %28 = load i32, i32* @SDP_ATTR_INVALID, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %31 = mul nuw i64 4, %20
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %33 = ptrtoint i32* %22 to i32
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %39, %5
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i64, i64* @EINVAL, align 8
  %49 = call i32 @rfcomm_channel_lookup_exit(i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @sdp_open(i32* %51, i32* %52)
  store i8* %53, i8** %13, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* @ENOMEM, align 8
  %57 = call i32 @rfcomm_channel_lookup_exit(i64 %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @sdp_error(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @sdp_error(i8* %63)
  %65 = call i32 @rfcomm_channel_lookup_exit(i64 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i8*, i8** %13, align 8
  %68 = call i64 @sdp_search(i8* %67, i32 1, i32* %14, i32 1, i64* %15, i32 1, %struct.TYPE_3__* %16)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %13, align 8
  %72 = call i64 @sdp_error(i8* %71)
  %73 = call i32 @rfcomm_channel_lookup_exit(i64 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SDP_ATTR_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @ENOATTR, align 8
  %81 = call i32 @rfcomm_channel_lookup_exit(i64 %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @sdp_close(i8* %83)
  store i8* null, i8** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i64, i64* @EINVAL, align 8
  %91 = call i32 @rfcomm_channel_lookup_exit(i64 %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @SDP_GET8(i64 %93, i32 %95)
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* @SDP_DATA_ALT8, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @SDP_GET8(i64 %101, i32 %103)
  br label %126

105:                                              ; preds = %92
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* @SDP_DATA_ALT16, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @SDP_GET16(i64 %110, i32 %112)
  br label %125

114:                                              ; preds = %105
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* @SDP_DATA_ALT32, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i64, i64* %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @SDP_GET32(i64 %119, i32 %121)
  br label %124

123:                                              ; preds = %114
  store i64 0, i64* %18, align 8
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %124, %109
  br label %126

126:                                              ; preds = %125, %100
  %127 = load i64, i64* %18, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64, i64* %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @SDP_GET8(i64 %130, i32 %132)
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i64, i64* %17, align 8
  switch i64 %135, label %151 [
    i64 128, label %136
    i64 130, label %141
    i64 129, label %146
  ]

136:                                              ; preds = %134
  %137 = load i64, i64* %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @SDP_GET8(i64 %137, i32 %139)
  br label %154

141:                                              ; preds = %134
  %142 = load i64, i64* %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @SDP_GET16(i64 %142, i32 %144)
  br label %154

146:                                              ; preds = %134
  %147 = load i64, i64* %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @SDP_GET32(i64 %147, i32 %149)
  br label %154

151:                                              ; preds = %134
  %152 = load i64, i64* @ENOATTR, align 8
  %153 = call i32 @rfcomm_channel_lookup_exit(i64 %152)
  br label %154

154:                                              ; preds = %151, %146, %141, %136
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* @PROTOCOL_DESCRIPTOR_LIST_MINIMAL_SIZE, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i64, i64* @EINVAL, align 8
  %160 = call i32 @rfcomm_channel_lookup_exit(i64 %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %22, i64 %165
  %167 = load i32*, i32** %9, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @rfcomm_proto_list_parse(i32 %163, i32* %166, i32* %167, i32* %168)
  %170 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %170)
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SDP_ATTR_RANGE(i32, i32) #2

declare dso_local i32 @rfcomm_channel_lookup_exit(i64) #2

declare dso_local i8* @sdp_open(i32*, i32*) #2

declare dso_local i64 @sdp_error(i8*) #2

declare dso_local i64 @sdp_search(i8*, i32, i32*, i32, i64*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @sdp_close(i8*) #2

declare dso_local i32 @SDP_GET8(i64, i32) #2

declare dso_local i32 @SDP_GET16(i64, i32) #2

declare dso_local i32 @SDP_GET32(i64, i32) #2

declare dso_local i32 @rfcomm_proto_list_parse(i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
