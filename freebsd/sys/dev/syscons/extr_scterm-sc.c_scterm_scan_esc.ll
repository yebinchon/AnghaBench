; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-sc.c_scterm_scan_esc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-sc.c_scterm_scan_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, i32* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32*, i32, i8*, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_29__, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@scterm_scan_esc.ansi_col = internal global [16 x i32] [i32 143, i32 130, i32 138, i32 141, i32 142, i32 131, i32 140, i32 134, i32 139, i32 132, i32 135, i32 128, i32 137, i32 133, i32 136, i32 129], align 16
@scterm_scan_esc.cattrs = internal global [6 x i32] [i32 0, i32 148, i32 147, i32 151, i32 144, i32 146], align 16
@scterm_scan_esc.tcattrs = internal global [3 x i32] [i32 145, i32 147, i32 149], align 4
@MAX_ESC_PAR = common dso_local global i32 0, align 4
@NORMAL_ATTR = common dso_local global i8* null, align 8
@BOLD_ATTR = common dso_local global i32 0, align 4
@UNDERLINE_ATTR = common dso_local global i32 0, align 4
@BLINK_ATTR = common dso_local global i32 0, align 4
@REVERSE_ATTR = common dso_local global i32 0, align 4
@FG_CHANGED = common dso_local global i32 0, align 4
@BG_CHANGED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_31__*, i32)* @scterm_scan_esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scterm_scan_esc(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  store %struct.TYPE_33__* %15, %struct.TYPE_33__** %7, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %122

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %121 [
    i32 55, label %22
    i32 56, label %33
    i32 91, label %53
    i32 77, label %78
    i32 99, label %89
    i32 40, label %118
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %121

33:                                               ; preds = %20
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sc_move_cursor(%struct.TYPE_32__* %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %38, %33
  br label %121

53:                                               ; preds = %20
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 3
  store i32 -1, i32* %57, align 4
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %72, %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MAX_ESC_PAR, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 4
  store i32 0, i32* %77, align 8
  br label %1367

78:                                               ; preds = %20
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 32
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 7
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @sc_term_up_scroll(%struct.TYPE_32__* %79, i32 1, i32 %84, i8* %87, i32 0, i32 0)
  br label %121

89:                                               ; preds = %20
  %90 = load i8*, i8** @NORMAL_ATTR, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 10
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 12
  %100 = bitcast %struct.TYPE_29__* %97 to i8*
  %101 = bitcast %struct.TYPE_29__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 8, i1 false)
  %102 = bitcast %struct.TYPE_29__* %95 to i8*
  %103 = bitcast %struct.TYPE_29__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 8, i1 false)
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 11
  %108 = bitcast %struct.TYPE_30__* %105 to i8*
  %109 = bitcast %struct.TYPE_30__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %111 = call i8* @mask2attr(%struct.TYPE_31__* %110)
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %115 = call i32 @sc_change_cursor_shape(%struct.TYPE_32__* %114, i32 145, i32 -1, i32 -1)
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %117 = call i32 @sc_clear_screen(%struct.TYPE_32__* %116)
  br label %121

118:                                              ; preds = %20
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  store i32 5, i32* %120, align 8
  br label %1367

121:                                              ; preds = %20, %89, %78, %52, %22
  br label %1364

122:                                              ; preds = %3
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %1016

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = icmp sge i32 %128, 48
  br i1 %129, label %130, label %186

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp sle i32 %131, 57
  br i1 %132, label %133, label %186

133:                                              ; preds = %130
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MAX_ESC_PAR, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %185

139:                                              ; preds = %133
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32 0, i32* %160, align 4
  br label %172

161:                                              ; preds = %139
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %170, 10
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %161, %147
  %173 = load i32, i32* %6, align 4
  %174 = sub nsw i32 %173, 48
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %174
  store i32 %184, i32* %182, align 4
  br label %1367

185:                                              ; preds = %133
  br label %186

186:                                              ; preds = %185, %130, %127
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %6, align 4
  switch i32 %193, label %1015 [
    i32 59, label %194
    i32 61, label %202
    i32 65, label %227
    i32 66, label %235
    i32 67, label %243
    i32 68, label %251
    i32 69, label %259
    i32 70, label %276
    i32 102, label %293
    i32 72, label %293
    i32 74, label %323
    i32 75, label %347
    i32 76, label %371
    i32 77, label %390
    i32 80, label %409
    i32 64, label %425
    i32 83, label %441
    i32 84, label %457
    i32 88, label %473
    i32 90, label %529
    i32 96, label %537
    i32 97, label %545
    i32 100, label %553
    i32 101, label %561
    i32 109, label %569
    i32 115, label %782
    i32 117, label %793
    i32 120, label %813
    i32 122, label %1001
  ]

194:                                              ; preds = %186
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MAX_ESC_PAR, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %1367

201:                                              ; preds = %194
  br label %1015

202:                                              ; preds = %186
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  store i32 3, i32* %204, align 8
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 3
  store i32 -1, i32* %206, align 4
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %221, %202
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @MAX_ESC_PAR, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 1, i32* %220, align 4
  br label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %210

224:                                              ; preds = %210
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 4
  store i32 0, i32* %226, align 8
  br label %1367

227:                                              ; preds = %186
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sc_term_up(%struct.TYPE_32__* %228, i32 %233, i32 0)
  br label %1015

235:                                              ; preds = %186
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @sc_term_down(%struct.TYPE_32__* %236, i32 %241, i32 0)
  br label %1015

243:                                              ; preds = %186
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @sc_term_right(%struct.TYPE_32__* %244, i32 %249)
  br label %1015

251:                                              ; preds = %186
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @sc_term_left(%struct.TYPE_32__* %252, i32 %257)
  br label %1015

259:                                              ; preds = %186
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  store i32 1, i32* %12, align 4
  br label %268

268:                                              ; preds = %267, %259
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %272, %273
  %275 = call i32 @sc_move_cursor(%struct.TYPE_32__* %269, i32 0, i32 %274)
  br label %1015

276:                                              ; preds = %186
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store i32 1, i32* %12, align 4
  br label %285

285:                                              ; preds = %284, %276
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %12, align 4
  %291 = sub nsw i32 %289, %290
  %292 = call i32 @sc_move_cursor(%struct.TYPE_32__* %286, i32 0, i32 %291)
  br label %1015

293:                                              ; preds = %186, %186
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %300 = call i32 @sc_move_cursor(%struct.TYPE_32__* %299, i32 0, i32 0)
  br label %322

301:                                              ; preds = %293
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 2
  br i1 %305, label %306, label %321

306:                                              ; preds = %301
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %312, 1
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 5
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %318, 1
  %320 = call i32 @sc_move_cursor(%struct.TYPE_32__* %307, i32 %313, i32 %319)
  br label %321

321:                                              ; preds = %306, %301
  br label %322

322:                                              ; preds = %321, %298
  br label %1015

323:                                              ; preds = %186
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  store i32 0, i32* %12, align 4
  br label %335

329:                                              ; preds = %323
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 5
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %12, align 4
  br label %335

335:                                              ; preds = %329, %328
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %337 = load i32, i32* %12, align 4
  %338 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 32
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 7
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @sc_term_clr_eos(%struct.TYPE_32__* %336, i32 %337, i32 %342, i8* %345)
  br label %1015

347:                                              ; preds = %186
  %348 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %347
  store i32 0, i32* %12, align 4
  br label %359

353:                                              ; preds = %347
  %354 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 5
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %12, align 4
  br label %359

359:                                              ; preds = %353, %352
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %361 = load i32, i32* %12, align 4
  %362 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 32
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %367, i32 0, i32 7
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @sc_term_clr_eol(%struct.TYPE_32__* %360, i32 %361, i32 %366, i8* %369)
  br label %1015

371:                                              ; preds = %186
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 32
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 7
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @sc_term_ins_line(%struct.TYPE_32__* %372, i32 %375, i32 %380, i32 %385, i8* %388, i32 0)
  br label %1015

390:                                              ; preds = %186
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %392 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %395, i32 0, i32 5
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 32
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 7
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @sc_term_del_line(%struct.TYPE_32__* %391, i32 %394, i32 %399, i32 %404, i8* %407, i32 0)
  br label %1015

409:                                              ; preds = %186
  %410 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %411 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %411, i32 0, i32 5
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 0
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 32
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 7
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @sc_term_del_char(%struct.TYPE_32__* %410, i32 %415, i32 %420, i8* %423)
  br label %1015

425:                                              ; preds = %186
  %426 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 5
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 0
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 1
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 32
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 7
  %439 = load i8*, i8** %438, align 8
  %440 = call i32 @sc_term_ins_char(%struct.TYPE_32__* %426, i32 %431, i32 %436, i8* %439)
  br label %1015

441:                                              ; preds = %186
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %443 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %443, i32 0, i32 5
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 32
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %453, i32 0, i32 7
  %455 = load i8*, i8** %454, align 8
  %456 = call i32 @sc_term_del_line(%struct.TYPE_32__* %442, i32 0, i32 %447, i32 %452, i8* %455, i32 0)
  br label %1015

457:                                              ; preds = %186
  %458 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %459 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %459, i32 0, i32 5
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 0
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 32
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %469, i32 0, i32 7
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @sc_term_ins_line(%struct.TYPE_32__* %458, i32 0, i32 %463, i32 %468, i8* %471, i32 0)
  br label %1015

473:                                              ; preds = %186
  %474 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %474, i32 0, i32 5
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 0
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %12, align 4
  %479 = load i32, i32* %12, align 4
  %480 = icmp slt i32 %479, 1
  br i1 %480, label %481, label %482

481:                                              ; preds = %473
  store i32 1, i32* %12, align 4
  br label %482

482:                                              ; preds = %481, %473
  %483 = load i32, i32* %12, align 4
  %484 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = sub nsw i32 %486, %489
  %491 = icmp sgt i32 %483, %490
  br i1 %491, label %492, label %500

492:                                              ; preds = %482
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = sub nsw i32 %495, %498
  store i32 %499, i32* %12, align 4
  br label %500

500:                                              ; preds = %492, %482
  %501 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %501, i32 0, i32 8
  %503 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %12, align 4
  %507 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %507, i32 0, i32 1
  %509 = load i32*, i32** %508, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 32
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %512, i32 0, i32 7
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @sc_vtb_erase(i32* %502, i32 %505, i32 %506, i32 %511, i8* %514)
  %516 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %517 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 7
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @mark_for_update(%struct.TYPE_32__* %516, i32 %519)
  %521 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %522 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %522, i32 0, i32 7
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* %12, align 4
  %526 = add nsw i32 %524, %525
  %527 = sub nsw i32 %526, 1
  %528 = call i32 @mark_for_update(%struct.TYPE_32__* %521, i32 %527)
  br label %1015

529:                                              ; preds = %186
  %530 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %531 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %531, i32 0, i32 5
  %533 = load i32*, i32** %532, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @sc_term_backtab(%struct.TYPE_32__* %530, i32 %535)
  br label %1015

537:                                              ; preds = %186
  %538 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %539 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %539, i32 0, i32 5
  %541 = load i32*, i32** %540, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 0
  %543 = load i32, i32* %542, align 4
  %544 = call i32 @sc_term_col(%struct.TYPE_32__* %538, i32 %543)
  br label %1015

545:                                              ; preds = %186
  %546 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %547 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %547, i32 0, i32 5
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 0
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @sc_term_right(%struct.TYPE_32__* %546, i32 %551)
  br label %1015

553:                                              ; preds = %186
  %554 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %555 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %555, i32 0, i32 5
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @sc_term_row(%struct.TYPE_32__* %554, i32 %559)
  br label %1015

561:                                              ; preds = %186
  %562 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %563 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 5
  %565 = load i32*, i32** %564, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 0
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @sc_term_down(%struct.TYPE_32__* %562, i32 %567, i32 0)
  br label %1015

569:                                              ; preds = %186
  %570 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %589

574:                                              ; preds = %569
  %575 = load i8*, i8** @NORMAL_ATTR, align 8
  %576 = ptrtoint i8* %575 to i32
  %577 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %578 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %577, i32 0, i32 6
  store i32 %576, i32* %578, align 8
  %579 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %580 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %579, i32 0, i32 10
  %581 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %581, i32 0, i32 9
  %583 = bitcast %struct.TYPE_29__* %580 to i8*
  %584 = bitcast %struct.TYPE_29__* %582 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %583, i8* align 8 %584, i64 8, i1 false)
  %585 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %586 = call i8* @mask2attr(%struct.TYPE_31__* %585)
  %587 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %587, i32 0, i32 7
  store i8* %586, i8** %588, align 8
  br label %1015

