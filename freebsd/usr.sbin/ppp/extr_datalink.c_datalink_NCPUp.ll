; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_NCPUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_NCPUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_17__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 (i32, i32*)* }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@OPEN_PASSIVE = common dso_local global i32 0, align 4
@PHASE_NETWORK = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Already in NETWORK phase\0A\00", align 1
@DATALINK_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datalink_NCPUp(%struct.datalink* %0) #0 {
  %2 = alloca %struct.datalink*, align 8
  %3 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %2, align 8
  %4 = load %struct.datalink*, %struct.datalink** %2, align 8
  %5 = getelementptr inbounds %struct.datalink, %struct.datalink* %4, i32 0, i32 0
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = call i32 @ccp_SetOpenMode(%struct.TYPE_15__* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.datalink*, %struct.datalink** %2, align 8
  %11 = getelementptr inbounds %struct.datalink, %struct.datalink* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %1
  %19 = load %struct.datalink*, %struct.datalink** %2, align 8
  %20 = getelementptr inbounds %struct.datalink, %struct.datalink* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %18
  %28 = load %struct.datalink*, %struct.datalink** %2, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.datalink*, %struct.datalink** %2, align 8
  %34 = call i32 @mp_Up(%struct.TYPE_23__* %32, %struct.datalink* %33)
  switch i32 %34, label %65 [
    i32 129, label %35
    i32 128, label %36
    i32 131, label %49
    i32 130, label %62
  ]

35:                                               ; preds = %27
  br label %176

36:                                               ; preds = %27
  %37 = load %struct.datalink*, %struct.datalink** %2, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 2
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = load %struct.datalink*, %struct.datalink** %2, align 8
  %41 = getelementptr inbounds %struct.datalink, %struct.datalink* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @auth_Select(%struct.TYPE_16__* %39, i32 %43)
  %45 = load %struct.datalink*, %struct.datalink** %2, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = call i32 @bundle_CalculateBandwidth(%struct.TYPE_16__* %47)
  br label %49

49:                                               ; preds = %27, %36
  %50 = load i32, i32* @OPEN_PASSIVE, align 4
  %51 = load %struct.datalink*, %struct.datalink** %2, align 8
  %52 = getelementptr inbounds %struct.datalink, %struct.datalink* %51, i32 0, i32 0
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 8
  %58 = load %struct.datalink*, %struct.datalink** %2, align 8
  %59 = getelementptr inbounds %struct.datalink, %struct.datalink* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = call i32 @bundle_CalculateBandwidth(%struct.TYPE_16__* %60)
  br label %65

62:                                               ; preds = %27
  %63 = load %struct.datalink*, %struct.datalink** %2, align 8
  %64 = call i32 @datalink_AuthNotOk(%struct.datalink* %63)
  br label %176

65:                                               ; preds = %27, %49
  br label %132

66:                                               ; preds = %18, %1
  %67 = load %struct.datalink*, %struct.datalink** %2, align 8
  %68 = getelementptr inbounds %struct.datalink, %struct.datalink* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = call i64 @bundle_Phase(%struct.TYPE_16__* %69)
  %71 = load i64, i64* @PHASE_NETWORK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %66
  %74 = load i32, i32* @LogPHASE, align 4
  %75 = load %struct.datalink*, %struct.datalink** %2, align 8
  %76 = getelementptr inbounds %struct.datalink, %struct.datalink* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @log_Printf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.datalink*, %struct.datalink** %2, align 8
  %80 = load i32, i32* @DATALINK_OPEN, align 4
  %81 = call i32 @datalink_NewState(%struct.datalink* %79, i32 %80)
  %82 = load %struct.datalink*, %struct.datalink** %2, align 8
  %83 = getelementptr inbounds %struct.datalink, %struct.datalink* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = call i32 @bundle_CalculateBandwidth(%struct.TYPE_16__* %84)
  %86 = load %struct.datalink*, %struct.datalink** %2, align 8
  %87 = getelementptr inbounds %struct.datalink, %struct.datalink* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32 (i32, i32*)*, i32 (i32, i32*)** %89, align 8
  %91 = load %struct.datalink*, %struct.datalink** %2, align 8
  %92 = getelementptr inbounds %struct.datalink, %struct.datalink* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.datalink*, %struct.datalink** %2, align 8
  %97 = getelementptr inbounds %struct.datalink, %struct.datalink* %96, i32 0, i32 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = call i32 %90(i32 %95, i32* %101)
  br label %176

103:                                              ; preds = %66
  %104 = load %struct.datalink*, %struct.datalink** %2, align 8
  %105 = getelementptr inbounds %struct.datalink, %struct.datalink* %104, i32 0, i32 2
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load %struct.datalink*, %struct.datalink** %2, align 8
  %111 = getelementptr inbounds %struct.datalink, %struct.datalink* %110, i32 0, i32 3
  %112 = bitcast %struct.TYPE_17__* %109 to i8*
  %113 = bitcast %struct.TYPE_17__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 8 %113, i64 4, i1 false)
  %114 = load %struct.datalink*, %struct.datalink** %2, align 8
  %115 = getelementptr inbounds %struct.datalink, %struct.datalink* %114, i32 0, i32 2
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.datalink*, %struct.datalink** %2, align 8
  %119 = getelementptr inbounds %struct.datalink, %struct.datalink* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = call i32 @ncp_SetLink(%struct.TYPE_21__* %117, %struct.TYPE_22__* %121)
  %123 = load %struct.datalink*, %struct.datalink** %2, align 8
  %124 = getelementptr inbounds %struct.datalink, %struct.datalink* %123, i32 0, i32 2
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load %struct.datalink*, %struct.datalink** %2, align 8
  %127 = getelementptr inbounds %struct.datalink, %struct.datalink* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @auth_Select(%struct.TYPE_16__* %125, i32 %129)
  br label %131

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %131, %65
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load %struct.datalink*, %struct.datalink** %2, align 8
  %137 = getelementptr inbounds %struct.datalink, %struct.datalink* %136, i32 0, i32 0
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = call i32 @fsm_Up(%struct.TYPE_24__* %141)
  %143 = load %struct.datalink*, %struct.datalink** %2, align 8
  %144 = getelementptr inbounds %struct.datalink, %struct.datalink* %143, i32 0, i32 0
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = call i32 @fsm_Open(%struct.TYPE_24__* %148)
  br label %150

