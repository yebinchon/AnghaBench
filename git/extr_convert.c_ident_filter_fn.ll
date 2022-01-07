; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_ident_filter_fn.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_ident_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.ident_filter = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ident_filter_fn.head = internal constant [4 x i8] c"$Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_filter*, i8*, i64*, i8*, i64*)* @ident_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_filter_fn(%struct.stream_filter* %0, i8* %1, i64* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_filter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ident_filter*, align 8
  %13 = alloca i32, align 4
  store %struct.stream_filter* %0, %struct.stream_filter** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.stream_filter*, %struct.stream_filter** %7, align 8
  %15 = bitcast %struct.stream_filter* %14 to %struct.ident_filter*
  store %struct.ident_filter* %15, %struct.ident_filter** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %5
  %19 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %20 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %22 [
    i32 128, label %29
    i32 129, label %29
  ]

22:                                               ; preds = %18
  %23 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %24 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %23, i32 0, i32 1
  %25 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %26 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strbuf_add(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ident_filter_fn.head, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %18, %18, %22
  %30 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = call i32 @ident_drain(%struct.ident_filter* %30, i8** %10, i64* %31)
  br label %33

33:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %186

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %178, %177, %151, %122, %103, %82, %59, %34
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %41 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 129
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ true, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %185

46:                                               ; preds = %44
  %47 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %48 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = call i32 @ident_drain(%struct.ident_filter* %52, i8** %10, i64* %53)
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %185

59:                                               ; preds = %51
  br label %35

60:                                               ; preds = %46
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %69 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %106

72:                                               ; preds = %60
  %73 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %74 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %73, i32 0, i32 1
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @strbuf_addch(%struct.TYPE_5__* %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 10
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 36
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %35

83:                                               ; preds = %79, %72
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %84, 36
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %88 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @is_foreign_ident(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %86
  %94 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %95 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %94, i32 0, i32 1
  %96 = call i32 @strbuf_setlen(%struct.TYPE_5__* %95, i32 3)
  %97 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %98 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %97, i32 0, i32 1
  %99 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %100 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strbuf_addstr(%struct.TYPE_5__* %98, i32 %101)
  br label %103

103:                                              ; preds = %93, %86, %83
  %104 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %105 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %104, i32 0, i32 0
  store i32 129, i32* %105, align 4
  br label %35

106:                                              ; preds = %60
  %107 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %108 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %110, 4
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %114 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* @ident_filter_fn.head, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %124 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %35

127:                                              ; preds = %112, %106
  %128 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %129 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %134 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %133, i32 0, i32 1
  %135 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %136 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @strbuf_add(%struct.TYPE_5__* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ident_filter_fn.head, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %127
  %140 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %141 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %143, 3
  br i1 %144, label %145, label %178

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 58
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 36
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %153 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %152, i32 0, i32 1
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @strbuf_addch(%struct.TYPE_5__* %153, i32 %154)
  %156 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %157 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %35

158:                                              ; preds = %148, %145
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, 58
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %163 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %162, i32 0, i32 1
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @strbuf_addch(%struct.TYPE_5__* %163, i32 %164)
  %166 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %167 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %166, i32 0, i32 0
  store i32 128, i32* %167, align 4
  br label %177

168:                                              ; preds = %158
  %169 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %170 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %169, i32 0, i32 1
  %171 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %172 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strbuf_addstr(%struct.TYPE_5__* %170, i32 %173)
  %175 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %176 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %175, i32 0, i32 0
  store i32 129, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %161
  br label %35

178:                                              ; preds = %139
  %179 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %180 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %179, i32 0, i32 1
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @strbuf_addch(%struct.TYPE_5__* %180, i32 %181)
  %183 = load %struct.ident_filter*, %struct.ident_filter** %12, align 8
  %184 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %183, i32 0, i32 0
  store i32 129, i32* %184, align 4
  br label %35

185:                                              ; preds = %58, %44
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %185, %33
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @strbuf_add(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ident_drain(%struct.ident_filter*, i8**, i64*) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @is_foreign_ident(i32) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
