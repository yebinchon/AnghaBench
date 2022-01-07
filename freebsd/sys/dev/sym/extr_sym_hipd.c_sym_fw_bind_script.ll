; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_fw_bind_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_fw_bind_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: ERROR0 IN SCRIPT at %d.\0A\00", align 1
@SCR_DATA_ZERO = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_SCRIPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%d:  <%x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: ERROR1 IN SCRIPT at %d.\0A\00", align 1
@SCR_NO_FLUSH = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@FE_WIDE = common dso_local global i32 0, align 4
@OPC_MOVE = common dso_local global i32 0, align 4
@RELOC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"sym_fw_bind_script: weird relocation %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @sym_fw_bind_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_fw_bind_script(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %12, align 8
  br label %21

21:                                               ; preds = %230, %160, %48, %30, %3
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %231

25:                                               ; preds = %21
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = call i8* @sym_name(%struct.TYPE_4__* %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %39)
  %41 = call i32 @MDELAY(i32 10000)
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %13, align 8
  br label %21

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SCR_DATA_ZERO, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %13, align 8
  store i32 0, i32* %49, align 4
  br label %21

51:                                               ; preds = %44
  %52 = load i32, i32* @DEBUG_FLAGS, align 4
  %53 = load i32, i32* @DEBUG_SCRIPT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 28
  switch i32 %68, label %151 [
    i32 15, label %69
    i32 14, label %70
    i32 12, label %71
    i32 0, label %113
    i32 1, label %125
    i32 8, label %137
    i32 4, label %150
    i32 5, label %150
    i32 6, label %150
    i32 7, label %150
  ]

69:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %152

70:                                               ; preds = %66
  store i32 1, i32* %14, align 4
  br label %152

71:                                               ; preds = %66
  store i32 2, i32* %14, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 %80, 3
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = call i8* @sym_name(%struct.TYPE_4__* %84)
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %92)
  %94 = call i32 @MDELAY(i32 10000)
  br label %95

95:                                               ; preds = %83, %71
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SCR_NO_FLUSH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FE_PFEN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SCR_NO_FLUSH, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %100, %95
  br label %152

113:                                              ; preds = %66
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FE_WIDE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @OPC_MOVE, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %113
  store i32 1, i32* %14, align 4
  br label %152

125:                                              ; preds = %66
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FE_WIDE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @OPC_MOVE, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %132, %125
  store i32 0, i32* %14, align 4
  br label %152

137:                                              ; preds = %66
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, 8388608
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %149

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, -130023424
  %145 = icmp eq i32 %144, -2143289344
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 2, i32* %14, align 4
  br label %148

147:                                              ; preds = %142
  store i32 1, i32* %14, align 4
  br label %148

148:                                              ; preds = %147, %146
  br label %149

149:                                              ; preds = %148, %141
  br label %152

150:                                              ; preds = %66, %66, %66, %66
  store i32 1, i32* %14, align 4
  br label %152

151:                                              ; preds = %66
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %151, %150, %149, %136, %124, %112, %70, %69
  %153 = load i32, i32* %7, align 4
  %154 = call i8* @cpu_to_scr(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_scr(i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %13, align 8
  br label %21

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %224, %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %14, align 4
  %172 = icmp ne i32 %170, 0
  br i1 %172, label %173, label %230

173:                                              ; preds = %169
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @RELOC_MASK, align 4
  %178 = and i32 %176, %177
  switch i32 %178, label %221 [
    i32 129, label %179
    i32 131, label %188
    i32 130, label %197
    i32 128, label %206
    i32 0, label %215
  ]

179:                                              ; preds = %173
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @RELOC_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %183, %186
  store i32 %187, i32* %8, align 4
  br label %224

188:                                              ; preds = %173
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @RELOC_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %192, %195
  store i32 %196, i32* %8, align 4
  br label %224

197:                                              ; preds = %173
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @RELOC_MASK, align 4
  %200 = xor i32 %199, -1
  %201 = and i32 %198, %200
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  store i32 %205, i32* %8, align 4
  br label %224

206:                                              ; preds = %173
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @RELOC_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %207, %209
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %210, %213
  store i32 %214, i32* %8, align 4
  br label %224

215:                                              ; preds = %173
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %8, align 4
  br label %224

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %173, %220
  store i32 0, i32* %8, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %221, %218, %206, %197, %188, %179
  %225 = load i32, i32* %8, align 4
  %226 = call i8* @cpu_to_scr(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load i32*, i32** %13, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %13, align 8
  store i32 %227, i32* %228, align 4
  br label %169

230:                                              ; preds = %169
  br label %21

231:                                              ; preds = %21
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_4__*) #1

declare dso_local i32 @MDELAY(i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
