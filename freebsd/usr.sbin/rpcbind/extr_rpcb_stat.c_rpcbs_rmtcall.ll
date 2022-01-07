; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_stat.c_rpcbs_rmtcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_stat.c_rpcbs_rmtcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.netconfig = type { i32* }

@RPCBVERS_STAT = common dso_local global i64 0, align 8
@inf = common dso_local global %struct.TYPE_9__* null, align 8
@RPCBPROC_INDIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcbs_rmtcall(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.netconfig*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %14, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @RPCBVERS_STAT, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %157

21:                                               ; preds = %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @inf, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %15, align 8
  br label %27

27:                                               ; preds = %92, %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %96

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %157

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i64 @strcmp(i32* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = icmp eq %struct.TYPE_8__* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64, %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %81

76:                                               ; preds = %64
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @RPCBPROC_INDIRECT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %81
  br label %157

91:                                               ; preds = %54, %48, %42, %36
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %15, align 8
  br label %27

96:                                               ; preds = %27
  %97 = load i8*, i8** %13, align 8
  %98 = call %struct.netconfig* @rpcbind_get_conf(i8* %97)
  store %struct.netconfig* %98, %struct.netconfig** %16, align 8
  %99 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %100 = icmp eq %struct.netconfig* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %157

102:                                              ; preds = %96
  %103 = call i64 @malloc(i32 56)
  %104 = inttoptr i64 %103 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %15, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %106 = icmp eq %struct.TYPE_7__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %157

108:                                              ; preds = %102
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %119 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 7
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = icmp eq %struct.TYPE_8__* %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %108
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125, %108
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  store i32 0, i32* %136, align 4
  br label %142

137:                                              ; preds = %125
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  store i32 0, i32* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  store i32 1, i32* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @inf, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @inf, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store %struct.TYPE_7__* %152, %struct.TYPE_7__** %156, align 8
  br label %157

157:                                              ; preds = %142, %107, %101, %90, %35, %20
  ret void
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local %struct.netconfig* @rpcbind_get_conf(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
