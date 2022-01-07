; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_gzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_writer = type { i32, i64, %struct.TYPE_4__*, i64, i64, i32, i32, i32*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@Z_FINISH = common dso_local global i32 0, align 4
@FIFOLOG_PT_SYNC = common dso_local global i64 0, align 8
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@FIFOLOG_PT_FLUSH = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@FIFOLOG_FLG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fifolog_writer*, i32)* @fifolog_write_gzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifolog_write_gzip(%struct.fifolog_writer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fifolog_writer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fifolog_writer* %0, %struct.fifolog_writer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %14 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %20 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %24 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %23, i32 0, i32 11
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  %28 = icmp sge i32 %18, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %17, %2
  %30 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %31 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @Z_FINISH, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %34 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @FIFOLOG_PT_SYNC, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %70

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %43 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %46 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  %50 = icmp sge i32 %41, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load i32, i32* @Z_SYNC_FLUSH, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %54 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @FIFOLOG_PT_FLUSH, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %69

60:                                               ; preds = %40
  %61 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %62 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %181

66:                                               ; preds = %60
  %67 = load i32, i32* @Z_NO_FLUSH, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %29
  %71 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %72 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %75 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 %73, i64* %79, align 8
  %80 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %81 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %84 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i32 %82, i32* %88, align 8
  br label %89

89:                                               ; preds = %70, %123
  %90 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %91 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @deflate(%struct.TYPE_5__* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @Z_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @Z_BUF_ERROR, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @Z_STREAM_END, align 4
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100, %89
  %109 = phi i1 [ true, %100 ], [ true, %89 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @fifolog_write_output(%struct.fifolog_writer* %112, i32 %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %124

119:                                              ; preds = %108
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 -1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %119
  br label %89

124:                                              ; preds = %118
  %125 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %126 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %136 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @Z_FINISH, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %124
  %141 = load i32, i32* @FIFOLOG_FLG_SYNC, align 4
  %142 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %143 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %147 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 9
  %150 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %151 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i64 %149, i64* %155, align 8
  %156 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %157 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %158, 9
  %160 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %161 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i64 %159, i64* %165, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %168 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @Z_OK, align 4
  %170 = load %struct.fifolog_writer*, %struct.fifolog_writer** %4, align 8
  %171 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = call i32 @deflateReset(%struct.TYPE_5__* %174)
  %176 = icmp eq i32 %169, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  br label %179

179:                                              ; preds = %140, %124
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %65
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fifolog_write_output(%struct.fifolog_writer*, i32, i32) #1

declare dso_local i32 @deflateReset(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
