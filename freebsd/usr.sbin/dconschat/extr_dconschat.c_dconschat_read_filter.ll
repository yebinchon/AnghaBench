; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32, i64, i32 }
%struct.dcons_port = type { i32, i32 }

@F_TELNET = common dso_local global i32 0, align 4
@IAC = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"(IAC)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(0 stripped)\00", align 1
@STATE0 = common dso_local global i8* null, align 8
@abreak = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\0D\0A[Are you sure to reset target? (y/N)]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@KEY_CR = common dso_local global i64 0, align 8
@F_ALT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*, %struct.dcons_port*, i64*, i32, i64*, i32*)* @dconschat_read_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_read_filter(%struct.dcons_state* %0, %struct.dcons_port* %1, i64* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.dcons_state*, align 8
  %8 = alloca %struct.dcons_port*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.dcons_state* %0, %struct.dcons_state** %7, align 8
  store %struct.dcons_port* %1, %struct.dcons_port** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  br label %15

15:                                               ; preds = %240, %66, %50, %35, %6
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %245

18:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  %19 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %20 = call i64 @IS_CONSOLE(%struct.dcons_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %200

22:                                               ; preds = %18
  %23 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %24 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @F_TELNET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %22
  %30 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %31 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %15

40:                                               ; preds = %29
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IAC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i64, i64* @verbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %52 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %51, i32 0, i32 0
  store i32 2, i32* %52, align 4
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %15

57:                                               ; preds = %40
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64, i64* @verbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %15

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %22
  %73 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %74 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %191 [
    i32 130, label %76
    i32 129, label %92
    i32 128, label %168
  ]

76:                                               ; preds = %72
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %80 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  %84 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %85 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %84, i32 0, i32 1
  store i32 129, i32* %85, align 4
  br label %91

86:                                               ; preds = %76
  %87 = load i8*, i8** @STATE0, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %90 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  br label %191

92:                                               ; preds = %72
  %93 = load i8*, i8** @STATE0, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %96 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 1, i32* %13, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 46
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 @dconschat_cleanup(i32 0)
  br label %167

102:                                              ; preds = %92
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @CTRL(i8 signext 66)
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @abreak, align 4
  %109 = load i64*, i64** %11, align 8
  %110 = call i32 @bcopy(i32 %108, i64* %109, i32 3)
  %111 = load i64*, i64** %11, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  store i64* %112, i64** %11, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 3
  store i32 %115, i32* %113, align 4
  br label %166

116:                                              ; preds = %102
  %117 = load i64*, i64** %9, align 8
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @CTRL(i8 signext 71)
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %123 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %124 = call i32 @dconschat_fork_gdb(%struct.dcons_state* %122, %struct.dcons_port* %123)
  br label %165

125:                                              ; preds = %116
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @CTRL(i8 signext 82)
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %132 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %137 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %136, i32 0, i32 1
  store i32 128, i32* %137, align 4
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %138 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %139 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %14, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = call i32 (i32, ...) @write(i32 %140, i8* %141, i32 %143)
  br label %164

145:                                              ; preds = %130, %125
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @CTRL(i8 signext 90)
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %152 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %153 = call i32 @dconschat_suspend(%struct.dcons_state* %151, %struct.dcons_port* %152)
  br label %163

154:                                              ; preds = %145
  store i32 0, i32* %13, align 4
  %155 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %156 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %11, align 8
  %159 = getelementptr inbounds i64, i64* %158, i32 1
  store i64* %159, i64** %11, align 8
  store i64 %157, i64* %158, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %154, %150
  br label %164

164:                                              ; preds = %163, %135
  br label %165

165:                                              ; preds = %164, %121
  br label %166

166:                                              ; preds = %165, %107
  br label %167

167:                                              ; preds = %166, %100
  br label %191

168:                                              ; preds = %72
  %169 = load i8*, i8** @STATE0, align 8
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %172 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  store i32 1, i32* %13, align 4
  %173 = load i64*, i64** %9, align 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 121
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %178 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %179 = call i32 @dconschat_reset_target(%struct.dcons_state* %177, %struct.dcons_port* %178)
  br label %190

180:                                              ; preds = %168
  %181 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %182 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i64*, i64** %9, align 8
  %185 = call i32 (i32, ...) @write(i32 %183, i64* %184, i32 1)
  %186 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %187 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32, ...) @write(i32 %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  br label %190

190:                                              ; preds = %180, %176
  br label %191

191:                                              ; preds = %72, %190, %167, %91
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @KEY_CR, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %198 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %197, i32 0, i32 1
  store i32 130, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %191
  br label %229

200:                                              ; preds = %18
  %201 = load %struct.dcons_port*, %struct.dcons_port** %8, align 8
  %202 = call i64 @IS_GDB(%struct.dcons_port* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %200
  %205 = load i64*, i64** %9, align 8
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @CTRL(i8 signext 67)
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load %struct.dcons_state*, %struct.dcons_state** %7, align 8
  %211 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @F_ALT_BREAK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = load i32, i32* @abreak, align 4
  %218 = load i64*, i64** %11, align 8
  %219 = call i32 @bcopy(i32 %217, i64* %218, i32 3)
  %220 = load i64*, i64** %11, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 3
  store i64* %221, i64** %11, align 8
  %222 = load i64*, i64** %9, align 8
  %223 = getelementptr inbounds i64, i64* %222, i32 1
  store i64* %223, i64** %9, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 3
  store i32 %226, i32* %224, align 4
  store i32 0, i32* %10, align 4
  br label %245

227:                                              ; preds = %209, %204
  br label %228

228:                                              ; preds = %227, %200
  br label %229

229:                                              ; preds = %228, %199
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %229
  %233 = load i64*, i64** %9, align 8
  %234 = load i64, i64* %233, align 8
  %235 = load i64*, i64** %11, align 8
  %236 = getelementptr inbounds i64, i64* %235, i32 1
  store i64* %236, i64** %11, align 8
  store i64 %234, i64* %235, align 8
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %232, %229
  %241 = load i64*, i64** %9, align 8
  %242 = getelementptr inbounds i64, i64* %241, i32 1
  store i64* %242, i64** %9, align 8
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %10, align 4
  br label %15

245:                                              ; preds = %216, %15
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %246, align 4
  ret i32 %247
}

declare dso_local i64 @IS_CONSOLE(%struct.dcons_port*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dconschat_cleanup(i32) #1

declare dso_local i64 @CTRL(i8 signext) #1

declare dso_local i32 @bcopy(i32, i64*, i32) #1

declare dso_local i32 @dconschat_fork_gdb(%struct.dcons_state*, %struct.dcons_port*) #1

declare dso_local i32 @write(i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dconschat_suspend(%struct.dcons_state*, %struct.dcons_port*) #1

declare dso_local i32 @dconschat_reset_target(%struct.dcons_state*, %struct.dcons_port*) #1

declare dso_local i64 @IS_GDB(%struct.dcons_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
