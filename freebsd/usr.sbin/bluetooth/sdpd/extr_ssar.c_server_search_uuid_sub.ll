; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_ssar.c_server_search_uuid_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_ssar.c_server_search_uuid_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@uuid_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @server_search_uuid_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_search_uuid_sub(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %11

11:                                               ; preds = %183, %159, %134, %120, %91, %52, %25, %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ult i32* %12, %13
  br i1 %14, label %15, label %184

15:                                               ; preds = %11
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @SDP_GET8(i32 %16, i32* %17)
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %182 [
    i32 129, label %20
    i32 128, label %47
    i32 130, label %86
    i32 131, label %100
    i32 142, label %100
    i32 139, label %100
    i32 134, label %103
    i32 145, label %103
    i32 141, label %103
    i32 133, label %106
    i32 144, label %106
    i32 140, label %106
    i32 132, label %109
    i32 143, label %109
    i32 135, label %112
    i32 146, label %112
    i32 136, label %115
    i32 138, label %129
    i32 137, label %154
    i32 147, label %179
  ]

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ugt i32* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %11

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @SDP_GET16(i32 %27, i32* %28)
  %30 = call i32 @memcpy(%struct.TYPE_5__* %8, i32* @uuid_base, i32 8)
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %38, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @memcmp(%struct.TYPE_5__* %8, i32* %42, i32 8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %185

46:                                               ; preds = %26
  br label %183

47:                                               ; preds = %15
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ugt i32* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %11

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @SDP_GET32(i32 %54, i32* %55)
  %57 = call i32 @memcpy(%struct.TYPE_5__* %8, i32* @uuid_base, i32 8)
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 255
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %77, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @memcmp(%struct.TYPE_5__* %8, i32* %81, i32 8)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %185

85:                                               ; preds = %53
  br label %183

86:                                               ; preds = %15
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ugt i32* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %11

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @SDP_GET_UUID128(%struct.TYPE_5__* %8, i32* %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @memcmp(%struct.TYPE_5__* %8, i32* %95, i32 8)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %185

99:                                               ; preds = %92
  br label %183

100:                                              ; preds = %15, %15, %15
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %5, align 8
  br label %183

103:                                              ; preds = %15, %15, %15
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32* %105, i32** %5, align 8
  br label %183

106:                                              ; preds = %15, %15, %15
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %5, align 8
  br label %183

109:                                              ; preds = %15, %15
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  store i32* %111, i32** %5, align 8
  br label %183

112:                                              ; preds = %15, %15
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 16
  store i32* %114, i32** %5, align 8
  br label %183

115:                                              ; preds = %15
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32*, i32** %6, align 8
  %119 = icmp ugt i32* %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %11

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @SDP_GET8(i32 %122, i32* %123)
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %5, align 8
  br label %183

129:                                              ; preds = %15
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32*, i32** %6, align 8
  %133 = icmp ugt i32* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %11

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @SDP_GET16(i32 %136, i32* %137)
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = load i32*, i32** %6, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = ptrtoint i32* %141 to i64
  %144 = ptrtoint i32* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 4
  %147 = icmp sgt i64 %140, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  store i32 1, i32* %4, align 4
  br label %185

149:                                              ; preds = %135
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %5, align 8
  br label %183

154:                                              ; preds = %15
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32*, i32** %6, align 8
  %158 = icmp ugt i32* %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %11

160:                                              ; preds = %154
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @SDP_GET32(i32 %161, i32* %162)
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = ptrtoint i32* %166 to i64
  %169 = ptrtoint i32* %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 4
  %172 = icmp sgt i64 %165, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %160
  store i32 1, i32* %4, align 4
  br label %185

174:                                              ; preds = %160
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %5, align 8
  br label %183

179:                                              ; preds = %15
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32* %181, i32** %5, align 8
  br label %183

182:                                              ; preds = %15
  store i32 1, i32* %4, align 4
  br label %185

183:                                              ; preds = %179, %174, %149, %121, %112, %109, %106, %103, %100, %99, %85, %46
  br label %11

184:                                              ; preds = %11
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %182, %173, %148, %98, %84, %45
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

declare dso_local i32 @SDP_GET_UUID128(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
