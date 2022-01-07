; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_voistatdata_tostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_voistatdata_tostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voistatdata = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sbuf = type { i32 }
%struct.TYPE_14__ = type { i32 }

@VSD_NUM_DTYPES = common dso_local global i32 0, align 4
@SB_STRFMT_NUM_FMTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"prev=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\22prev\22:\00", align 1
@voistate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@hist = common dso_local global i32 0, align 4
@tdgst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_voistatdata_tostr(%struct.voistatdata* %0, i32 %1, i32 %2, i64 %3, i32 %4, %struct.sbuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.voistatdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.voistatdata* %0, %struct.voistatdata** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sbuf* %5, %struct.sbuf** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %26 = icmp eq %struct.voistatdata* %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %7
  %28 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %29 = icmp eq %struct.sbuf* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @VSD_NUM_DTYPES, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @VSD_NUM_DTYPES, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @SB_STRFMT_NUM_FMTS, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30, %27, %7
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %8, align 4
  br label %207

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  switch i32 %45, label %203 [
    i32 128, label %46
    i32 140, label %67
    i32 137, label %74
    i32 139, label %81
    i32 136, label %88
    i32 138, label %95
    i32 135, label %102
    i32 134, label %109
    i32 132, label %127
    i32 133, label %145
    i32 131, label %163
    i32 146, label %181
    i32 144, label %181
    i32 142, label %181
    i32 145, label %181
    i32 143, label %181
    i32 141, label %181
    i32 130, label %192
    i32 129, label %192
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %13, align 4
  switch i32 %47, label %50 [
    i32 148, label %48
    i32 147, label %49
  ]

48:                                               ; preds = %46
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %51

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %46, %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %51

51:                                               ; preds = %50, %48
  %52 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @sbuf_cat(%struct.sbuf* %52, i8* %53)
  %55 = load i32, i32* @voistate, align 4
  %56 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %57 = call %struct.TYPE_14__* @CONSTVSD(i32 %55, %struct.voistatdata* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to %struct.voistatdata*
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @stats_voistatdata_tostr(%struct.voistatdata* %59, i32 %60, i32 %61, i64 %62, i32 %63, %struct.sbuf* %64, i32 %65)
  br label %204

67:                                               ; preds = %44
  %68 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %69 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %70 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sbuf_printf(%struct.sbuf* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %204

74:                                               ; preds = %44
  %75 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %76 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %77 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sbuf_printf(%struct.sbuf* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %204

81:                                               ; preds = %44
  %82 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %83 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %84 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sbuf_printf(%struct.sbuf* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %204

88:                                               ; preds = %44
  %89 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %90 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %91 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %204

95:                                               ; preds = %44
  %96 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %97 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %98 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sbuf_printf(%struct.sbuf* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %204

102:                                              ; preds = %44
  %103 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %104 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %105 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sbuf_printf(%struct.sbuf* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  br label %204

109:                                              ; preds = %44
  %110 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %111 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @Q_MAXSTRLEN(i32 %113, i32 10)
  %115 = zext i32 %114 to i64
  %116 = call i8* @llvm.stacksave()
  store i8* %116, i8** %17, align 8
  %117 = alloca i8, i64 %115, align 16
  store i64 %115, i64* %18, align 8
  %118 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %119 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = trunc i64 %115 to i32
  %123 = call i32 @Q_TOSTR(i32 %121, i32 -1, i32 10, i8* %117, i32 %122)
  %124 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %125 = call i32 @sbuf_cat(%struct.sbuf* %124, i8* %117)
  %126 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %126)
  br label %204

127:                                              ; preds = %44
  %128 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %129 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @Q_MAXSTRLEN(i32 %131, i32 10)
  %133 = zext i32 %132 to i64
  %134 = call i8* @llvm.stacksave()
  store i8* %134, i8** %19, align 8
  %135 = alloca i8, i64 %133, align 16
  store i64 %133, i64* %20, align 8
  %136 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %137 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = trunc i64 %133 to i32
  %141 = call i32 @Q_TOSTR(i32 %139, i32 -1, i32 10, i8* %135, i32 %140)
  %142 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %143 = call i32 @sbuf_cat(%struct.sbuf* %142, i8* %135)
  %144 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %144)
  br label %204

145:                                              ; preds = %44
  %146 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %147 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @Q_MAXSTRLEN(i32 %149, i32 10)
  %151 = zext i32 %150 to i64
  %152 = call i8* @llvm.stacksave()
  store i8* %152, i8** %21, align 8
  %153 = alloca i8, i64 %151, align 16
  store i64 %151, i64* %22, align 8
  %154 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %155 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = trunc i64 %151 to i32
  %159 = call i32 @Q_TOSTR(i32 %157, i32 -1, i32 10, i8* %153, i32 %158)
  %160 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %161 = call i32 @sbuf_cat(%struct.sbuf* %160, i8* %153)
  %162 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %204

163:                                              ; preds = %44
  %164 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %165 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @Q_MAXSTRLEN(i32 %167, i32 10)
  %169 = zext i32 %168 to i64
  %170 = call i8* @llvm.stacksave()
  store i8* %170, i8** %23, align 8
  %171 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %24, align 8
  %172 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %173 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = trunc i64 %169 to i32
  %177 = call i32 @Q_TOSTR(i32 %175, i32 -1, i32 10, i8* %171, i32 %176)
  %178 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %179 = call i32 @sbuf_cat(%struct.sbuf* %178, i8* %171)
  %180 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %204

181:                                              ; preds = %44, %44, %44, %44, %44, %44
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @hist, align 4
  %184 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %185 = call %struct.TYPE_14__* @CONSTVSD(i32 %183, %struct.voistatdata* %184)
  %186 = load i32, i32* %11, align 4
  %187 = load i64, i64* %12, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @stats_voistatdata_hist_tostr(i32 %182, %struct.TYPE_14__* %185, i32 %186, i64 %187, i32 %188, %struct.sbuf* %189, i32 %190)
  br label %204

192:                                              ; preds = %44, %44
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @tdgst, align 4
  %195 = load %struct.voistatdata*, %struct.voistatdata** %9, align 8
  %196 = call %struct.TYPE_14__* @CONSTVSD(i32 %194, %struct.voistatdata* %195)
  %197 = load i32, i32* %11, align 4
  %198 = load i64, i64* %12, align 8
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @stats_voistatdata_tdgst_tostr(i32 %193, %struct.TYPE_14__* %196, i32 %197, i64 %198, i32 %199, %struct.sbuf* %200, i32 %201)
  br label %204

203:                                              ; preds = %44
  br label %204

204:                                              ; preds = %203, %192, %181, %163, %145, %127, %109, %102, %95, %88, %81, %74, %67, %51
  %205 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %206 = call i32 @sbuf_error(%struct.sbuf* %205)
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %42
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local %struct.TYPE_14__* @CONSTVSD(i32, %struct.voistatdata*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @Q_MAXSTRLEN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_TOSTR(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @stats_voistatdata_hist_tostr(i32, %struct.TYPE_14__*, i32, i64, i32, %struct.sbuf*, i32) #1

declare dso_local i32 @stats_voistatdata_tdgst_tostr(i32, %struct.TYPE_14__*, i32, i64, i32, %struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_error(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
