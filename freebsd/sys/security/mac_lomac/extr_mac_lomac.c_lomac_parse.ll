; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"lomac_internalize_label: range mismatch\00", align 1
@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*, i8*)* @lomac_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_parse(%struct.mac_lomac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_lomac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.mac_lomac* %0, %struct.mac_lomac** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 40)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* null, i8** %10, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 91)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %10, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %196

36:                                               ; preds = %31, %28
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 45)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %196

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %50
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %196

64:                                               ; preds = %57
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 41)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %196

71:                                               ; preds = %64
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %3, align 4
  br label %196

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %7, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %79, %36
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %9, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  br label %97

97:                                               ; preds = %95, %86
  %98 = phi i1 [ true, %86 ], [ %96, %95 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @KASSERT(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 93)
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %3, align 4
  br label %196

113:                                              ; preds = %103
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %3, align 4
  br label %196

121:                                              ; preds = %113
  %122 = load i8*, i8** %12, align 8
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %121, %97
  %124 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %125 = call i32 @bzero(%struct.mac_lomac* %124, i32 20)
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %130 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %129, i32 0, i32 4
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @lomac_parse_element(i32* %130, i8* %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %3, align 4
  br label %196

137:                                              ; preds = %128
  %138 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %139 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %140 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %123
  %144 = load i8*, i8** %11, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %148 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %147, i32 0, i32 3
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @lomac_parse_element(i32* %148, i8* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %3, align 4
  br label %196

155:                                              ; preds = %146
  %156 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %157 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %158 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %143
  %162 = load i8*, i8** %9, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %188

164:                                              ; preds = %161
  %165 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %166 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %165, i32 0, i32 2
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @lomac_parse_element(i32* %166, i8* %167)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %196

173:                                              ; preds = %164
  %174 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %175 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %174, i32 0, i32 1
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @lomac_parse_element(i32* %175, i8* %176)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %3, align 4
  br label %196

182:                                              ; preds = %173
  %183 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %184 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %185 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %161
  %189 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %190 = call i32 @lomac_valid(%struct.mac_lomac* %189)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %3, align 4
  br label %196

195:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %193, %180, %171, %153, %135, %119, %111, %77, %69, %62, %48, %34
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.mac_lomac*, i32) #1

declare dso_local i32 @lomac_parse_element(i32*, i8*) #1

declare dso_local i32 @lomac_valid(%struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
