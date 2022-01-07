; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64, i32, i32* }
%struct.TYPE_14__ = type { i64 }

@inline_size = common dso_local global i32 0, align 4
@REL_VECTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\09int i;\0A\00", align 1
@REL_ALIAS = common dso_local global i64 0, align 8
@PUT = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\09\09return (TRUE);\0A\09}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @emit_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_struct(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load i32, i32* @inline_size, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %3, align 8
  br label %17

17:                                               ; preds = %24, %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = call i32 @print_stat(i32 1, %struct.TYPE_15__* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %3, align 8
  br label %17

28:                                               ; preds = %17
  br label %187

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %3, align 8
  br label %35

35:                                               ; preds = %56, %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REL_VECTOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strcmp(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @fout, align 4
  %54 = call i32 @f_print(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %60

55:                                               ; preds = %45, %38
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %3, align 8
  br label %35

60:                                               ; preds = %52, %35
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %3, align 8
  br label %66

66:                                               ; preds = %120, %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %124

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %113

75:                                               ; preds = %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_14__* @find_type(i32 %79)
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %7, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %75
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REL_ALIAS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @REL_VECTOR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %89, %82
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REL_ALIAS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %96
  store i32 1, i32* %8, align 4
  br label %124

112:                                              ; preds = %103
  br label %119

113:                                              ; preds = %89, %75, %69
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @inline_size, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %8, align 4
  br label %124

118:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %112
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %3, align 8
  br label %66

124:                                              ; preds = %117, %111, %66
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @inline_size, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 1, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %3, align 8
  br label %138

138:                                              ; preds = %145, %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = call i32 @print_stat(i32 1, %struct.TYPE_15__* %143)
  br label %145

145:                                              ; preds = %141
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %3, align 8
  br label %138

149:                                              ; preds = %138
  br label %187

150:                                              ; preds = %129
  %151 = load i32, i32* @PUT, align 4
  store i32 %151, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %165, %150
  %153 = load i32, i32* %4, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @inline_struct(%struct.TYPE_12__* %156, i32 %157)
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @PUT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @GET, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %162, %155
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %152

168:                                              ; preds = %152
  %169 = load i32, i32* @fout, align 4
  %170 = call i32 @f_print(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %3, align 8
  br label %176

176:                                              ; preds = %183, %168
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = icmp ne %struct.TYPE_13__* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = call i32 @print_stat(i32 1, %struct.TYPE_15__* %181)
  br label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %3, align 8
  br label %176

187:                                              ; preds = %28, %149, %176
  ret void
}

declare dso_local i32 @print_stat(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @f_print(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @find_type(i32) #1

declare dso_local i32 @inline_struct(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
