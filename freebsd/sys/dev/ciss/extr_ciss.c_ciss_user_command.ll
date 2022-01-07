; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.ciss_error_info, %struct.ciss_error_info }
%struct.ciss_error_info = type { i32 }
%struct.ciss_request = type { i32*, i32, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cissREQ\00", align 1
@hz = common dso_local global i32 0, align 4
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"copyin: bad data buffer %p/%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"request failed - %d\00", align 1
@CISS_HDR_HOST_TAG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"copyout: bad data buffer %p/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.TYPE_5__*)* @ciss_user_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_user_command(%struct.ciss_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  %6 = alloca %struct.ciss_command*, align 8
  %7 = alloca %struct.ciss_error_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %5, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %12 = call i64 @ciss_get_request(%struct.ciss_softc* %11, %struct.ciss_request** %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %16 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %16, i32 0, i32 0
  %18 = load i32, i32* @PPAUSE, align 4
  %19 = load i32, i32* @hz, align 4
  %20 = call i32 @msleep(%struct.ciss_softc* %15, i32* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %23 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %22, i32 0, i32 2
  %24 = load %struct.ciss_command*, %struct.ciss_command** %23, align 8
  store %struct.ciss_command* %24, %struct.ciss_command** %6, align 8
  %25 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %32 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %21
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = call i32* @malloc(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %45 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = icmp eq i32* %43, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %8, align 4
  br label %140

49:                                               ; preds = %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %54 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @copyin(i32 %52, i32* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @debug(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  br label %140

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %21
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %74 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @bcopy(%struct.ciss_error_info* %72, i32* %75, i32 4)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %80 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %79, i32 0, i32 2
  %81 = call i32 @bcopy(%struct.ciss_error_info* %78, i32* %80, i32 4)
  %82 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %82, i32 0, i32 0
  %84 = call i32 @mtx_lock(i32* %83)
  %85 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %86 = call i32 @ciss_synch_request(%struct.ciss_request* %85, i32 60000)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, i32, ...) @debug(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %144

91:                                               ; preds = %70
  %92 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %93 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = bitcast i32* %95 to %struct.ciss_error_info*
  store %struct.ciss_error_info* %96, %struct.ciss_error_info** %7, align 8
  %97 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %98 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct.ciss_error_info*, %struct.ciss_error_info** %7, align 8
  %106 = call i32 @bzero(%struct.ciss_error_info* %105, i32 4)
  br label %107

107:                                              ; preds = %104, %91
  %108 = load %struct.ciss_error_info*, %struct.ciss_error_info** %7, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = call i32 @bcopy(%struct.ciss_error_info* %108, i32* %110, i32 4)
  %112 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %112, i32 0, i32 0
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %107
  %120 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %121 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @copyout(i32* %122, i32 %125, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, i32, ...) @debug(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %137)
  br label %140

139:                                              ; preds = %119, %107
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %131, %61, %47
  %141 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %141, i32 0, i32 0
  %143 = call i32 @mtx_lock(i32* %142)
  br label %144

144:                                              ; preds = %140, %88
  %145 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %146 = icmp ne %struct.ciss_request* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %149 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %154 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %157 = call i32 @free(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %147, %144
  %159 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %160 = icmp ne %struct.ciss_request* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %163 = call i32 @ciss_release_request(%struct.ciss_request* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32 @msleep(%struct.ciss_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @bcopy(%struct.ciss_error_info*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @bzero(%struct.ciss_error_info*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
