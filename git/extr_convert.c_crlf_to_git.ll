; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_crlf_to_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_crlf_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.text_stat = type { i64, i64 }

@CRLF_BINARY = common dso_local global i32 0, align 4
@CRLF_AUTO = common dso_local global i32 0, align 4
@CRLF_AUTO_INPUT = common dso_local global i32 0, align 4
@CRLF_AUTO_CRLF = common dso_local global i32 0, align 4
@CONV_EOL_RENORMALIZE = common dso_local global i32 0, align 4
@CONV_EOL_RNDTRP_WARN = common dso_local global i32 0, align 4
@CONV_EOL_RNDTRP_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32, i32)* @crlf_to_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_to_git(%struct.index_state* %0, i8* %1, i8* %2, i64 %3, %struct.strbuf* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.text_stat, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.text_stat, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  store %struct.index_state* %0, %struct.index_state** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.strbuf* %4, %struct.strbuf** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @CRLF_BINARY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %7
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %7
  store i32 0, i32* %8, align 4
  br label %211

32:                                               ; preds = %28, %25
  %33 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %34 = icmp ne %struct.strbuf* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %211

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @gather_stats(i8* %40, i64 %41, %struct.text_stat* %16)
  %43 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %16, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @CRLF_AUTO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @CRLF_AUTO_INPUT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @CRLF_AUTO_CRLF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56, %52, %39
  %61 = call i64 @convert_is_binary(%struct.text_stat* %16)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %211

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @CONV_EOL_RENORMALIZE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.index_state*, %struct.index_state** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @has_crlf_in_index(%struct.index_state* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %18, align 4
  br label %75

75:                                               ; preds = %74, %69, %64
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @CONV_EOL_RNDTRP_WARN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @CONV_EOL_RNDTRP_DIE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %81
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86, %76
  %90 = call i32 @memcpy(%struct.text_stat* %19, %struct.text_stat* %16, i32 16)
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %95
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @will_convert_lf_to_crlf(%struct.text_stat* %19, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %106
  store i64 %109, i64* %107, align 8
  %110 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %19, i32 0, i32 0
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %104, %100
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @check_global_conv_flags_eol(i8* %112, i32 %113, %struct.text_stat* %16, %struct.text_stat* %19, i32 %114)
  br label %116

116:                                              ; preds = %111, %86, %81
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %211

120:                                              ; preds = %116
  %121 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %122 = icmp ne %struct.strbuf* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  br label %211

124:                                              ; preds = %120
  %125 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %126 = call i64 @strbuf_avail(%struct.strbuf* %125)
  %127 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %126, %129
  %131 = load i64, i64* %12, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %137 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %135, %138
  %140 = call i32 @strbuf_grow(%struct.strbuf* %134, i64 %139)
  br label %141

141:                                              ; preds = %133, %124
  %142 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %143 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %17, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @CRLF_AUTO, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @CRLF_AUTO_INPUT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @CRLF_AUTO_CRLF, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %152, %148, %141
  br label %157

157:                                              ; preds = %169, %156
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %11, align 8
  %160 = load i8, i8* %158, align 1
  store i8 %160, i8* %20, align 1
  %161 = load i8, i8* %20, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %162, 13
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i8, i8* %20, align 1
  %166 = load i8*, i8** %17, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %17, align 8
  store i8 %165, i8* %166, align 1
  br label %168

168:                                              ; preds = %164, %157
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %12, align 8
  %171 = add i64 %170, -1
  store i64 %171, i64* %12, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %157, label %173

173:                                              ; preds = %169
  br label %200

174:                                              ; preds = %152
  br label %175

175:                                              ; preds = %195, %174
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %11, align 8
  %178 = load i8, i8* %176, align 1
  store i8 %178, i8* %21, align 1
  %179 = load i8, i8* %21, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 13
  br i1 %181, label %182, label %190

182:                                              ; preds = %175
  %183 = load i64, i64* %12, align 8
  %184 = icmp ult i64 1, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i8*, i8** %11, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 10
  br i1 %189, label %194, label %190

190:                                              ; preds = %185, %182, %175
  %191 = load i8, i8* %21, align 1
  %192 = load i8*, i8** %17, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %17, align 8
  store i8 %191, i8* %192, align 1
  br label %194

194:                                              ; preds = %190, %185
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %12, align 8
  %197 = add i64 %196, -1
  store i64 %197, i64* %12, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %175, label %199

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %199, %173
  %201 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %204 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = ptrtoint i8* %202 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = call i32 @strbuf_setlen(%struct.strbuf* %201, i32 %209)
  store i32 1, i32* %8, align 4
  br label %211

211:                                              ; preds = %200, %123, %119, %63, %38, %31
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i32 @gather_stats(i8*, i64, %struct.text_stat*) #1

declare dso_local i64 @convert_is_binary(%struct.text_stat*) #1

declare dso_local i64 @has_crlf_in_index(%struct.index_state*, i8*) #1

declare dso_local i32 @memcpy(%struct.text_stat*, %struct.text_stat*, i32) #1

declare dso_local i64 @will_convert_lf_to_crlf(%struct.text_stat*, i32) #1

declare dso_local i32 @check_global_conv_flags_eol(i8*, i32, %struct.text_stat*, %struct.text_stat*, i32) #1

declare dso_local i64 @strbuf_avail(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
