; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Up.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OPT_FORCE_SCRIPTS = common dso_local global i32 0, align 4
@PHYS_DIRECT = common dso_local global i32 0, align 4
@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHASE_DEAD = common dso_local global i32 0, align 4
@PHASE_TERMINATE = common dso_local global i32 0, align 4
@PHASE_ESTABLISH = common dso_local global i32 0, align 4
@DATALINK_CARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datalink_Up(%struct.datalink* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.datalink*, %struct.datalink** %4, align 8
  %8 = getelementptr inbounds %struct.datalink, %struct.datalink* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OPT_FORCE_SCRIPTS, align 4
  %11 = call i32 @Enabled(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.datalink*, %struct.datalink** %4, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHYS_DIRECT, align 4
  %20 = load i32, i32* @PHYS_DEDICATED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %13, %3
  %26 = load %struct.datalink*, %struct.datalink** %4, align 8
  %27 = getelementptr inbounds %struct.datalink, %struct.datalink* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %126 [
    i32 132, label %29
    i32 129, label %86
    i32 131, label %100
    i32 130, label %100
    i32 128, label %100
  ]

29:                                               ; preds = %25
  %30 = load %struct.datalink*, %struct.datalink** %4, align 8
  %31 = getelementptr inbounds %struct.datalink, %struct.datalink* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bundle_Phase(i32 %32)
  %34 = load i32, i32* @PHASE_DEAD, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.datalink*, %struct.datalink** %4, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bundle_Phase(i32 %39)
  %41 = load i32, i32* @PHASE_TERMINATE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36, %29
  %44 = load %struct.datalink*, %struct.datalink** %4, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PHASE_ESTABLISH, align 4
  %48 = call i32 @bundle_NewPhase(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.datalink*, %struct.datalink** %4, align 8
  %51 = call i32 @datalink_NewState(%struct.datalink* %50, i32 129)
  %52 = load %struct.datalink*, %struct.datalink** %4, align 8
  %53 = getelementptr inbounds %struct.datalink, %struct.datalink* %52, i32 0, i32 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PHYS_DIRECT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.datalink*, %struct.datalink** %4, align 8
  %62 = getelementptr inbounds %struct.datalink, %struct.datalink* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = phi i32 [ 0, %59 ], [ %65, %60 ]
  %68 = load %struct.datalink*, %struct.datalink** %4, align 8
  %69 = getelementptr inbounds %struct.datalink, %struct.datalink* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.datalink*, %struct.datalink** %4, align 8
  %71 = getelementptr inbounds %struct.datalink, %struct.datalink* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.datalink*, %struct.datalink** %4, align 8
  %76 = getelementptr inbounds %struct.datalink, %struct.datalink* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.datalink*, %struct.datalink** %4, align 8
  %80 = getelementptr inbounds %struct.datalink, %struct.datalink* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.datalink*, %struct.datalink** %4, align 8
  %84 = getelementptr inbounds %struct.datalink, %struct.datalink* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %126

86:                                               ; preds = %25
  %87 = load %struct.datalink*, %struct.datalink** %4, align 8
  %88 = getelementptr inbounds %struct.datalink, %struct.datalink* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.datalink*, %struct.datalink** %4, align 8
  %97 = getelementptr inbounds %struct.datalink, %struct.datalink* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92, %86
  br label %100

100:                                              ; preds = %25, %25, %25, %99
  %101 = load %struct.datalink*, %struct.datalink** %4, align 8
  %102 = getelementptr inbounds %struct.datalink, %struct.datalink* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load %struct.datalink*, %struct.datalink** %4, align 8
  %111 = getelementptr inbounds %struct.datalink, %struct.datalink* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.datalink*, %struct.datalink** %4, align 8
  %114 = getelementptr inbounds %struct.datalink, %struct.datalink* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.datalink*, %struct.datalink** %4, align 8
  %119 = getelementptr inbounds %struct.datalink, %struct.datalink* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.datalink*, %struct.datalink** %4, align 8
  %122 = load i32, i32* @DATALINK_CARRIER, align 4
  %123 = call i32 @datalink_NewState(%struct.datalink* %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %109
  br label %125

125:                                              ; preds = %124, %106, %100
  br label %126

126:                                              ; preds = %25, %125, %66
  ret void
}

declare dso_local i32 @Enabled(i32, i32) #1

declare dso_local i32 @bundle_Phase(i32) #1

declare dso_local i32 @bundle_NewPhase(i32, i32) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
