; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_DownCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_DownCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.fsm }
%struct.fsm = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.fsm }

@CLOSE_STAYDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lcp\00", align 1
@CLOSE_LCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @DownCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DownCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.fsm*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %22 = call i32 @datalink_Down(%struct.TYPE_17__* %20, i32 %21)
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %28 = call i32 @bundle_Down(%struct.TYPE_18__* %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  br label %113

30:                                               ; preds = %1
  %31 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %32 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %35 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %111

39:                                               ; preds = %30
  %40 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %41 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %44 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcasecmp(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %39
  %52 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 3
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %58 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = load i32, i32* @CLOSE_LCP, align 4
  %61 = call i32 @datalink_Down(%struct.TYPE_17__* %59, i32 %60)
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 2
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load i32, i32* @CLOSE_LCP, align 4
  %67 = call i32 @bundle_Down(%struct.TYPE_18__* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %110

69:                                               ; preds = %39
  %70 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %74 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcasecmp(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %69
  %82 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %83 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %82, i32 0, i32 3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = icmp ne %struct.TYPE_17__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 3
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  br label %104

95:                                               ; preds = %81
  %96 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %97 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %96, i32 0, i32 2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  br label %104

104:                                              ; preds = %95, %86
  %105 = phi %struct.fsm* [ %94, %86 ], [ %103, %95 ]
  store %struct.fsm* %105, %struct.fsm** %4, align 8
  %106 = load %struct.fsm*, %struct.fsm** %4, align 8
  %107 = call i32 @fsm2initial(%struct.fsm* %106)
  br label %109

108:                                              ; preds = %69
  store i32 -1, i32* %2, align 4
  br label %114

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %68
  br label %112

111:                                              ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %114

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %29
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %111, %108
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @datalink_Down(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bundle_Down(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @fsm2initial(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
