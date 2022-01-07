; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons.c_dcons_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons.c_dcons_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_buf = type { i64, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dcons_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32* }

@DCONS_VERSION = common dso_local global i32 0, align 4
@DCONS_HEADER_SIZE = common dso_local global i32 0, align 4
@DCONS_NPORT = common dso_local global i32 0, align 4
@DCONS_GEN_SHIFT = common dso_local global i32 0, align 4
@DCONS_POS_MASK = common dso_local global i32 0, align 4
@STATE0 = common dso_local global i32 0, align 4
@DCONS_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcons_load_buffer(%struct.dcons_buf* %0, i32 %1, %struct.dcons_softc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcons_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcons_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dcons_softc*, align 8
  store %struct.dcons_buf* %0, %struct.dcons_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dcons_softc* %2, %struct.dcons_softc** %7, align 8
  %11 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %12 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @DCONS_VERSION, align 4
  %15 = call i64 @htonl(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %178

18:                                               ; preds = %3
  %19 = load i32, i32* @DCONS_HEADER_SIZE, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %165, %18
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DCONS_NPORT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %168

24:                                               ; preds = %20
  %25 = load %struct.dcons_softc*, %struct.dcons_softc** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %25, i64 %27
  store %struct.dcons_softc* %28, %struct.dcons_softc** %10, align 8
  %29 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %30 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohl(i32 %35)
  %37 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %38 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %41 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %49 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %52 = bitcast %struct.dcons_buf* %51 to i8*
  %53 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %54 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %52, i64 %61
  %63 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %64 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %67 = bitcast %struct.dcons_buf* %66 to i8*
  %68 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %69 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %67, i64 %76
  %78 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %79 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %82 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = load i32, i32* @DCONS_GEN_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %92 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %95 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ntohl(i32 %100)
  %102 = load i32, i32* @DCONS_GEN_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %105 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %108 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ntohl(i32 %113)
  %115 = load i32, i32* @DCONS_POS_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %118 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %121 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ntohl(i32 %126)
  %128 = load i32, i32* @DCONS_POS_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %131 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 4
  %133 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %134 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %140 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store i32* %138, i32** %141, align 8
  %142 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %143 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %149 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  store i32* %147, i32** %150, align 8
  %151 = load i32, i32* @STATE0, align 4
  %152 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %153 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %155 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %159 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %157, %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %24
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %20

168:                                              ; preds = %20
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 -1, i32* %4, align 4
  br label %178

173:                                              ; preds = %168
  %174 = load i32, i32* @DCONS_MAGIC, align 4
  %175 = call i32 @ntohl(i32 %174)
  %176 = load %struct.dcons_buf*, %struct.dcons_buf** %5, align 8
  %177 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %173, %172, %17
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
