; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_get_bmic_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_get_bmic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_request = type { i64, %struct.ciss_command*, i32, i8* }
%struct.ciss_command = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.ciss_bmic_cdb = type { i32, i32, i32 }

@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISS_REQ_DATAIN = common dso_local global i32 0, align 4
@CISS_HDR_ADDRESS_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_COMMAND = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_WRITE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_READ = common dso_local global i32 0, align 4
@CISS_ARRAY_CONTROLLER_WRITE = common dso_local global i32 0, align 4
@CISS_ARRAY_CONTROLLER_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ciss_request**, i32, i8**, i64)* @ciss_get_bmic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_get_bmic_request(%struct.ciss_softc* %0, %struct.ciss_request** %1, i32 %2, i8** %3, i64 %4) #0 {
  %6 = alloca %struct.ciss_softc*, align 8
  %7 = alloca %struct.ciss_request**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ciss_request*, align 8
  %12 = alloca %struct.ciss_command*, align 8
  %13 = alloca %struct.ciss_bmic_cdb*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %6, align 8
  store %struct.ciss_request** %1, %struct.ciss_request*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = call i32 @debug_called(i32 2)
  store %struct.ciss_request* null, %struct.ciss_request** %11, align 8
  store i8* null, i8** %14, align 8
  %18 = load %struct.ciss_softc*, %struct.ciss_softc** %6, align 8
  %19 = call i32 @ciss_get_request(%struct.ciss_softc* %18, %struct.ciss_request** %11)
  store i32 %19, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %131

22:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %23 = load i64, i64* %10, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @malloc(i64 %33, i32 %34, i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %15, align 4
  br label %131

42:                                               ; preds = %32
  br label %46

43:                                               ; preds = %28
  %44 = load i8**, i8*** %9, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  store i32 1, i32* %16, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46, %25, %22
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %50 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %53 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @CISS_REQ_DATAIN, align 4
  %58 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %59 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %62 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %61, i32 0, i32 1
  %63 = load %struct.ciss_command*, %struct.ciss_command** %62, align 8
  store %struct.ciss_command* %63, %struct.ciss_command** %12, align 8
  %64 = load i32, i32* @CISS_HDR_ADDRESS_MODE_PERIPHERAL, align 4
  %65 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %66 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %71 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %76 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %81 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 12, i32* %82, align 8
  %83 = load i32, i32* @CISS_CDB_TYPE_COMMAND, align 4
  %84 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %85 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %88 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %89 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %60
  %94 = load i32, i32* @CISS_CDB_DIRECTION_WRITE, align 4
  br label %97

95:                                               ; preds = %60
  %96 = load i32, i32* @CISS_CDB_DIRECTION_READ, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %100 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %103 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.ciss_command*, %struct.ciss_command** %12, align 8
  %106 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = bitcast i32* %109 to %struct.ciss_bmic_cdb*
  store %struct.ciss_bmic_cdb* %110, %struct.ciss_bmic_cdb** %13, align 8
  %111 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %13, align 8
  %112 = call i32 @bzero(%struct.ciss_bmic_cdb* %111, i32 12)
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load i32, i32* @CISS_ARRAY_CONTROLLER_WRITE, align 4
  br label %119

117:                                              ; preds = %97
  %118 = load i32, i32* @CISS_ARRAY_CONTROLLER_READ, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %13, align 8
  %122 = getelementptr inbounds %struct.ciss_bmic_cdb, %struct.ciss_bmic_cdb* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %13, align 8
  %125 = getelementptr inbounds %struct.ciss_bmic_cdb, %struct.ciss_bmic_cdb* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i64, i64* %10, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @htons(i32 %127)
  %129 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %13, align 8
  %130 = getelementptr inbounds %struct.ciss_bmic_cdb, %struct.ciss_bmic_cdb* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %119, %40, %21
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %136 = icmp ne %struct.ciss_request* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %139 = call i32 @ciss_release_request(%struct.ciss_request* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %157

141:                                              ; preds = %131
  %142 = load %struct.ciss_request*, %struct.ciss_request** %11, align 8
  %143 = load %struct.ciss_request**, %struct.ciss_request*** %7, align 8
  store %struct.ciss_request* %142, %struct.ciss_request** %143, align 8
  %144 = load i8**, i8*** %9, align 8
  %145 = icmp ne i8** %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i8**, i8*** %9, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i8*, i8** %14, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i8*, i8** %14, align 8
  %155 = load i8**, i8*** %9, align 8
  store i8* %154, i8** %155, align 8
  br label %156

156:                                              ; preds = %153, %150, %146, %141
  br label %157

157:                                              ; preds = %156, %140
  %158 = load i32, i32* %15, align 4
  ret i32 %158
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @bzero(%struct.ciss_bmic_cdb*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
