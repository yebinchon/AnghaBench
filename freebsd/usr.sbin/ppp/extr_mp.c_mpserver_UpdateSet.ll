; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.mpserver = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mp: fdset(r) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @mpserver_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpserver_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fdescriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mpserver*, align 8
  %12 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %14 = call %struct.mpserver* @descriptor2mpserver(%struct.fdescriptor* %13)
  store %struct.mpserver* %14, %struct.mpserver** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %16 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %5
  %21 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %22 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @link_QueueLen(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %20
  %31 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %32 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %30
  %41 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %42 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @datalink_RemoveFromSet(%struct.TYPE_7__* %44, i32* %45, i32* %46, i32* %47)
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %54 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %58 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %61 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %60, i32 0, i32 2
  %62 = call i32 @bundle_SendDatalink(%struct.TYPE_7__* %56, i32 %59, i32* %61)
  %63 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %64 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %67 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  br label %79

68:                                               ; preds = %30, %20
  %69 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %70 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @datalink_RemoveFromSet(%struct.TYPE_7__* %72, i32* %73, i32* null, i32* null)
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %68, %40
  br label %116

80:                                               ; preds = %5
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %85 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %92 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %98 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %104 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @FD_SET(i32 %105, i32* %106)
  %108 = load i32, i32* @LogTIMER, align 4
  %109 = load %struct.mpserver*, %struct.mpserver** %11, align 8
  %110 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @log_Printf(i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %102, %83, %80
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local %struct.mpserver* @descriptor2mpserver(%struct.fdescriptor*) #1

declare dso_local i32 @link_QueueLen(i32*) #1

declare dso_local i64 @datalink_RemoveFromSet(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @bundle_SendDatalink(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
