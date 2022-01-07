; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_send_recv.c_hci_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_send_recv.c_hci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8 }

@NG_HCI_CMD_PKT = common dso_local global i32 0, align 4
@NG_HCI_CMD_PKT_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_PKT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_request(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [512 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %16, align 8
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %17, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @NG_HCI_CMD_PKT, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @htole16(i64 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %6
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 0, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @NG_HCI_CMD_PKT_SIZE, align 4
  %58 = icmp sle i32 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 24
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  br label %75

72:                                               ; preds = %6
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %59
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 24, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @hci_send(i32 %76, i8* %77, i32 %81)
  %83 = load i64, i64* @ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i64, i64* @ERROR, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %193

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %190, %183, %141, %88
  store i32 512, i32* %15, align 4
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %92 = call i64 @hci_recv(i32 %90, i8* %91, i32* %15)
  %93 = load i64, i64* @ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i64, i64* @ERROR, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  br label %193

98:                                               ; preds = %89
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %100, 16
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @EMSGSIZE, align 4
  store i32 %103, i32* @errno, align 4
  %104 = load i64, i64* @ERROR, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %193

106:                                              ; preds = %98
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NG_HCI_EVENT_PKT, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* @errno, align 4
  %114 = load i64, i64* @ERROR, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  br label %193

116:                                              ; preds = %106
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %190 [
    i32 129, label %120
    i32 128, label %162
  ]

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 1
  %123 = bitcast %struct.TYPE_5__* %122 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %18, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @le16toh(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %120
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %120
  br label %89

142:                                              ; preds = %135
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %144, 20
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* %15, align 4
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %142
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %157 = getelementptr inbounds i8, i8* %156, i64 16
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @memcpy(i8* %155, i8* %158, i32 %160)
  br label %191

162:                                              ; preds = %116
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 1
  %165 = bitcast %struct.TYPE_5__* %164 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %19, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @le16toh(i32 %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %162
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %162
  br label %89

184:                                              ; preds = %177
  %185 = load i32*, i32** %13, align 8
  store i32 1, i32* %185, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i8, i8* %187, align 4
  %189 = load i8*, i8** %12, align 8
  store i8 %188, i8* %189, align 1
  br label %191

190:                                              ; preds = %116
  br label %89

191:                                              ; preds = %184, %154
  %192 = load i32, i32* @OK, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %112, %102, %95, %85
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @htole16(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @hci_send(i32, i8*, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i8* @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
