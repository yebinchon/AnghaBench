; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_ExpandString.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_ExpandString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SECTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.chat*, i8*, i8*, i32, i32)* @ExpandString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExpandString(%struct.chat* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.chat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.chat* %0, %struct.chat** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %179, %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %180

27:                                               ; preds = %25
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %171 [
    i32 92, label %31
    i32 94, label %153
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %138 [
    i32 99, label %37
    i32 100, label %38
    i32 112, label %43
    i32 110, label %48
    i32 114, label %53
    i32 115, label %58
    i32 116, label %63
    i32 80, label %68
    i32 84, label %92
    i32 85, label %114
  ]

37:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %145

38:                                               ; preds = %31
  %39 = load %struct.chat*, %struct.chat** %6, align 8
  %40 = load i32, i32* @SECTICKS, align 4
  %41 = mul nsw i32 2, %40
  %42 = call i32 @chat_Pause(%struct.chat* %39, i32 %41)
  br label %145

43:                                               ; preds = %31
  %44 = load %struct.chat*, %struct.chat** %6, align 8
  %45 = load i32, i32* @SECTICKS, align 4
  %46 = sdiv i32 %45, 4
  %47 = call i32 @chat_Pause(%struct.chat* %44, i32 %46)
  br label %145

48:                                               ; preds = %31
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 10, i8* %49, align 1
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  br label %145

53:                                               ; preds = %31
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  store i8 13, i8* %54, align 1
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %145

58:                                               ; preds = %31
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 32, i8* %59, align 1
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %145

63:                                               ; preds = %31
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 9, i8* %64, align 1
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %145

68:                                               ; preds = %31
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.chat*, %struct.chat** %6, align 8
  %71 = getelementptr inbounds %struct.chat, %struct.chat* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @strncpy(i8* %69, i32 %80, i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strlen(i8* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %8, align 8
  br label %145

92:                                               ; preds = %31
  %93 = load %struct.chat*, %struct.chat** %6, align 8
  %94 = getelementptr inbounds %struct.chat, %struct.chat* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.chat*, %struct.chat** %6, align 8
  %100 = getelementptr inbounds %struct.chat, %struct.chat* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @strncpy(i8* %98, i32 %101, i32 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %8, align 8
  br label %113

113:                                              ; preds = %97, %92
  br label %145

114:                                              ; preds = %31
  %115 = load i8*, i8** %8, align 8
  %116 = load %struct.chat*, %struct.chat** %6, align 8
  %117 = getelementptr inbounds %struct.chat, %struct.chat* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @strncpy(i8* %115, i32 %126, i32 %127)
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @strlen(i8* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %8, align 8
  br label %145

138:                                              ; preds = %31
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %9, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %8, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %138, %114, %113, %68, %63, %58, %53, %48, %43, %38, %37
  %146 = load i8*, i8** %7, align 8
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %7, align 8
  br label %152

152:                                              ; preds = %149, %145
  br label %179

153:                                              ; preds = %27
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %7, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i8, i8* %156, align 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %7, align 8
  %162 = load i8, i8* %160, align 1
  %163 = sext i8 %162 to i32
  %164 = and i32 %163, 31
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 %165, i8* %166, align 1
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %159, %153
  br label %179

171:                                              ; preds = %27
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %7, align 8
  %174 = load i8, i8* %172, align 1
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %8, align 8
  store i8 %174, i8* %175, align 1
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %171, %170, %152
  br label %17

180:                                              ; preds = %25
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %9, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %8, align 8
  store i8 13, i8* %188, align 1
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %180
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %9, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %8, align 8
  store i8 0, i8* %196, align 1
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %8, align 8
  ret i8* %199
}

declare dso_local i32 @chat_Pause(%struct.chat*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
