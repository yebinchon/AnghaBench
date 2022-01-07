; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_parse_protocol_descriptor_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_parse_protocol_descriptor_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }

@SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS = common dso_local global i64 0, align 8
@SDP_UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@SDP_DATA_UINT16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hid_sdp_parse_protocol_descriptor_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sdp_parse_protocol_descriptor_list(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = icmp slt i64 %26, 15
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %155

29:                                               ; preds = %1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @SDP_GET8(i32 %36, i32* %37)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %52 [
    i32 131, label %40
    i32 133, label %44
    i32 132, label %48
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @SDP_GET8(i32 %41, i32* %42)
  br label %53

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @SDP_GET16(i32 %45, i32* %46)
  br label %53

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @SDP_GET32(i32 %49, i32* %50)
  br label %53

52:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %155

53:                                               ; preds = %48, %44, %40
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ugt i32* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %155

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @SDP_GET8(i32 %63, i32* %64)
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %79 [
    i32 131, label %67
    i32 133, label %71
    i32 132, label %75
  ]

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @SDP_GET8(i32 %68, i32* %69)
  br label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @SDP_GET16(i32 %72, i32* %73)
  br label %80

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @SDP_GET32(i32 %76, i32* %77)
  br label %80

79:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %155

80:                                               ; preds = %75, %71, %67
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ugt i32* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 -1, i32* %2, align 4
  br label %155

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @SDP_GET8(i32 %89, i32* %90)
  %92 = load i32, i32* %6, align 4
  switch i32 %92, label %105 [
    i32 131, label %93
    i32 133, label %97
    i32 132, label %101
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @SDP_GET8(i32 %94, i32* %95)
  br label %106

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @SDP_GET16(i32 %98, i32* %99)
  br label %106

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @SDP_GET32(i32 %102, i32* %103)
  br label %106

105:                                              ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %155

106:                                              ; preds = %101, %97, %93
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32*, i32** %5, align 8
  %112 = icmp ugt i32* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %155

114:                                              ; preds = %106
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32*, i32** %5, align 8
  %118 = icmp ugt i32* %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %155

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @SDP_GET8(i32 %121, i32* %122)
  %124 = load i32, i32* %6, align 4
  switch i32 %124, label %135 [
    i32 129, label %125
    i32 128, label %134
    i32 130, label %134
  ]

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @SDP_GET16(i32 %126, i32* %127)
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @SDP_UUID_PROTOCOL_L2CAP, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %155

133:                                              ; preds = %125
  br label %136

134:                                              ; preds = %120, %120
  br label %135

135:                                              ; preds = %120, %134
  store i32 -1, i32* %2, align 4
  br label %155

136:                                              ; preds = %133
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32*, i32** %5, align 8
  %140 = icmp ugt i32* %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %2, align 4
  br label %155

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @SDP_GET8(i32 %143, i32* %144)
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @SDP_DATA_UINT16, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 -1, i32* %2, align 4
  br label %155

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @SDP_GET16(i32 %151, i32* %152)
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %150, %149, %141, %135, %132, %119, %113, %105, %87, %79, %60, %52, %28
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
