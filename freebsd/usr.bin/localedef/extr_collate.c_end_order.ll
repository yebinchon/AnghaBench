; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_end_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_end_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@nextpri = common dso_local global i32 0, align 4
@currorder = common dso_local global i32 0, align 4
@NUM_WT = common dso_local global i32 0, align 4
@order_weights = common dso_local global i32* null, align 8
@currchar = common dso_local global %struct.TYPE_9__* null, align 8
@RESOLVED = common dso_local global i32 0, align 4
@REFER = common dso_local global i32 0, align 4
@ellipsis_start = common dso_local global i32 0, align 4
@ellipsis_weights = common dso_local global i32* null, align 8
@currelem = common dso_local global %struct.TYPE_8__* null, align 8
@INTERR = common dso_local global i32 0, align 4
@pri_undefined = common dso_local global i32* null, align 8
@currundef = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_order() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = load i32, i32* @nextpri, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @currorder, align 4
  switch i32 %6, label %243 [
    i32 132, label %7
    i32 130, label %63
    i32 131, label %86
    i32 128, label %144
    i32 129, label %191
  ]

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %55, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NUM_WT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load i32*, i32** @order_weights, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_6__* @get_pri(i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %4, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %39

28:                                               ; preds = %23, %19, %12
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @currchar, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @RESOLVED, align 4
  %38 = call i32 @set_pri(i32 %35, i32 %36, i32 %37)
  br label %50

39:                                               ; preds = %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @currchar, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @REFER, align 4
  %49 = call i32 @set_pri(i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %28
  %51 = load i32*, i32** @order_weights, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %8

58:                                               ; preds = %8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @currchar, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @ellipsis_start, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @currchar, align 8
  br label %245

63:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @NUM_WT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32*, i32** @order_weights, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** @ellipsis_weights, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** @order_weights, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %64

85:                                               ; preds = %64
  br label %245

86:                                               ; preds = %0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @currelem, align 8
  %88 = icmp eq %struct.TYPE_8__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @INTERR, align 4
  br label %143

91:                                               ; preds = %86
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %139, %91
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @NUM_WT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %92
  %97 = load i32*, i32** @order_weights, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = call %struct.TYPE_6__* @get_pri(i32 %104)
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %4, align 8
  %106 = icmp eq %struct.TYPE_6__* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %123

112:                                              ; preds = %107, %103, %96
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @currelem, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @RESOLVED, align 4
  %122 = call i32 @set_pri(i32 %119, i32 %120, i32 %121)
  br label %134

123:                                              ; preds = %107
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @currelem, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @REFER, align 4
  %133 = call i32 @set_pri(i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %123, %112
  %135 = load i32*, i32** @order_weights, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 -1, i32* %138, align 4
  br label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %92

142:                                              ; preds = %92
  br label %143

143:                                              ; preds = %142, %89
  br label %245

144:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %145

145:                                              ; preds = %187, %144
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @NUM_WT, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %190

149:                                              ; preds = %145
  %150 = load i32*, i32** @order_weights, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %3, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %3, align 4
  %158 = call %struct.TYPE_6__* @get_pri(i32 %157)
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %4, align 8
  %159 = icmp eq %struct.TYPE_6__* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %173

165:                                              ; preds = %160, %156, %149
  %166 = load i32*, i32** @pri_undefined, align 8
  %167 = load i32, i32* %1, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @RESOLVED, align 4
  %172 = call i32 @set_pri(i32 %170, i32 -1, i32 %171)
  br label %182

173:                                              ; preds = %160
  %174 = load i32*, i32** @pri_undefined, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @REFER, align 4
  %181 = call i32 @set_pri(i32 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %173, %165
  %183 = load i32*, i32** @order_weights, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 -1, i32* %186, align 4
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %1, align 4
  br label %145

190:                                              ; preds = %145
  br label %245

191:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %192

192:                                              ; preds = %239, %191
  %193 = load i32, i32* %1, align 4
  %194 = load i32, i32* @NUM_WT, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %242

196:                                              ; preds = %192
  %197 = load i32*, i32** @order_weights, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %3, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %3, align 4
  %205 = call %struct.TYPE_6__* @get_pri(i32 %204)
  store %struct.TYPE_6__* %205, %struct.TYPE_6__** %4, align 8
  %206 = icmp eq %struct.TYPE_6__* %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %223

212:                                              ; preds = %207, %203, %196
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currundef, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %1, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* @RESOLVED, align 4
  %222 = call i32 @set_pri(i32 %219, i32 %220, i32 %221)
  br label %234

223:                                              ; preds = %207
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currundef, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %1, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* @REFER, align 4
  %233 = call i32 @set_pri(i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %223, %212
  %235 = load i32*, i32** @order_weights, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 -1, i32* %238, align 4
  br label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %1, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %1, align 4
  br label %192

242:                                              ; preds = %192
  br label %245

243:                                              ; preds = %0
  %244 = load i32, i32* @INTERR, align 4
  br label %245

245:                                              ; preds = %243, %242, %190, %143, %85, %58
  %246 = load i32, i32* @nextpri, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* @nextpri, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @get_pri(i32) #1

declare dso_local i32 @set_pri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
