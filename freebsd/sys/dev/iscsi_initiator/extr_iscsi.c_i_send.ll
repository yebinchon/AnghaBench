; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.thread = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32* }

@ENOTCONN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@M_ISCSIBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"len=%d ahs_len=%d ds_len=%d buf=%zu@%p\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"copyin ahs: error=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"copyin ds: error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32*, %struct.thread*)* @i_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_send(%struct.cdev* %0, i32* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %14 = load %struct.cdev*, %struct.cdev** %5, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = call i32 @debug_called(i32 8)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOTCONN, align 4
  store i32 %23, i32* %4, align 4
  br label %180

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call %struct.TYPE_10__* @pdu_alloc(i32 %27, i32 %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %10, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EAGAIN, align 4
  store i32 %32, i32* %4, align 4
  br label %180

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %11, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_11__*
  %40 = bitcast %struct.TYPE_11__* %37 to i8*
  %41 = bitcast %struct.TYPE_11__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = call i32 @i_prepPDU(%struct.TYPE_12__* %42, %struct.TYPE_10__* %43)
  store i32 %44, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %169

47:                                               ; preds = %33
  store i32* null, i32** %9, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @M_ISCSIBUF, align 4
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = call i32* @malloc(i32 %60, i32 %61, i32 %62)
  store i32* %63, i32** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @EAGAIN, align 4
  store i32 %71, i32* %13, align 4
  br label %169

72:                                               ; preds = %54
  br label %76

73:                                               ; preds = %47
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = sub i64 %89, 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 (i32, i8*, i32, ...) @sdebug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i64 %90, i32* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %76
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %12, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @copyin(i32* %103, i32* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (i32, i8*, i32, ...) @sdebug(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %169

112:                                              ; preds = %97
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  store i32* %113, i32** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %9, align 8
  br label %120

120:                                              ; preds = %112, %76
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @copyin(i32* %131, i32* %132, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %125
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, i8*, i32, ...) @sdebug(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %169

140:                                              ; preds = %125
  %141 = load i32*, i32** %9, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %9, align 8
  br label %148

148:                                              ; preds = %152, %140
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %9, align 8
  store i32 0, i32* %155, align 4
  br label %148

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %120
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %161 = call i32 @isc_qout(%struct.TYPE_12__* %159, %struct.TYPE_10__* %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = call i32 @wakeup(i32* %166)
  br label %168

168:                                              ; preds = %164, %158
  br label %169

169:                                              ; preds = %168, %137, %109, %70, %46
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = call i32 @pdu_free(i32 %175, %struct.TYPE_10__* %176)
  br label %178

178:                                              ; preds = %172, %169
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %178, %31, %22
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.TYPE_10__* @pdu_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i_prepPDU(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @sdebug(i32, i8*, i32, ...) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @isc_qout(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @pdu_free(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
