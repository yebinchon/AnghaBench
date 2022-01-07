; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_CloseCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_CloseCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.fsm = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fsm }

@CLOSE_STAYDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lcp\00", align 1
@CLOSE_LCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ccp!\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@OPEN_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @CloseCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CloseCommand(%struct.cmdargs* %0) #0 {
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
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32* [ %25, %20 ], [ null, %26 ]
  %29 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %30 = call i32 @bundle_Close(i32 %15, i32* %28, i32 %29)
  br label %135

31:                                               ; preds = %1
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %133

40:                                               ; preds = %31
  %41 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %43, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %40
  %53 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %54 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %57 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %62 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32* [ %65, %60 ], [ null, %66 ]
  %69 = load i32, i32* @CLOSE_LCP, align 4
  %70 = call i32 @bundle_Close(i32 %55, i32* %68, i32 %69)
  br label %132

71:                                               ; preds = %40
  %72 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %73 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %76 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %74, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %86, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcasecmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %130, label %95

95:                                               ; preds = %83, %71
  %96 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %97 = call %struct.TYPE_6__* @command_ChooseLink(%struct.cmdargs* %96)
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.fsm* %99, %struct.fsm** %4, align 8
  %100 = load %struct.fsm*, %struct.fsm** %4, align 8
  %101 = getelementptr inbounds %struct.fsm, %struct.fsm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ST_OPENED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %95
  %106 = load %struct.fsm*, %struct.fsm** %4, align 8
  %107 = call i32 @fsm_Close(%struct.fsm* %106)
  %108 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %109 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %112 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 33
  br i1 %120, label %121, label %124

121:                                              ; preds = %105
  %122 = load %struct.fsm*, %struct.fsm** %4, align 8
  %123 = getelementptr inbounds %struct.fsm, %struct.fsm* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  br label %128

124:                                              ; preds = %105
  %125 = load i64, i64* @OPEN_PASSIVE, align 8
  %126 = load %struct.fsm*, %struct.fsm** %4, align 8
  %127 = getelementptr inbounds %struct.fsm, %struct.fsm* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %121
  br label %129

129:                                              ; preds = %128, %95
  br label %131

130:                                              ; preds = %83
  store i32 -1, i32* %2, align 4
  br label %136

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131, %67
  br label %134

133:                                              ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %136

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %27
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %133, %130
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @bundle_Close(i32, i32*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @command_ChooseLink(%struct.cmdargs*) #1

declare dso_local i32 @fsm_Close(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