589:                                              ; preds = %569
  store i32 0, i32* %11, align 4
  br label %590

590:                                              ; preds = %778, %589
  %591 = load i32, i32* %11, align 4
  %592 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 8
  %595 = icmp slt i32 %591, %594
  br i1 %595, label %596, label %781

596:                                              ; preds = %590
  %597 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %598 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %597, i32 0, i32 5
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* %11, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  %603 = load i32, i32* %602, align 4
  store i32 %603, i32* %12, align 4
  switch i32 %603, label %777 [
    i32 0, label %604
    i32 1, label %619
    i32 4, label %629
    i32 5, label %639
    i32 7, label %649
    i32 22, label %659
    i32 24, label %670
    i32 25, label %681
    i32 27, label %692
    i32 30, label %703
    i32 31, label %703
    i32 32, label %703
    i32 33, label %703
    i32 34, label %703
    i32 35, label %703
    i32 36, label %703
    i32 37, label %703
    i32 39, label %721
    i32 40, label %741
    i32 41, label %741
    i32 42, label %741
    i32 43, label %741
    i32 44, label %741
    i32 45, label %741
    i32 46, label %741
    i32 47, label %741
    i32 49, label %759
  ]

604:                                              ; preds = %596
  %605 = load i8*, i8** @NORMAL_ATTR, align 8
  %606 = ptrtoint i8* %605 to i32
  %607 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %607, i32 0, i32 6
  store i32 %606, i32* %608, align 8
  %609 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %610 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %609, i32 0, i32 10
  %611 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %611, i32 0, i32 9
  %613 = bitcast %struct.TYPE_29__* %610 to i8*
  %614 = bitcast %struct.TYPE_29__* %612 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %613, i8* align 8 %614, i64 8, i1 false)
  %615 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %616 = call i8* @mask2attr(%struct.TYPE_31__* %615)
  %617 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %618 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %617, i32 0, i32 7
  store i8* %616, i8** %618, align 8
  br label %777