150:                                              ; preds = %135, %132
  %151 = load %struct.datalink*, %struct.datalink** %2, align 8
  %152 = load i32, i32* @DATALINK_OPEN, align 4
  %153 = call i32 @datalink_NewState(%struct.datalink* %151, i32 %152)
  %154 = load %struct.datalink*, %struct.datalink** %2, align 8
  %155 = getelementptr inbounds %struct.datalink, %struct.datalink* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i64, i64* @PHASE_NETWORK, align 8
  %158 = call i32 @bundle_NewPhase(%struct.TYPE_16__* %156, i64 %157)
  %159 = load %struct.datalink*, %struct.datalink** %2, align 8
  %160 = getelementptr inbounds %struct.datalink, %struct.datalink* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32 (i32, i32*)*, i32 (i32, i32*)** %162, align 8
  %164 = load %struct.datalink*, %struct.datalink** %2, align 8
  %165 = getelementptr inbounds %struct.datalink, %struct.datalink* %164, i32 0, i32 1
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.datalink*, %struct.datalink** %2, align 8
  %170 = getelementptr inbounds %struct.datalink, %struct.datalink* %169, i32 0, i32 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = call i32 %163(i32 %168, i32* %174)
  br label %176

176:                                              ; preds = %150, %73, %62, %35
  ret void
}

declare dso_local i32 @ccp_SetOpenMode(%struct.TYPE_15__*) #1

declare dso_local i32 @mp_Up(%struct.TYPE_23__*, %struct.datalink*) #1

declare dso_local i32 @auth_Select(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bundle_CalculateBandwidth(%struct.TYPE_16__*) #1

declare dso_local i32 @datalink_AuthNotOk(%struct.datalink*) #1

declare dso_local i64 @bundle_Phase(%struct.TYPE_16__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ncp_SetLink(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @fsm_Up(%struct.TYPE_24__*) #1

declare dso_local i32 @fsm_Open(%struct.TYPE_24__*) #1

declare dso_local i32 @bundle_NewPhase(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
