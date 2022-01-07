; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_free_printer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_free_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@LPF_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_printer(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %2, align 8
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.printer*, %struct.printer** %2, align 8
  %6 = getelementptr inbounds %struct.printer, %struct.printer* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load %struct.printer*, %struct.printer** %2, align 8
  %11 = getelementptr inbounds %struct.printer, %struct.printer* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %12)
  br label %14

14:                                               ; preds = %9, %4
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.printer*, %struct.printer** %2, align 8
  %18 = getelementptr inbounds %struct.printer, %struct.printer* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.printer*, %struct.printer** %2, align 8
  %23 = getelementptr inbounds %struct.printer, %struct.printer* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LPF_COUNT, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.printer*, %struct.printer** %2, align 8
  %35 = getelementptr inbounds %struct.printer, %struct.printer* %34, i32 0, i32 13
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.printer*, %struct.printer** %2, align 8
  %44 = getelementptr inbounds %struct.printer, %struct.printer* %43, i32 0, i32 13
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %49)
  br label %51

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.printer*, %struct.printer** %2, align 8
  %59 = getelementptr inbounds %struct.printer, %struct.printer* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.printer*, %struct.printer** %2, align 8
  %64 = getelementptr inbounds %struct.printer, %struct.printer* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.printer*, %struct.printer** %2, align 8
  %71 = getelementptr inbounds %struct.printer, %struct.printer* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.printer*, %struct.printer** %2, align 8
  %76 = getelementptr inbounds %struct.printer, %struct.printer* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.printer*, %struct.printer** %2, align 8
  %83 = getelementptr inbounds %struct.printer, %struct.printer* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.printer*, %struct.printer** %2, align 8
  %88 = getelementptr inbounds %struct.printer, %struct.printer* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.printer*, %struct.printer** %2, align 8
  %95 = getelementptr inbounds %struct.printer, %struct.printer* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.printer*, %struct.printer** %2, align 8
  %100 = getelementptr inbounds %struct.printer, %struct.printer* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.printer*, %struct.printer** %2, align 8
  %107 = getelementptr inbounds %struct.printer, %struct.printer* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.printer*, %struct.printer** %2, align 8
  %112 = getelementptr inbounds %struct.printer, %struct.printer* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.printer*, %struct.printer** %2, align 8
  %119 = getelementptr inbounds %struct.printer, %struct.printer* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.printer*, %struct.printer** %2, align 8
  %124 = getelementptr inbounds %struct.printer, %struct.printer* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.printer*, %struct.printer** %2, align 8
  %131 = getelementptr inbounds %struct.printer, %struct.printer* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.printer*, %struct.printer** %2, align 8
  %136 = getelementptr inbounds %struct.printer, %struct.printer* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.printer*, %struct.printer** %2, align 8
  %143 = getelementptr inbounds %struct.printer, %struct.printer* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.printer*, %struct.printer** %2, align 8
  %148 = getelementptr inbounds %struct.printer, %struct.printer* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %149)
  br label %151

151:                                              ; preds = %146, %141
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.printer*, %struct.printer** %2, align 8
  %155 = getelementptr inbounds %struct.printer, %struct.printer* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.printer*, %struct.printer** %2, align 8
  %160 = getelementptr inbounds %struct.printer, %struct.printer* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.printer*, %struct.printer** %2, align 8
  %167 = getelementptr inbounds %struct.printer, %struct.printer* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.printer*, %struct.printer** %2, align 8
  %172 = getelementptr inbounds %struct.printer, %struct.printer* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %173)
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.printer*, %struct.printer** %2, align 8
  %179 = getelementptr inbounds %struct.printer, %struct.printer* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.printer*, %struct.printer** %2, align 8
  %184 = getelementptr inbounds %struct.printer, %struct.printer* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %185)
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.printer*, %struct.printer** %2, align 8
  %191 = getelementptr inbounds %struct.printer, %struct.printer* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.printer*, %struct.printer** %2, align 8
  %196 = getelementptr inbounds %struct.printer, %struct.printer* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %197)
  br label %199

199:                                              ; preds = %194, %189
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.printer*, %struct.printer** %2, align 8
  %203 = getelementptr inbounds %struct.printer, %struct.printer* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.printer*, %struct.printer** %2, align 8
  %208 = getelementptr inbounds %struct.printer, %struct.printer* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32, ...) bitcast (i32 (...)* @free to i32 (i32, ...)*)(i32 %209)
  br label %211

211:                                              ; preds = %206, %201
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.printer*, %struct.printer** %2, align 8
  %214 = call i32 @init_printer(%struct.printer* %213)
  ret void
}

declare dso_local i32 @free(...) #1

declare dso_local i32 @init_printer(%struct.printer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