619:                                              ; preds = %596
  %620 = load i32, i32* @BOLD_ATTR, align 4
  %621 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %622 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %621, i32 0, i32 6
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 8
  %625 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %626 = call i8* @mask2attr(%struct.TYPE_31__* %625)
  %627 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %628 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %627, i32 0, i32 7
  store i8* %626, i8** %628, align 8
  br label %777

629:                                              ; preds = %596
  %630 = load i32, i32* @UNDERLINE_ATTR, align 4
  %631 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %631, i32 0, i32 6
  %633 = load i32, i32* %632, align 8
  %634 = or i32 %633, %630
  store i32 %634, i32* %632, align 8
  %635 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %636 = call i8* @mask2attr(%struct.TYPE_31__* %635)
  %637 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %638 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %637, i32 0, i32 7
  store i8* %636, i8** %638, align 8
  br label %777

639:                                              ; preds = %596
  %640 = load i32, i32* @BLINK_ATTR, align 4
  %641 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %642 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %641, i32 0, i32 6
  %643 = load i32, i32* %642, align 8
  %644 = or i32 %643, %640
  store i32 %644, i32* %642, align 8
  %645 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %646 = call i8* @mask2attr(%struct.TYPE_31__* %645)
  %647 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %648 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %647, i32 0, i32 7
  store i8* %646, i8** %648, align 8
  br label %777

649:                                              ; preds = %596
  %650 = load i32, i32* @REVERSE_ATTR, align 4
  %651 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %652 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 8
  %654 = or i32 %653, %650
  store i32 %654, i32* %652, align 8
  %655 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %656 = call i8* @mask2attr(%struct.TYPE_31__* %655)
  %657 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %657, i32 0, i32 7
  store i8* %656, i8** %658, align 8
  br label %777

659:                                              ; preds = %596
  %660 = load i32, i32* @BOLD_ATTR, align 4
  %661 = xor i32 %660, -1
  %662 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %663 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %662, i32 0, i32 6
  %664 = load i32, i32* %663, align 8
  %665 = and i32 %664, %661
  store i32 %665, i32* %663, align 8
  %666 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %667 = call i8* @mask2attr(%struct.TYPE_31__* %666)
  %668 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %669 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %668, i32 0, i32 7
  store i8* %667, i8** %669, align 8
  br label %777

670:                                              ; preds = %596
  %671 = load i32, i32* @UNDERLINE_ATTR, align 4
  %672 = xor i32 %671, -1
  %673 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %674 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %673, i32 0, i32 6
  %675 = load i32, i32* %674, align 8
  %676 = and i32 %675, %672
  store i32 %676, i32* %674, align 8
  %677 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %678 = call i8* @mask2attr(%struct.TYPE_31__* %677)
  %679 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %679, i32 0, i32 7
  store i8* %678, i8** %680, align 8
  br label %777

681:                                              ; preds = %596
  %682 = load i32, i32* @BLINK_ATTR, align 4
  %683 = xor i32 %682, -1
  %684 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %685 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %684, i32 0, i32 6
  %686 = load i32, i32* %685, align 8
  %687 = and i32 %686, %683
  store i32 %687, i32* %685, align 8
  %688 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %689 = call i8* @mask2attr(%struct.TYPE_31__* %688)
  %690 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %691 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %690, i32 0, i32 7
  store i8* %689, i8** %691, align 8
  br label %777

692:                                              ; preds = %596
  %693 = load i32, i32* @REVERSE_ATTR, align 4
  %694 = xor i32 %693, -1
  %695 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %696 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %695, i32 0, i32 6
  %697 = load i32, i32* %696, align 8
  %698 = and i32 %697, %694
  store i32 %698, i32* %696, align 8
  %699 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %700 = call i8* @mask2attr(%struct.TYPE_31__* %699)
  %701 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %701, i32 0, i32 7
  store i8* %700, i8** %702, align 8
  br label %777

703:                                              ; preds = %596, %596, %596, %596, %596, %596, %596, %596
  %704 = load i32, i32* @FG_CHANGED, align 4
  %705 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %706 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %705, i32 0, i32 6
  %707 = load i32, i32* %706, align 8
  %708 = or i32 %707, %704
  store i32 %708, i32* %706, align 8
  %709 = load i32, i32* %12, align 4
  %710 = sub nsw i32 %709, 30
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %715 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %714, i32 0, i32 10
  %716 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %715, i32 0, i32 0
  store i32 %713, i32* %716, align 8
  %717 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %718 = call i8* @mask2attr(%struct.TYPE_31__* %717)
  %719 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %720 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %719, i32 0, i32 7
  store i8* %718, i8** %720, align 8
  br label %777

721:                                              ; preds = %596
  %722 = load i32, i32* @FG_CHANGED, align 4
  %723 = load i32, i32* @BOLD_ATTR, align 4
  %724 = or i32 %722, %723
  %725 = xor i32 %724, -1
  %726 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %727 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %726, i32 0, i32 6
  %728 = load i32, i32* %727, align 8
  %729 = and i32 %728, %725
  store i32 %729, i32* %727, align 8
  %730 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %731 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %730, i32 0, i32 9
  %732 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %735 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %734, i32 0, i32 10
  %736 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %735, i32 0, i32 0
  store i32 %733, i32* %736, align 8
  %737 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %738 = call i8* @mask2attr(%struct.TYPE_31__* %737)
  %739 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %740 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %739, i32 0, i32 7
  store i8* %738, i8** %740, align 8
  br label %777

