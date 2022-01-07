; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Up.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i8*, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.lcp }
%struct.lcp = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@CBCP_NONUM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CBCP_SERVERNUM = common dso_local global i8* null, align 8
@CBCP_CLIENTNUM = common dso_local global i8* null, align 8
@CBCP_STOPPED = common dso_local global i32 0, align 4
@DEF_FSMTRIES = common dso_local global i32 0, align 4
@CBCP_LISTNUM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbcp_Up(%struct.cbcp* %0) #0 {
  %2 = alloca %struct.cbcp*, align 8
  %3 = alloca %struct.lcp*, align 8
  store %struct.cbcp* %0, %struct.cbcp** %2, align 8
  %4 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %5 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %4, i32 0, i32 1
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store %struct.lcp* %8, %struct.lcp** %3, align 8
  %9 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %10 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %19 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %22 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %1
  %33 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %34 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %42 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @auth_SetPhoneList(i8* %40, i8* %44, i32 8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %32, %1
  %48 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %49 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %53 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strncpy(i8* %51, i32 %60, i32 7)
  %62 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %63 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 7
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %47, %32
  %68 = load %struct.lcp*, %struct.lcp** %3, align 8
  %69 = getelementptr inbounds %struct.lcp, %struct.lcp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %120

73:                                               ; preds = %67
  %74 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %75 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i8*, i8** @CBCP_NONUM, align 8
  %83 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %84 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  br label %108

86:                                               ; preds = %73
  %87 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %88 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %86
  %94 = load i8*, i8** @CBCP_SERVERNUM, align 8
  %95 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %96 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  store i8* %94, i8** %97, align 8
  %98 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %99 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8 0, i8* %101, align 1
  br label %107

102:                                              ; preds = %86
  %103 = load i8*, i8** @CBCP_CLIENTNUM, align 8
  %104 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %105 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %93
  br label %108

108:                                              ; preds = %107, %81
  %109 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %110 = load i32, i32* @CBCP_STOPPED, align 4
  %111 = call i32 @cbcp_NewPhase(%struct.cbcp* %109, i32 %110)
  %112 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %113 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %114 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DEF_FSMTRIES, align 4
  %118 = mul nsw i32 %116, %117
  %119 = call i32 @cbcp_StartTimer(%struct.cbcp* %112, i32 %118)
  br label %175

120:                                              ; preds = %67
  %121 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %122 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load i8*, i8** @CBCP_NONUM, align 8
  %130 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %131 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  store i8* %129, i8** %132, align 8
  br label %168

133:                                              ; preds = %120
  %134 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %135 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %133
  %141 = load i8*, i8** @CBCP_CLIENTNUM, align 8
  %142 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %143 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  store i8* %141, i8** %144, align 8
  %145 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %146 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  store i8 0, i8* %148, align 1
  br label %167

149:                                              ; preds = %133
  %150 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %151 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strchr(i8* %153, i8 signext 44)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i8*, i8** @CBCP_LISTNUM, align 8
  %158 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %159 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  store i8* %157, i8** %160, align 8
  br label %166

161:                                              ; preds = %149
  %162 = load i8*, i8** @CBCP_SERVERNUM, align 8
  %163 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %164 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i8* %162, i8** %165, align 8
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %140
  br label %168

168:                                              ; preds = %167, %128
  %169 = load i32, i32* @DEF_FSMTRIES, align 4
  %170 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %171 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %174 = call i32 @cbcp_SendReq(%struct.cbcp* %173)
  br label %175

175:                                              ; preds = %168, %108
  ret void
}

declare dso_local i32 @auth_SetPhoneList(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cbcp_NewPhase(%struct.cbcp*, i32) #1

declare dso_local i32 @cbcp_StartTimer(%struct.cbcp*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @cbcp_SendReq(%struct.cbcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
