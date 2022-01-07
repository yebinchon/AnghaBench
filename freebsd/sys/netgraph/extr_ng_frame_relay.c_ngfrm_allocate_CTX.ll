; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_allocate_CTX.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_allocate_CTX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.ctxinfo* }
%struct.ctxinfo = type { i32, i32 }

@CTX_VALUE = common dso_local global i32 0, align 4
@MAX_CT = common dso_local global i32 0, align 4
@CHAN_VALID = common dso_local global i32 0, align 4
@CTX_VALID = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No CTX available for dlci %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ngfrm_allocate_CTX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngfrm_allocate_CTX(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctxinfo*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store %struct.ctxinfo* null, %struct.ctxinfo** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1023
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %120

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CTX_VALUE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MAX_CT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.ctxinfo*, %struct.ctxinfo** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %35, i64 %37
  store %struct.ctxinfo* %38, %struct.ctxinfo** %7, align 8
  br label %46

39:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %11
  %48 = load %struct.ctxinfo*, %struct.ctxinfo** %7, align 8
  %49 = icmp eq %struct.ctxinfo* %48, null
  br i1 %49, label %50, label %111

50:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %107, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MAX_CT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.ctxinfo*, %struct.ctxinfo** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %58, i64 %60
  %62 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHAN_VALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %55
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load %struct.ctxinfo*, %struct.ctxinfo** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %70, i64 %72
  %74 = call i32 @bzero(%struct.ctxinfo* %73, i32 8)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.ctxinfo*, %struct.ctxinfo** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %77, i64 %79
  store %struct.ctxinfo* %80, %struct.ctxinfo** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @CTX_VALID, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load %struct.ctxinfo*, %struct.ctxinfo** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %93, i64 %95
  %97 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  %98 = load i32, i32* @CHAN_VALID, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.ctxinfo*, %struct.ctxinfo** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %101, i64 %103
  %105 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 4
  br label %110

106:                                              ; preds = %55
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %51

110:                                              ; preds = %67, %51
  br label %111

111:                                              ; preds = %110, %47
  %112 = load %struct.ctxinfo*, %struct.ctxinfo** %7, align 8
  %113 = icmp ne %struct.ctxinfo* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @log(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %116)
  store i32 -1, i32* %3, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %114, %10
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @bzero(%struct.ctxinfo*, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