741:                                              ; preds = %596, %596, %596, %596, %596, %596, %596, %596
  %742 = load i32, i32* @BG_CHANGED, align 4
  %743 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %744 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %743, i32 0, i32 6
  %745 = load i32, i32* %744, align 8
  %746 = or i32 %745, %742
  store i32 %746, i32* %744, align 8
  %747 = load i32, i32* %12, align 4
  %748 = sub nsw i32 %747, 40
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %753 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %752, i32 0, i32 10
  %754 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %753, i32 0, i32 1
  store i32 %751, i32* %754, align 4
  %755 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %756 = call i8* @mask2attr(%struct.TYPE_31__* %755)
  %757 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %758 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %757, i32 0, i32 7
  store i8* %756, i8** %758, align 8
  br label %777

759:                                              ; preds = %596
  %760 = load i32, i32* @BG_CHANGED, align 4
  %761 = xor i32 %760, -1
  %762 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %763 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %762, i32 0, i32 6
  %764 = load i32, i32* %763, align 8
  %765 = and i32 %764, %761
  store i32 %765, i32* %763, align 8
  %766 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %767 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %766, i32 0, i32 9
  %768 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %767, i32 0, i32 1
  %769 = load i32, i32* %768, align 4
  %770 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %771 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %770, i32 0, i32 10
  %772 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %771, i32 0, i32 1
  store i32 %769, i32* %772, align 4
  %773 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %774 = call i8* @mask2attr(%struct.TYPE_31__* %773)
  %775 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %776 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %775, i32 0, i32 7
  store i8* %774, i8** %776, align 8
  br label %777

777:                                              ; preds = %596, %759, %741, %721, %703, %692, %681, %670, %659, %649, %639, %629, %619, %604
  br label %778

778:                                              ; preds = %777
  %779 = load i32, i32* %11, align 4
  %780 = add nsw i32 %779, 1
  store i32 %780, i32* %11, align 4
  br label %590

781:                                              ; preds = %590
  br label %1015

782:                                              ; preds = %186
  %783 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %784 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %787 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %786, i32 0, i32 1
  store i32 %785, i32* %787, align 4
  %788 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %789 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %788, i32 0, i32 1
  %790 = load i32, i32* %789, align 4
  %791 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %792 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %791, i32 0, i32 2
  store i32 %790, i32* %792, align 8
  br label %1015

793:                                              ; preds = %186
  %794 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %795 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %794, i32 0, i32 1
  %796 = load i32, i32* %795, align 4
  %797 = icmp sge i32 %796, 0
  br i1 %797, label %798, label %812

798:                                              ; preds = %793
  %799 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %800 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %799, i32 0, i32 2
  %801 = load i32, i32* %800, align 8
  %802 = icmp sge i32 %801, 0
  br i1 %802, label %803, label %812

803:                                              ; preds = %798
  %804 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %805 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %806 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %809 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %808, i32 0, i32 2
  %810 = load i32, i32* %809, align 8
  %811 = call i32 @sc_move_cursor(%struct.TYPE_32__* %804, i32 %807, i32 %810)
  br label %812

812:                                              ; preds = %803, %798, %793
  br label %1015

813:                                              ; preds = %186
  %814 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %815 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %814, i32 0, i32 4
  %816 = load i32, i32* %815, align 8
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %819

818:                                              ; preds = %813
  store i32 0, i32* %12, align 4
  br label %825

819:                                              ; preds = %813
  %820 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %821 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %820, i32 0, i32 5
  %822 = load i32*, i32** %821, align 8
  %823 = getelementptr inbounds i32, i32* %822, i64 0
  %824 = load i32, i32* %823, align 4
  store i32 %824, i32* %12, align 4
  br label %825

825:                                              ; preds = %819, %818
  %826 = load i32, i32* %12, align 4
  switch i32 %826, label %1000 [
    i32 0, label %827
    i32 1, label %852
    i32 2, label %878
    i32 3, label %904
    i32 5, label %942
    i32 6, label %959
    i32 7, label %976
  ]

827:                                              ; preds = %825
  %828 = load i8*, i8** @NORMAL_ATTR, align 8
  %829 = ptrtoint i8* %828 to i32
  %830 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %831 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %830, i32 0, i32 6
  store i32 %829, i32* %831, align 8
  %832 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %833 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %832, i32 0, i32 10
  %834 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %835 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %834, i32 0, i32 9
  %836 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %837 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %836, i32 0, i32 12
  %838 = bitcast %struct.TYPE_29__* %835 to i8*
  %839 = bitcast %struct.TYPE_29__* %837 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %838, i8* align 8 %839, i64 8, i1 false)
  %840 = bitcast %struct.TYPE_29__* %833 to i8*
  %841 = bitcast %struct.TYPE_29__* %835 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %840, i8* align 8 %841, i64 8, i1 false)
  %842 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %843 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %842, i32 0, i32 8
  %844 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %845 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %844, i32 0, i32 11
  %846 = bitcast %struct.TYPE_30__* %843 to i8*
  %847 = bitcast %struct.TYPE_30__* %845 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %846, i8* align 8 %847, i64 8, i1 false)
  %848 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %849 = call i8* @mask2attr(%struct.TYPE_31__* %848)
  %850 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %851 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %850, i32 0, i32 7
  store i8* %849, i8** %851, align 8
  br label %1000

852:                                              ; preds = %825
  %853 = load i32, i32* @BG_CHANGED, align 4
  %854 = xor i32 %853, -1
  %855 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %856 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %855, i32 0, i32 6
  %857 = load i32, i32* %856, align 8
  %858 = and i32 %857, %854
  store i32 %858, i32* %856, align 8
  %859 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %860 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %859, i32 0, i32 5
  %861 = load i32*, i32** %860, align 8
  %862 = getelementptr inbounds i32, i32* %861, i64 1
  %863 = load i32, i32* %862, align 4
  %864 = and i32 %863, 15
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %869 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %868, i32 0, i32 9
  %870 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %869, i32 0, i32 1
  store i32 %867, i32* %870, align 4
  %871 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %872 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %871, i32 0, i32 10
  %873 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %872, i32 0, i32 1
  store i32 %867, i32* %873, align 4
  %874 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %875 = call i8* @mask2attr(%struct.TYPE_31__* %874)
  %876 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %877 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %876, i32 0, i32 7
  store i8* %875, i8** %877, align 8
  br label %1000

