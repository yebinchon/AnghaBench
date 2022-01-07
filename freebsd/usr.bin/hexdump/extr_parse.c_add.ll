; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, %struct.TYPE_4__* }

@add.nextfs = internal global %struct.TYPE_5__** null, align 8
@fshead = common dso_local global %struct.TYPE_5__* null, align 8
@F_SETREP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i8* @calloc(i32 1, i32 16)
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i32 1, i32* null)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fshead, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @fshead, align 8
  br label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @add.nextfs, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %20, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %struct.TYPE_5__** %23, %struct.TYPE_5__*** @add.nextfs, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_4__** %25, %struct.TYPE_4__*** %7, align 8
  %26 = load i8*, i8** %2, align 8
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %199, %21
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %218

42:                                               ; preds = %37
  %43 = call i8* @calloc(i32 1, i32 32)
  %44 = bitcast i8* %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %6, align 8
  %45 = icmp eq %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @err(i32 1, i32* null)
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store %struct.TYPE_4__** %52, %struct.TYPE_4__*** %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isdigit(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %48
  %60 = load i8*, i8** %3, align 8
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %67, %59
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isdigit(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %61

70:                                               ; preds = %61
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isspace(i8 zeroext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 47
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @badfmt(i8* %81)
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = load i8*, i8** %4, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @F_SETREP, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %100, %83
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isspace(i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %3, align 8
  br label %94

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %48
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %116, %109
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @isspace(i8 zeroext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %110

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isdigit(i8 zeroext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %118
  %124 = load i8*, i8** %3, align 8
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %131, %123
  %126 = load i8*, i8** %3, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @isdigit(i8 zeroext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  br label %125

134:                                              ; preds = %125
  %135 = load i8*, i8** %3, align 8
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @isspace(i8 zeroext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %2, align 8
  %141 = call i32 @badfmt(i8* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i8*, i8** %4, align 8
  %144 = call i8* @atoi(i8* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %3, align 8
  br label %149

149:                                              ; preds = %155, %142
  %150 = load i8*, i8** %3, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @isspace(i8 zeroext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %3, align 8
  br label %149

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %118
  %160 = load i8*, i8** %3, align 8
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %162, 34
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i8*, i8** %2, align 8
  %166 = call i32 @badfmt(i8* %165)
  br label %167

167:                                              ; preds = %164, %159
  %168 = load i8*, i8** %3, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %3, align 8
  store i8* %169, i8** %4, align 8
  br label %170

170:                                              ; preds = %184, %167
  %171 = load i8*, i8** %3, align 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp ne i32 %173, 34
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %3, align 8
  %178 = load i8, i8* %176, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i8*, i8** %2, align 8
  %183 = call i32 @badfmt(i8* %182)
  br label %184

184:                                              ; preds = %181, %175
  br label %170

185:                                              ; preds = %170
  %186 = load i8*, i8** %3, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = add nsw i64 %190, 1
  %192 = trunc i64 %191 to i32
  %193 = call i32 @malloc(i32 %192)
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = icmp ne i32 %193, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %185
  %198 = call i32 @err(i32 1, i32* null)
  br label %199

199:                                              ; preds = %197, %185
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %4, align 8
  %204 = load i8*, i8** %3, align 8
  %205 = load i8*, i8** %4, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = add nsw i64 %208, 1
  %210 = trunc i64 %209 to i32
  %211 = call i32 @strlcpy(i32 %202, i8* %203, i32 %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @escape(i32 %214)
  %216 = load i8*, i8** %3, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %3, align 8
  br label %27

218:                                              ; preds = %41
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @badfmt(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @escape(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
