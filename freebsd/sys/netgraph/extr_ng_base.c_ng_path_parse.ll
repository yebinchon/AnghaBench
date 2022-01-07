; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_path_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_path_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_path_parse(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %28, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 58
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %11, align 8
  br label %15

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %201

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %201

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %48

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %43
  br label %72

70:                                               ; preds = %31
  store i8* null, i8** %10, align 8
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %70, %69
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 58
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %201

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %73

93:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %120, %93
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %94
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 -1, i32* %5, align 4
  br label %201

119:                                              ; preds = %109, %101
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %94

123:                                              ; preds = %94
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 46
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %11, align 8
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %147, label %154

147:                                              ; preds = %137
  %148 = load i8*, i8** %11, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %147, %137, %132
  %155 = load i8*, i8** %11, align 8
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load i8*, i8** %11, align 8
  store i8* %159, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %177, %158
  %161 = load i8*, i8** %11, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %160
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 46
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i8* null, i8** %12, align 8
  br label %180

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %160

180:                                              ; preds = %175, %160
  br label %182

181:                                              ; preds = %154
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  br label %182

182:                                              ; preds = %181, %180
  %183 = load i8**, i8*** %7, align 8
  %184 = icmp ne i8** %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i8*, i8** %10, align 8
  %187 = load i8**, i8*** %7, align 8
  store i8* %186, i8** %187, align 8
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8**, i8*** %8, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i8*, i8** %11, align 8
  %193 = load i8**, i8*** %8, align 8
  store i8* %192, i8** %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i8**, i8*** %9, align 8
  %196 = icmp ne i8** %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %12, align 8
  %199 = load i8**, i8*** %9, align 8
  store i8* %198, i8** %199, align 8
  br label %200

200:                                              ; preds = %197, %194
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %200, %118, %88, %63, %42
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