878:                                              ; preds = %825
  %879 = load i32, i32* @FG_CHANGED, align 4
  %880 = xor i32 %879, -1
  %881 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %882 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %881, i32 0, i32 6
  %883 = load i32, i32* %882, align 8
  %884 = and i32 %883, %880
  store i32 %884, i32* %882, align 8
  %885 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %886 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %885, i32 0, i32 5
  %887 = load i32*, i32** %886, align 8
  %888 = getelementptr inbounds i32, i32* %887, i64 1
  %889 = load i32, i32* %888, align 4
  %890 = and i32 %889, 15
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %891
  %893 = load i32, i32* %892, align 4
  %894 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %895 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %894, i32 0, i32 9
  %896 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %895, i32 0, i32 0
  store i32 %893, i32* %896, align 8
  %897 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %898 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %897, i32 0, i32 10
  %899 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %898, i32 0, i32 0
  store i32 %893, i32* %899, align 8
  %900 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %901 = call i8* @mask2attr(%struct.TYPE_31__* %900)
  %902 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %903 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %902, i32 0, i32 7
  store i8* %901, i8** %903, align 8
  br label %1000

904:                                              ; preds = %825
  %905 = load i32, i32* @FG_CHANGED, align 4
  %906 = load i32, i32* @BG_CHANGED, align 4
  %907 = or i32 %905, %906
  %908 = xor i32 %907, -1
  %909 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %910 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %909, i32 0, i32 6
  %911 = load i32, i32* %910, align 8
  %912 = and i32 %911, %908
  store i32 %912, i32* %910, align 8
  %913 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %914 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %913, i32 0, i32 5
  %915 = load i32*, i32** %914, align 8
  %916 = getelementptr inbounds i32, i32* %915, i64 1
  %917 = load i32, i32* %916, align 4
  %918 = and i32 %917, 15
  %919 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %920 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %919, i32 0, i32 9
  %921 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %920, i32 0, i32 0
  store i32 %918, i32* %921, align 8
  %922 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %923 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %922, i32 0, i32 10
  %924 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %923, i32 0, i32 0
  store i32 %918, i32* %924, align 8
  %925 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %926 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %925, i32 0, i32 5
  %927 = load i32*, i32** %926, align 8
  %928 = getelementptr inbounds i32, i32* %927, i64 1
  %929 = load i32, i32* %928, align 4
  %930 = ashr i32 %929, 4
  %931 = and i32 %930, 15
  %932 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %933 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %932, i32 0, i32 9
  %934 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %933, i32 0, i32 1
  store i32 %931, i32* %934, align 4
  %935 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %936 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %935, i32 0, i32 10
  %937 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %936, i32 0, i32 1
  store i32 %931, i32* %937, align 4
  %938 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %939 = call i8* @mask2attr(%struct.TYPE_31__* %938)
  %940 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %941 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %940, i32 0, i32 7
  store i8* %939, i8** %941, align 8
  br label %1000

942:                                              ; preds = %825
  %943 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %944 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %943, i32 0, i32 5
  %945 = load i32*, i32** %944, align 8
  %946 = getelementptr inbounds i32, i32* %945, i64 1
  %947 = load i32, i32* %946, align 4
  %948 = and i32 %947, 15
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %949
  %951 = load i32, i32* %950, align 4
  %952 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %953 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %952, i32 0, i32 8
  %954 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %953, i32 0, i32 0
  store i32 %951, i32* %954, align 8
  %955 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %956 = call i8* @mask2attr(%struct.TYPE_31__* %955)
  %957 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %958 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %957, i32 0, i32 7
  store i8* %956, i8** %958, align 8
  br label %1000

959:                                              ; preds = %825
  %960 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %961 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %960, i32 0, i32 5
  %962 = load i32*, i32** %961, align 8
  %963 = getelementptr inbounds i32, i32* %962, i64 1
  %964 = load i32, i32* %963, align 4
  %965 = and i32 %964, 15
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [16 x i32], [16 x i32]* @scterm_scan_esc.ansi_col, i64 0, i64 %966
  %968 = load i32, i32* %967, align 4
  %969 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %970 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %969, i32 0, i32 8
  %971 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %970, i32 0, i32 1
  store i32 %968, i32* %971, align 4
  %972 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %973 = call i8* @mask2attr(%struct.TYPE_31__* %972)
  %974 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %975 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %974, i32 0, i32 7
  store i8* %973, i8** %975, align 8
  br label %1000

976:                                              ; preds = %825
  %977 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %978 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %977, i32 0, i32 5
  %979 = load i32*, i32** %978, align 8
  %980 = getelementptr inbounds i32, i32* %979, i64 1
  %981 = load i32, i32* %980, align 4
  %982 = and i32 %981, 15
  %983 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %984 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %983, i32 0, i32 8
  %985 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %984, i32 0, i32 1
  store i32 %982, i32* %985, align 4
  %986 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %987 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %986, i32 0, i32 5
  %988 = load i32*, i32** %987, align 8
  %989 = getelementptr inbounds i32, i32* %988, i64 1
  %990 = load i32, i32* %989, align 4
  %991 = ashr i32 %990, 4
  %992 = and i32 %991, 15
  %993 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %994 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %993, i32 0, i32 8
  %995 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %994, i32 0, i32 0
  store i32 %992, i32* %995, align 8
  %996 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %997 = call i8* @mask2attr(%struct.TYPE_31__* %996)
  %998 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %999 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %998, i32 0, i32 7
  store i8* %997, i8** %999, align 8
  br label %1000

1000:                                             ; preds = %825, %976, %959, %942, %904, %878, %852, %827
  br label %1015

1001:                                             ; preds = %186
  %1002 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1003 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1002, i32 0, i32 4
  %1004 = load i32, i32* %1003, align 8
  %1005 = icmp eq i32 %1004, 1
  br i1 %1005, label %1006, label %1014

1006:                                             ; preds = %1001
  %1007 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %1008 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1009 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1008, i32 0, i32 5
  %1010 = load i32*, i32** %1009, align 8
  %1011 = getelementptr inbounds i32, i32* %1010, i64 0
  %1012 = load i32, i32* %1011, align 4
  %1013 = call i32 @sc_switch_scr(%struct.TYPE_33__* %1007, i32 %1012)
  br label %1014

1014:                                             ; preds = %1006, %1001
  br label %1015

1015:                                             ; preds = %186, %1014, %1000, %812, %782, %781, %574, %561, %553, %545, %537, %529, %500, %457, %441, %425, %409, %390, %371, %359, %335, %322, %285, %268, %251, %243, %235, %227, %201
  br label %1363

