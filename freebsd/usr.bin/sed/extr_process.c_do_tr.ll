; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_do_tr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_do_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.s_tr = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8*, i32, i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@ps = common dso_local global i8* null, align 8
@psl = common dso_local global i64 0, align 8
@YS = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@APPEND = common dso_local global i32 0, align 4
@PS = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@psanl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_tr*)* @do_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tr(%struct.s_tr* %0) #0 {
  %2 = alloca %struct.s_tr*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s_tr* %0, %struct.s_tr** %2, align 8
  %9 = load i32, i32* @MB_CUR_MAX, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i8*, i8** @ps, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %29, %11
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @ps, align 8
  %16 = load i64, i64* @psl, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = icmp ult i8* %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %21 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  br label %29

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %13

32:                                               ; preds = %13
  br label %147

33:                                               ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @YS, i32 0, i32 3), align 8
  %34 = load i8*, i8** @ps, align 8
  store i8* %34, i8** %5, align 8
  %35 = load i64, i64* @psl, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %134, %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %141

39:                                               ; preds = %36
  %40 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %41 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %4, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @APPEND, align 4
  %52 = call i32 @cspace(%struct.TYPE_7__* @YS, i8* %4, i32 1, i32 %51)
  store i64 1, i64* %6, align 8
  br label %134

53:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %57 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %54
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %63 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %61, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %60
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %74 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %82 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @memcmp(i8* %72, i32 %80, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %96

92:                                               ; preds = %71, %60
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %54

96:                                               ; preds = %91, %54
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %99 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  %103 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %104 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %112 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @APPEND, align 4
  %120 = call i32 @cspace(%struct.TYPE_7__* @YS, i8* %110, i32 %118, i32 %119)
  %121 = load %struct.s_tr*, %struct.s_tr** %2, align 8
  %122 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %6, align 8
  br label %133

129:                                              ; preds = %96
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* @APPEND, align 4
  %132 = call i32 @cspace(%struct.TYPE_7__* @YS, i8* %130, i32 1, i32 %131)
  store i64 1, i64* %6, align 8
  br label %133

133:                                              ; preds = %129, %102
  br label %134

134:                                              ; preds = %133, %50
  %135 = load i64, i64* %6, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %5, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %7, align 8
  br label %36

141:                                              ; preds = %36
  %142 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 bitcast (%struct.TYPE_7__* @PS to i8*), i64 24, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @PS to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @YS to i8*), i64 24, i1 false)
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* @psanl, align 4
  %145 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @YS to i8*), i8* align 8 %145, i64 24, i1 false)
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @YS, i32 0, i32 0), align 8
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @YS, i32 0, i32 1), align 4
  br label %147

147:                                              ; preds = %141, %32
  ret void
}

declare dso_local i32 @cspace(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
