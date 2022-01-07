; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_parse_hid_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_parse_hid_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@SDP_DATA_UINT8 = common dso_local global i32 0, align 4
@UDESC_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hid_sdp_parse_hid_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sdp_parse_hid_descriptor(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = icmp slt i64 %25, 9
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %187

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @SDP_GET8(i32 %29, i32* %30)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %45 [
    i32 131, label %33
    i32 133, label %37
    i32 132, label %41
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @SDP_GET8(i32 %34, i32* %35)
  br label %46

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @SDP_GET16(i32 %38, i32* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @SDP_GET32(i32 %42, i32* %43)
  br label %46

45:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %187

46:                                               ; preds = %41, %37, %33
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ugt i32* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %187

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %181, %54
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %186

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @SDP_GET8(i32 %60, i32* %61)
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %94 [
    i32 131, label %64
    i32 133, label %74
    i32 132, label %84
  ]

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ugt i32* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %187

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @SDP_GET8(i32 %71, i32* %72)
  br label %95

74:                                               ; preds = %59
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ugt i32* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %187

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @SDP_GET16(i32 %81, i32* %82)
  br label %95

84:                                               ; preds = %59
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ugt i32* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %2, align 4
  br label %187

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @SDP_GET32(i32 %91, i32* %92)
  br label %95

94:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %187

95:                                               ; preds = %90, %80, %70
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32*, i32** %5, align 8
  %99 = icmp ugt i32* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 -1, i32* %2, align 4
  br label %187

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @SDP_GET8(i32 %102, i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SDP_DATA_UINT8, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32*, i32** %5, align 8
  %112 = icmp ugt i32* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %101
  store i32 -1, i32* %2, align 4
  br label %187

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @SDP_GET8(i32 %115, i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32*, i32** %5, align 8
  %121 = icmp ugt i32* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %187

123:                                              ; preds = %114
  %124 = load i32, i32* %6, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @SDP_GET8(i32 %124, i32* %125)
  %127 = load i32, i32* %6, align 4
  switch i32 %127, label %158 [
    i32 128, label %128
    i32 130, label %138
    i32 129, label %148
  ]

128:                                              ; preds = %123
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32*, i32** %5, align 8
  %132 = icmp ugt i32* %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 -1, i32* %2, align 4
  br label %187

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @SDP_GET8(i32 %135, i32* %136)
  br label %159

138:                                              ; preds = %123
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32*, i32** %5, align 8
  %142 = icmp ugt i32* %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 -1, i32* %2, align 4
  br label %187

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @SDP_GET16(i32 %145, i32* %146)
  br label %159

148:                                              ; preds = %123
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32*, i32** %5, align 8
  %152 = icmp ugt i32* %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 -1, i32* %2, align 4
  br label %187

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @SDP_GET32(i32 %155, i32* %156)
  br label %159

158:                                              ; preds = %123
  store i32 -1, i32* %2, align 4
  br label %187

159:                                              ; preds = %154, %144, %134
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32*, i32** %5, align 8
  %165 = icmp ugt i32* %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 -1, i32* %2, align 4
  br label %187

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @UDESC_REPORT, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i32* %175, i32** %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  store i32 0, i32* %2, align 4
  br label %187

181:                                              ; preds = %171, %167
  %182 = load i32, i32* %7, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %4, align 8
  br label %55

186:                                              ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %174, %166, %158, %153, %143, %133, %122, %113, %100, %94, %89, %79, %69, %53, %45, %27
  %188 = load i32, i32* %2, align 4
  ret i32 %188
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