1016:                                             ; preds = %122
  %1017 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1018 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1017, i32 0, i32 0
  %1019 = load i32, i32* %1018, align 8
  %1020 = icmp eq i32 %1019, 3
  br i1 %1020, label %1021, label %1351

1021:                                             ; preds = %1016
  %1022 = load i32, i32* %6, align 4
  %1023 = icmp sge i32 %1022, 48
  br i1 %1023, label %1024, label %1080

1024:                                             ; preds = %1021
  %1025 = load i32, i32* %6, align 4
  %1026 = icmp sle i32 %1025, 57
  br i1 %1026, label %1027, label %1080

1027:                                             ; preds = %1024
  %1028 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1029 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1028, i32 0, i32 4
  %1030 = load i32, i32* %1029, align 8
  %1031 = load i32, i32* @MAX_ESC_PAR, align 4
  %1032 = icmp slt i32 %1030, %1031
  br i1 %1032, label %1033, label %1079

1033:                                             ; preds = %1027
  %1034 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1035 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1034, i32 0, i32 3
  %1036 = load i32, i32* %1035, align 4
  %1037 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1038 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1037, i32 0, i32 4
  %1039 = load i32, i32* %1038, align 8
  %1040 = icmp ne i32 %1036, %1039
  br i1 %1040, label %1041, label %1055

1041:                                             ; preds = %1033
  %1042 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1043 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1042, i32 0, i32 4
  %1044 = load i32, i32* %1043, align 8
  %1045 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1046 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1045, i32 0, i32 3
  store i32 %1044, i32* %1046, align 4
  %1047 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1048 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1047, i32 0, i32 5
  %1049 = load i32*, i32** %1048, align 8
  %1050 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1051 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1050, i32 0, i32 4
  %1052 = load i32, i32* %1051, align 8
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds i32, i32* %1049, i64 %1053
  store i32 0, i32* %1054, align 4
  br label %1066

1055:                                             ; preds = %1033
  %1056 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1057 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1056, i32 0, i32 5
  %1058 = load i32*, i32** %1057, align 8
  %1059 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1060 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1059, i32 0, i32 4
  %1061 = load i32, i32* %1060, align 8
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds i32, i32* %1058, i64 %1062
  %1064 = load i32, i32* %1063, align 4
  %1065 = mul nsw i32 %1064, 10
  store i32 %1065, i32* %1063, align 4
  br label %1066

1066:                                             ; preds = %1055, %1041
  %1067 = load i32, i32* %6, align 4
  %1068 = sub nsw i32 %1067, 48
  %1069 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1070 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1069, i32 0, i32 5
  %1071 = load i32*, i32** %1070, align 8
  %1072 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1073 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1072, i32 0, i32 4
  %1074 = load i32, i32* %1073, align 8
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32, i32* %1071, i64 %1075
  %1077 = load i32, i32* %1076, align 4
  %1078 = add nsw i32 %1077, %1068
  store i32 %1078, i32* %1076, align 4
  br label %1367

1079:                                             ; preds = %1027
  br label %1080

1080:                                             ; preds = %1079, %1024, %1021
  %1081 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1082 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1081, i32 0, i32 3
  %1083 = load i32, i32* %1082, align 4
  %1084 = add nsw i32 %1083, 1
  %1085 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1086 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1085, i32 0, i32 4
  store i32 %1084, i32* %1086, align 8
  %1087 = load i32, i32* %6, align 4
  switch i32 %1087, label %1350 [
    i32 59, label %1088
    i32 65, label %1096
    i32 66, label %1123
    i32 67, label %1148
    i32 70, label %1225
    i32 71, label %1254
    i32 72, label %1283
    i32 73, label %1303
    i32 83, label %1323
  ]

1088:                                             ; preds = %1080
  %1089 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1090 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1089, i32 0, i32 4
  %1091 = load i32, i32* %1090, align 8
  %1092 = load i32, i32* @MAX_ESC_PAR, align 4
  %1093 = icmp slt i32 %1091, %1092
  br i1 %1093, label %1094, label %1095

1094:                                             ; preds = %1088
  br label %1367

1095:                                             ; preds = %1088
  br label %1350

1096:                                             ; preds = %1080
  %1097 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1098 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1097, i32 0, i32 4
  %1099 = load i32, i32* %1098, align 8
  %1100 = icmp eq i32 %1099, 1
  br i1 %1100, label %1101, label %1122

1101:                                             ; preds = %1096
  %1102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1102, i32 0, i32 5
  %1104 = load i32*, i32** %1103, align 8
  %1105 = getelementptr inbounds i32, i32* %1104, i64 0
  %1106 = load i32, i32* %1105, align 4
  %1107 = and i32 %1106, 255
  %1108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1108, i32 0, i32 3
  store i32 %1107, i32* %1109, align 4
  %1110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %1112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1111, i32 0, i32 0
  %1113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %1112, align 8
  %1114 = icmp eq %struct.TYPE_32__* %1110, %1113
  br i1 %1114, label %1115, label %1121

1115:                                             ; preds = %1101
  %1116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1117, i32 0, i32 3
  %1119 = load i32, i32* %1118, align 4
  %1120 = call i32 @sc_set_border(%struct.TYPE_32__* %1116, i32 %1119)
  br label %1121

1121:                                             ; preds = %1115, %1101
  br label %1122

1122:                                             ; preds = %1121, %1096
  br label %1350

1123:                                             ; preds = %1080
  %1124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1124, i32 0, i32 4
  %1126 = load i32, i32* %1125, align 8
  %1127 = icmp eq i32 %1126, 2
  br i1 %1127, label %1128, label %1147

1128:                                             ; preds = %1123
  %1129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1129, i32 0, i32 5
  %1131 = load i32*, i32** %1130, align 8
  %1132 = getelementptr inbounds i32, i32* %1131, i64 0
  %1133 = load i32, i32* %1132, align 4
  %1134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1134, i32 0, i32 4
  store i32 %1133, i32* %1135, align 8
  %1136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1136, i32 0, i32 5
  %1138 = load i32*, i32** %1137, align 8
  %1139 = getelementptr inbounds i32, i32* %1138, i64 1
  %1140 = load i32, i32* %1139, align 4
  %1141 = load i32, i32* @hz, align 4
  %1142 = mul nsw i32 %1140, %1141
  %1143 = add nsw i32 %1142, 99
  %1144 = sdiv i32 %1143, 100
  %1145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1145, i32 0, i32 5
  store i32 %1144, i32* %1146, align 4
  br label %1147

