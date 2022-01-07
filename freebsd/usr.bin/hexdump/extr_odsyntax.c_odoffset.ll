; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_odsyntax.c_odoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_odsyntax.c_odoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@skip = common dso_local global i32 0, align 4
@fshead = common dso_local global %struct.TYPE_8__* null, align 8
@TYPE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8***)* @odoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odoffset(i32 %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8*** %1, i8**** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8***, i8**** %4, align 8
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load i8***, i8**** %4, align 8
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i8* [ %15, %11 ], [ %20, %16 ]
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 43
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 120
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isxdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42, %36, %27
  br label %221

49:                                               ; preds = %42, %30, %21
  store i32 0, i32* %8, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 43
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 120
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @isxdigit(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  store i32 16, i32* %8, align 4
  br label %89

73:                                               ; preds = %64, %58
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 48
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 120
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %5, align 8
  store i32 16, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %79, %73
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i8*, i8** %5, align 8
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %100, %92
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isxdigit(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  br label %94

103:                                              ; preds = %94
  br label %116

104:                                              ; preds = %89
  %105 = load i8*, i8** %5, align 8
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %112, %104
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @isdigit(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  br label %106

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %221

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %221

130:                                              ; preds = %126
  store i32 10, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  br label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 8, %137 ]
  %140 = call i32 @strtoll(i8* %132, i8** %7, i32 %139)
  store i32 %140, i32* @skip, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = icmp ne i8* %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* @skip, align 4
  br label %221

145:                                              ; preds = %138
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 66
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* @skip, align 4
  %156 = mul nsw i32 %155, 1024
  store i32 %156, i32* @skip, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %170

159:                                              ; preds = %149
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 98
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* @skip, align 4
  %166 = mul nsw i32 %165, 512
  store i32 %166, i32* @skip, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %145
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 0, i32* @skip, align 4
  br label %221

176:                                              ; preds = %171
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 16
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fshead, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* @TYPE_OFFSET, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8 120, i8* %186, align 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fshead, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* @TYPE_OFFSET, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 120, i8* %195, align 1
  br label %217

196:                                              ; preds = %176
  %197 = load i32, i32* %8, align 4
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fshead, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* @TYPE_OFFSET, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 100, i8* %206, align 1
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fshead, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i64, i64* @TYPE_OFFSET, align 8
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8 100, i8* %215, align 1
  br label %216

216:                                              ; preds = %199, %196
  br label %217

217:                                              ; preds = %216, %179
  %218 = load i8***, i8**** %4, align 8
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 1
  store i8* null, i8** %220, align 8
  br label %221

221:                                              ; preds = %217, %175, %144, %129, %120, %48
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
