; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink2iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink2iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { %struct.datalink*, i32*, %struct.TYPE_8__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iovec = type { i32, i32* }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Toiov: No room for datalink !\0A\00", align 1
@DATALINK_MAXNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datalink2iov(%struct.datalink* %0, %struct.iovec* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.datalink*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %8, align 8
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.datalink*, %struct.datalink** %8, align 8
  %16 = icmp ne %struct.datalink* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %6
  %18 = load %struct.datalink*, %struct.datalink** %8, align 8
  %19 = getelementptr inbounds %struct.datalink, %struct.datalink* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @timer_Stop(i32* %20)
  %22 = load %struct.datalink*, %struct.datalink** %8, align 8
  %23 = getelementptr inbounds %struct.datalink, %struct.datalink* %22, i32 0, i32 4
  %24 = call i32 @cbcp_Down(i32* %23)
  %25 = load %struct.datalink*, %struct.datalink** %8, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @timer_Stop(i32* %27)
  %29 = load %struct.datalink*, %struct.datalink** %8, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @timer_Stop(i32* %32)
  br label %34

34:                                               ; preds = %17, %6
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* @LogERROR, align 4
  %42 = call i32 @log_Printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.datalink*, %struct.datalink** %8, align 8
  %44 = icmp ne %struct.datalink* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.datalink*, %struct.datalink** %8, align 8
  %47 = getelementptr inbounds %struct.datalink, %struct.datalink* %46, i32 0, i32 0
  %48 = load %struct.datalink*, %struct.datalink** %47, align 8
  %49 = call i32 @free(%struct.datalink* %48)
  %50 = load %struct.datalink*, %struct.datalink** %8, align 8
  %51 = call i32 @free(%struct.datalink* %50)
  br label %52

52:                                               ; preds = %45, %40
  store i32 -1, i32* %7, align 4
  br label %124

53:                                               ; preds = %34
  %54 = load %struct.datalink*, %struct.datalink** %8, align 8
  %55 = bitcast %struct.datalink* %54 to i8*
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.iovec*, %struct.iovec** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  store i32* %56, i32** %62, align 8
  %63 = load %struct.iovec*, %struct.iovec** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i64 %67
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 0
  store i32 32, i32* %69, align 8
  %70 = load %struct.datalink*, %struct.datalink** %8, align 8
  %71 = icmp ne %struct.datalink* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %53
  %73 = load %struct.datalink*, %struct.datalink** %8, align 8
  %74 = getelementptr inbounds %struct.datalink, %struct.datalink* %73, i32 0, i32 0
  %75 = load %struct.datalink*, %struct.datalink** %74, align 8
  %76 = load i32, i32* @DATALINK_MAXNAME, align 4
  %77 = call i32* @realloc(%struct.datalink* %75, i32 %76)
  br label %79

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i32* [ %77, %72 ], [ null, %78 ]
  %81 = load %struct.iovec*, %struct.iovec** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i64 %84
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %85, i32 0, i32 1
  store i32* %80, i32** %86, align 8
  %87 = load i32, i32* @DATALINK_MAXNAME, align 4
  %88 = load %struct.iovec*, %struct.iovec** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i64 %92
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 0
  store i32 %87, i32* %94, align 8
  %95 = load %struct.datalink*, %struct.datalink** %8, align 8
  %96 = icmp ne %struct.datalink* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %79
  %98 = load %struct.datalink*, %struct.datalink** %8, align 8
  %99 = getelementptr inbounds %struct.datalink, %struct.datalink* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  br label %102

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32* [ %100, %97 ], [ null, %101 ]
  %104 = load %struct.iovec*, %struct.iovec** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @physical2iov(i32* %103, %struct.iovec* %104, i32* %105, i32 %106, i32* %107, i32* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load %struct.datalink*, %struct.datalink** %8, align 8
  %114 = icmp ne %struct.datalink* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.datalink*, %struct.datalink** %8, align 8
  %117 = getelementptr inbounds %struct.datalink, %struct.datalink* %116, i32 0, i32 0
  %118 = load %struct.datalink*, %struct.datalink** %117, align 8
  %119 = call i32 @free(%struct.datalink* %118)
  %120 = load %struct.datalink*, %struct.datalink** %8, align 8
  %121 = call i32 @free(%struct.datalink* %120)
  br label %122

122:                                              ; preds = %115, %112, %102
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %52
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @cbcp_Down(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @free(%struct.datalink*) #1

declare dso_local i32* @realloc(%struct.datalink*, i32) #1

declare dso_local i32 @physical2iov(i32*, %struct.iovec*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