1147:                                             ; preds = %1128, %1123
  br label %1350

1148:                                             ; preds = %1080
  %1149 = call i32 (...) @spltty()
  store i32 %1149, i32* %11, align 4
  %1150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1150, i32 0, i32 4
  %1152 = load i32, i32* %1151, align 8
  store i32 %1152, i32* %12, align 4
  %1153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1153, i32 0, i32 5
  %1155 = load i32*, i32** %1154, align 8
  %1156 = getelementptr inbounds i32, i32* %1155, i64 0
  %1157 = load i32, i32* %1156, align 4
  store i32 %1157, i32* %8, align 4
  %1158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1158, i32 0, i32 5
  %1160 = load i32*, i32** %1159, align 8
  %1161 = getelementptr inbounds i32, i32* %1160, i64 1
  %1162 = load i32, i32* %1161, align 4
  store i32 %1162, i32* %9, align 4
  %1163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1163, i32 0, i32 5
  %1165 = load i32*, i32** %1164, align 8
  %1166 = getelementptr inbounds i32, i32* %1165, i64 2
  %1167 = load i32, i32* %1166, align 4
  store i32 %1167, i32* %10, align 4
  %1168 = load i32, i32* %12, align 4
  switch i32 %1168, label %1222 [
    i32 1, label %1169
    i32 2, label %1188
    i32 3, label %1193
  ]

1169:                                             ; preds = %1148
  %1170 = load i32, i32* %8, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = icmp ult i64 %1171, 6
  br i1 %1172, label %1173, label %1178

1173:                                             ; preds = %1169
  %1174 = load i32, i32* %8, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds [6 x i32], [6 x i32]* @scterm_scan_esc.cattrs, i64 0, i64 %1175
  %1177 = load i32, i32* %1176, align 4
  store i32 %1177, i32* %8, align 4
  br label %1184

1178:                                             ; preds = %1169
  %1179 = load i32, i32* %8, align 4
  %1180 = and i32 %1179, 3
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds [6 x i32], [6 x i32]* @scterm_scan_esc.cattrs, i64 0, i64 %1181
  %1183 = load i32, i32* %1182, align 4
  store i32 %1183, i32* %8, align 4
  br label %1184

1184:                                             ; preds = %1178, %1173
  %1185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1186 = load i32, i32* %8, align 4
  %1187 = call i32 @sc_change_cursor_shape(%struct.TYPE_32__* %1185, i32 %1186, i32 -1, i32 -1)
  br label %1222

1188:                                             ; preds = %1148
  store i32 0, i32* %10, align 4
  %1189 = load i32, i32* %8, align 4
  %1190 = and i32 %1189, 31
  store i32 %1190, i32* %8, align 4
  %1191 = load i32, i32* %9, align 4
  %1192 = and i32 %1191, 31
  store i32 %1192, i32* %9, align 4
  br label %1193

1193:                                             ; preds = %1148, %1188
  %1194 = load i32, i32* %10, align 4
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1196, label %1209

1196:                                             ; preds = %1193
  %1197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1198, i32 0, i32 6
  %1200 = load i32, i32* %1199, align 8
  %1201 = load i32, i32* %9, align 4
  %1202 = sub nsw i32 %1200, %1201
  %1203 = sub nsw i32 %1202, 1
  %1204 = load i32, i32* %9, align 4
  %1205 = load i32, i32* %8, align 4
  %1206 = sub nsw i32 %1204, %1205
  %1207 = add nsw i32 %1206, 1
  %1208 = call i32 @sc_change_cursor_shape(%struct.TYPE_32__* %1197, i32 -1, i32 %1203, i32 %1207)
  br label %1221

1209:                                             ; preds = %1193
  %1210 = load i32, i32* %10, align 4
  %1211 = icmp eq i32 %1210, 1
  br i1 %1211, label %1212, label %1220

1212:                                             ; preds = %1209
  %1213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1214 = load i32, i32* %8, align 4
  %1215 = load i32, i32* %9, align 4
  %1216 = load i32, i32* %8, align 4
  %1217 = sub nsw i32 %1215, %1216
  %1218 = add nsw i32 %1217, 1
  %1219 = call i32 @sc_change_cursor_shape(%struct.TYPE_32__* %1213, i32 -1, i32 %1214, i32 %1218)
  br label %1220

1220:                                             ; preds = %1212, %1209
  br label %1221

1221:                                             ; preds = %1220, %1196
  br label %1222

1222:                                             ; preds = %1148, %1221, %1184
  %1223 = load i32, i32* %11, align 4
  %1224 = call i32 @splx(i32 %1223)
  br label %1350

1225:                                             ; preds = %1080
  %1226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1226, i32 0, i32 4
  %1228 = load i32, i32* %1227, align 8
  %1229 = icmp eq i32 %1228, 1
  br i1 %1229, label %1230, label %1253

1230:                                             ; preds = %1225
  %1231 = load i32, i32* @FG_CHANGED, align 4
  %1232 = xor i32 %1231, -1
  %1233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1233, i32 0, i32 6
  %1235 = load i32, i32* %1234, align 8
  %1236 = and i32 %1235, %1232
  store i32 %1236, i32* %1234, align 8
  %1237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1237, i32 0, i32 5
  %1239 = load i32*, i32** %1238, align 8
  %1240 = getelementptr inbounds i32, i32* %1239, i64 0
  %1241 = load i32, i32* %1240, align 4
  %1242 = and i32 %1241, 15
  %1243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1243, i32 0, i32 9
  %1245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1244, i32 0, i32 0
  store i32 %1242, i32* %1245, align 8
  %1246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1246, i32 0, i32 10
  %1248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1247, i32 0, i32 0
  store i32 %1242, i32* %1248, align 8
  %1249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1250 = call i8* @mask2attr(%struct.TYPE_31__* %1249)
  %1251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1251, i32 0, i32 7
  store i8* %1250, i8** %1252, align 8
  br label %1253

1253:                                             ; preds = %1230, %1225
  br label %1350

1254:                                             ; preds = %1080
  %1255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1255, i32 0, i32 4
  %1257 = load i32, i32* %1256, align 8
  %1258 = icmp eq i32 %1257, 1
  br i1 %1258, label %1259, label %1282

