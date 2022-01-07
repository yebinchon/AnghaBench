; ModuleID = '/home/carl/AnghaBench/git/extr_bulk-checkin.c_stream_to_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_bulk-checkin.c_stream_to_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*, i8*, i64)* }
%struct.bulk_checkin_state = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i8*, i32, i8*, i64 }

@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@pack_compression_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read from '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to read %d bytes from '%s'\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_8__* null, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@pack_size_limit_cfg = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpected deflate failure: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bulk_checkin_state*, i32*, i64*, i32, i64, i32, i8*, i32)* @stream_to_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_to_pack(%struct.bulk_checkin_state* %0, i32* %1, i64* %2, i32 %3, i64 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bulk_checkin_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca [16384 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca [16384 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.bulk_checkin_state* %0, %struct.bulk_checkin_state** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 129, i32* %21, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %32 = load i32, i32* @pack_compression_level, align 4
  %33 = call i32 @git_deflate_init(%struct.TYPE_7__* %18, i32 %32)
  %34 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %35 = load i32, i32* %15, align 4
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @encode_in_pack_object_header(i8* %34, i32 16384, i32 %35, i64 %36)
  store i32 %37, i32* %20, align 4
  %38 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %39 = load i32, i32* %20, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %20, align 4
  %44 = zext i32 %43 to i64
  %45 = sub i64 16384, %44
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %188, %184, %8
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %189

51:                                               ; preds = %48
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %124, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = icmp ult i64 %59, 16384
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %14, align 8
  br label %64

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i64 [ %62, %61 ], [ 16384, %63 ]
  store i64 %65, i64* %25, align 8
  %66 = load i32, i32* %13, align 4
  %67 = getelementptr inbounds [16384 x i8], [16384 x i8]* %24, i64 0, i64 0
  %68 = load i64, i64* %25, align 8
  %69 = call i64 @read_in_full(i32 %66, i8* %67, i64 %68)
  store i64 %69, i64* %26, align 8
  %70 = load i64, i64* %26, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 @die_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %64
  %76 = load i64, i64* %26, align 8
  %77 = load i64, i64* %25, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* %25, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i64, i64* %25, align 8
  %86 = load i64, i64* %23, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %23, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %23, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %84
  %93 = load i64, i64* %23, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %93, %95
  store i64 %96, i64* %27, align 8
  %97 = load i64, i64* %25, align 8
  %98 = load i64, i64* %27, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i64, i64* %25, align 8
  store i64 %101, i64* %27, align 8
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i64, i64* %27, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %107, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds [16384 x i8], [16384 x i8]* %24, i64 0, i64 0
  %111 = load i64, i64* %27, align 8
  %112 = call i32 %108(i32* %109, i8* %110, i64 %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = load i64, i64* %23, align 8
  %115 = load i64*, i64** %12, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %84
  %117 = getelementptr inbounds [16384 x i8], [16384 x i8]* %24, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i8* %117, i8** %118, align 8
  %119 = load i64, i64* %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store i64 %119, i64* %120, align 8
  %121 = load i64, i64* %25, align 8
  %122 = load i64, i64* %14, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %116, %54, %51
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @Z_FINISH, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = phi i32 [ 0, %127 ], [ %129, %128 ]
  %132 = call i32 @git_deflate(%struct.TYPE_7__* %18, i32 %131)
  store i32 %132, i32* %21, align 4
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %21, align 4
  %138 = icmp eq i32 %137, 128
  br i1 %138, label %139, label %182

139:                                              ; preds = %136, %130
  %140 = load i32, i32* %22, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %178

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  store i64 %148, i64* %28, align 8
  %149 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %10, align 8
  %150 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %142
  %154 = load i64, i64* @pack_size_limit_cfg, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i64, i64* @pack_size_limit_cfg, align 8
  %158 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %10, align 8
  %159 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %28, align 8
  %162 = add i64 %160, %161
  %163 = icmp ult i64 %157, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = call i32 @git_deflate_abort(%struct.TYPE_7__* %18)
  store i32 -1, i32* %9, align 4
  br label %191

166:                                              ; preds = %156, %153, %142
  %167 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %10, align 8
  %168 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %171 = load i64, i64* %28, align 8
  %172 = call i32 @hashwrite(i32 %169, i8* %170, i64 %171)
  %173 = load i64, i64* %28, align 8
  %174 = load %struct.bulk_checkin_state*, %struct.bulk_checkin_state** %10, align 8
  %175 = getelementptr inbounds %struct.bulk_checkin_state, %struct.bulk_checkin_state* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %173
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %166, %139
  %179 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %179, i8** %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 16384, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %136
  %183 = load i32, i32* %21, align 4
  switch i32 %183, label %185 [
    i32 129, label %184
    i32 130, label %184
    i32 128, label %184
  ]

184:                                              ; preds = %182, %182, %182
  br label %48

185:                                              ; preds = %182
  %186 = load i32, i32* %21, align 4
  %187 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %185
  br label %48

189:                                              ; preds = %48
  %190 = call i32 @git_deflate_end(%struct.TYPE_7__* %18)
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %189, %164
  %192 = load i32, i32* %9, align 4
  ret i32 %192
}

declare dso_local i32 @git_deflate_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @encode_in_pack_object_header(i8*, i32, i32, i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @git_deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @git_deflate_abort(%struct.TYPE_7__*) #1

declare dso_local i32 @hashwrite(i32, i8*, i64) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
