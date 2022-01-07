; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.mbuf = type { i64, i64, i32 }
%struct.mbucket = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.mbuf }
%struct.TYPE_4__ = type { i64, %struct.mbucket* }

@MB_MAX = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad mbuf type %d\0A\00", align 1
@MB_UNKNOWN = common dso_local global i32 0, align 4
@M_MAXLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Request for mbuf size %lu (\22%s\22) denied !\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@BUCKET_CHUNK = common dso_local global i64 0, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate memory (%lu)\0A\00", align 1
@mbuf_Mallocs = common dso_local global i32 0, align 4
@MemMap = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_get(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbucket**, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MB_MAX, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @LogERROR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @MB_UNKNOWN, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @M_MAXLEN, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @LogERROR, align 4
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @mbuftype(i32 %29)
  %31 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %30)
  %32 = load i32, i32* @EX_OSERR, align 4
  %33 = call i32 @AbortProgram(i32 %32)
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i64, i64* %3, align 8
  %36 = call %struct.mbucket** @M_BUCKET(i64 %35)
  store %struct.mbucket** %36, %struct.mbucket*** %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @M_ROUNDUP(i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %40 = load %struct.mbucket*, %struct.mbucket** %39, align 8
  %41 = icmp ne %struct.mbucket* %40, null
  br i1 %41, label %42, label %92

42:                                               ; preds = %34
  %43 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %44 = load %struct.mbucket*, %struct.mbucket** %43, align 8
  %45 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store %struct.mbuf* %46, %struct.mbuf** %6, align 8
  %47 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %48 = load %struct.mbucket*, %struct.mbucket** %47, align 8
  %49 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %57 = load %struct.mbucket*, %struct.mbucket** %56, align 8
  %58 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.mbucket*, %struct.mbucket** %60, align 8
  %62 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  store %struct.mbucket* %61, %struct.mbucket** %62, align 8
  br label %91

63:                                               ; preds = %42
  %64 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %65 = load %struct.mbucket*, %struct.mbucket** %64, align 8
  %66 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %71 = load %struct.mbucket*, %struct.mbucket** %70, align 8
  %72 = bitcast %struct.mbucket* %71 to i8*
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to %struct.mbucket*
  %76 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %69, i64* %78, align 8
  %79 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %80 = load %struct.mbucket*, %struct.mbucket** %79, align 8
  %81 = bitcast %struct.mbucket* %80 to i8*
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = bitcast i8* %83 to %struct.mbucket*
  %85 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  store %struct.mbucket* %84, %struct.mbucket** %85, align 8
  %86 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %87 = load %struct.mbucket*, %struct.mbucket** %86, align 8
  %88 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store %struct.mbucket* null, %struct.mbucket** %90, align 8
  br label %91

91:                                               ; preds = %63, %55
  br label %134

92:                                               ; preds = %34
  %93 = load i64, i64* @BUCKET_CHUNK, align 8
  %94 = load i64, i64* %7, align 8
  %95 = mul i64 %93, %94
  %96 = call i64 @malloc(i64 %95)
  %97 = inttoptr i64 %96 to %struct.mbucket*
  %98 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  store %struct.mbucket* %97, %struct.mbucket** %98, align 8
  %99 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %100 = load %struct.mbucket*, %struct.mbucket** %99, align 8
  %101 = icmp eq %struct.mbucket* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load i32, i32* @LogALERT, align 4
  %104 = load i64, i64* @BUCKET_CHUNK, align 8
  %105 = load i64, i64* %7, align 8
  %106 = mul i64 %104, %105
  %107 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @EX_OSERR, align 4
  %109 = call i32 @AbortProgram(i32 %108)
  br label %110

110:                                              ; preds = %102, %92
  %111 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %112 = load %struct.mbucket*, %struct.mbucket** %111, align 8
  %113 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store %struct.mbuf* %114, %struct.mbuf** %6, align 8
  %115 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %116 = load %struct.mbucket*, %struct.mbucket** %115, align 8
  %117 = bitcast %struct.mbucket* %116 to i8*
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = bitcast i8* %119 to %struct.mbucket*
  %121 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  store %struct.mbucket* %120, %struct.mbucket** %121, align 8
  %122 = load i64, i64* @BUCKET_CHUNK, align 8
  %123 = sub i64 %122, 1
  %124 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %125 = load %struct.mbucket*, %struct.mbucket** %124, align 8
  %126 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64 %123, i64* %128, align 8
  %129 = load %struct.mbucket**, %struct.mbucket*** %5, align 8
  %130 = load %struct.mbucket*, %struct.mbucket** %129, align 8
  %131 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store %struct.mbucket* null, %struct.mbucket** %133, align 8
  br label %134

134:                                              ; preds = %110, %91
  %135 = load i32, i32* @mbuf_Mallocs, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @mbuf_Mallocs, align 4
  %137 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %138 = call i32 @memset(%struct.mbuf* %137, i8 signext 0, i32 24)
  %139 = load i64, i64* %7, align 8
  %140 = sub i64 %139, 24
  %141 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %3, align 8
  %144 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %148 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MemMap, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MemMap, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %158
  store i64 %165, i64* %163, align 8
  %166 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %166
}

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

declare dso_local i32 @mbuftype(i32) #1

declare dso_local i32 @AbortProgram(i32) #1

declare dso_local %struct.mbucket** @M_BUCKET(i64) #1

declare dso_local i64 @M_ROUNDUP(i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.mbuf*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