1259:                                             ; preds = %1254
  %1260 = load i32, i32* @BG_CHANGED, align 4
  %1261 = xor i32 %1260, -1
  %1262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1262, i32 0, i32 6
  %1264 = load i32, i32* %1263, align 8
  %1265 = and i32 %1264, %1261
  store i32 %1265, i32* %1263, align 8
  %1266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1266, i32 0, i32 5
  %1268 = load i32*, i32** %1267, align 8
  %1269 = getelementptr inbounds i32, i32* %1268, i64 0
  %1270 = load i32, i32* %1269, align 4
  %1271 = and i32 %1270, 15
  %1272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1272, i32 0, i32 9
  %1274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1273, i32 0, i32 1
  store i32 %1271, i32* %1274, align 4
  %1275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1275, i32 0, i32 10
  %1277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1276, i32 0, i32 1
  store i32 %1271, i32* %1277, align 4
  %1278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1279 = call i8* @mask2attr(%struct.TYPE_31__* %1278)
  %1280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1280, i32 0, i32 7
  store i8* %1279, i8** %1281, align 8
  br label %1282

1282:                                             ; preds = %1259, %1254
  br label %1350

1283:                                             ; preds = %1080
  %1284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1284, i32 0, i32 4
  %1286 = load i32, i32* %1285, align 8
  %1287 = icmp eq i32 %1286, 1
  br i1 %1287, label %1288, label %1302

1288:                                             ; preds = %1283
  %1289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1289, i32 0, i32 5
  %1291 = load i32*, i32** %1290, align 8
  %1292 = getelementptr inbounds i32, i32* %1291, i64 0
  %1293 = load i32, i32* %1292, align 4
  %1294 = and i32 %1293, 15
  %1295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1295, i32 0, i32 8
  %1297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1296, i32 0, i32 1
  store i32 %1294, i32* %1297, align 4
  %1298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1299 = call i8* @mask2attr(%struct.TYPE_31__* %1298)
  %1300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1300, i32 0, i32 7
  store i8* %1299, i8** %1301, align 8
  br label %1302

1302:                                             ; preds = %1288, %1283
  br label %1350

1303:                                             ; preds = %1080
  %1304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1304, i32 0, i32 4
  %1306 = load i32, i32* %1305, align 8
  %1307 = icmp eq i32 %1306, 1
  br i1 %1307, label %1308, label %1322

1308:                                             ; preds = %1303
  %1309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1309, i32 0, i32 5
  %1311 = load i32*, i32** %1310, align 8
  %1312 = getelementptr inbounds i32, i32* %1311, i64 0
  %1313 = load i32, i32* %1312, align 4
  %1314 = and i32 %1313, 15
  %1315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1315, i32 0, i32 8
  %1317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1316, i32 0, i32 0
  store i32 %1314, i32* %1317, align 8
  %1318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1319 = call i8* @mask2attr(%struct.TYPE_31__* %1318)
  %1320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1320, i32 0, i32 7
  store i8* %1319, i8** %1321, align 8
  br label %1322

1322:                                             ; preds = %1308, %1303
  br label %1350

1323:                                             ; preds = %1080
  %1324 = call i32 (...) @spltty()
  store i32 %1324, i32* %11, align 4
  %1325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1325, i32 0, i32 4
  %1327 = load i32, i32* %1326, align 8
  store i32 %1327, i32* %12, align 4
  %1328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1328, i32 0, i32 5
  %1330 = load i32*, i32** %1329, align 8
  %1331 = getelementptr inbounds i32, i32* %1330, i64 0
  %1332 = load i32, i32* %1331, align 4
  store i32 %1332, i32* %8, align 4
  %1333 = load i32, i32* %12, align 4
  switch i32 %1333, label %1347 [
    i32 0, label %1334
    i32 1, label %1335
  ]

1334:                                             ; preds = %1323
  store i32 0, i32* %8, align 4
  br label %1335

1335:                                             ; preds = %1323, %1334
  %1336 = load i32, i32* %8, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = icmp ult i64 %1337, 3
  br i1 %1338, label %1339, label %1346

1339:                                             ; preds = %1335
  %1340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %1341 = load i32, i32* %8, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds [3 x i32], [3 x i32]* @scterm_scan_esc.tcattrs, i64 0, i64 %1342
  %1344 = load i32, i32* %1343, align 4
  %1345 = call i32 @sc_change_cursor_shape(%struct.TYPE_32__* %1340, i32 %1344, i32 -1, i32 -1)
  br label %1346

1346:                                             ; preds = %1339, %1335
  br label %1347

1347:                                             ; preds = %1323, %1346
  %1348 = load i32, i32* %11, align 4
  %1349 = call i32 @splx(i32 %1348)
  br label %1350

1350:                                             ; preds = %1080, %1347, %1322, %1302, %1282, %1253, %1222, %1147, %1122, %1095
  br label %1362

1351:                                             ; preds = %1016
  %1352 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1352, i32 0, i32 0
  %1354 = load i32, i32* %1353, align 8
  %1355 = icmp eq i32 %1354, 5
  br i1 %1355, label %1356, label %1361

1356:                                             ; preds = %1351
  %1357 = load i32, i32* %6, align 4
  switch i32 %1357, label %1359 [
    i32 66, label %1358
  ]

1358:                                             ; preds = %1356
  br label %1360

1359:                                             ; preds = %1356
  br label %1360

1360:                                             ; preds = %1359, %1358
  br label %1361

1361:                                             ; preds = %1360, %1351
  br label %1362

1362:                                             ; preds = %1361, %1350
  br label %1363

1363:                                             ; preds = %1362, %1015
  br label %1364

1364:                                             ; preds = %1363, %121
  %1365 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %1366 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1365, i32 0, i32 0
  store i32 0, i32* %1366, align 8
  br label %1367

1367:                                             ; preds = %1364, %1094, %1066, %224, %200, %172, %118, %75
  ret void
}

declare dso_local i32 @sc_move_cursor(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sc_term_up_scroll(%struct.TYPE_32__*, i32, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @mask2attr(%struct.TYPE_31__*) #1

declare dso_local i32 @sc_change_cursor_shape(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i32 @sc_clear_screen(%struct.TYPE_32__*) #1

declare dso_local i32 @sc_term_up(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sc_term_down(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sc_term_right(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_term_left(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_term_clr_eos(%struct.TYPE_32__*, i32, i32, i8*) #1

declare dso_local i32 @sc_term_clr_eol(%struct.TYPE_32__*, i32, i32, i8*) #1

declare dso_local i32 @sc_term_ins_line(%struct.TYPE_32__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sc_term_del_line(%struct.TYPE_32__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sc_term_del_char(%struct.TYPE_32__*, i32, i32, i8*) #1

declare dso_local i32 @sc_term_ins_char(%struct.TYPE_32__*, i32, i32, i8*) #1

declare dso_local i32 @sc_vtb_erase(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @mark_for_update(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_term_backtab(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_term_col(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_term_row(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sc_switch_scr(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @sc_set_border(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
