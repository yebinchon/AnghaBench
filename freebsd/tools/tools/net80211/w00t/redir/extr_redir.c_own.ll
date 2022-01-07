; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_own.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i64, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@S_WAIT_BUDDY = common dso_local global i64 0, align 8
@S_WAIT_ACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@S_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @own(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  store %struct.timeval* null, %struct.timeval** %4, align 8
  store i32 10000, i32* %7, align 4
  store i32 2000000, i32* %8, align 4
  %11 = load %struct.params*, %struct.params** %2, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S_WAIT_BUDDY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.params*, %struct.params** %2, align 8
  %23 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S_WAIT_ACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.params*, %struct.params** %2, align 8
  %29 = getelementptr inbounds %struct.params, %struct.params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S_WAIT_BUDDY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27, %20
  %34 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load %struct.params*, %struct.params** %2, align 8
  %40 = getelementptr inbounds %struct.params, %struct.params* %39, i32 0, i32 4
  %41 = call i32 @elapsed(i32* %40, %struct.timeval* %3)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.params*, %struct.params** %2, align 8
  %47 = getelementptr inbounds %struct.params, %struct.params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @S_START, align 8
  %52 = load %struct.params*, %struct.params** %2, align 8
  %53 = getelementptr inbounds %struct.params, %struct.params* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %125

54:                                               ; preds = %45
  %55 = load %struct.params*, %struct.params** %2, align 8
  %56 = call i32 @send_packet(%struct.params* %55)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 1000
  %64 = sdiv i32 %63, 1000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = mul nsw i32 %69, 1000
  %71 = sub nsw i32 %66, %70
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  store %struct.timeval* %3, %struct.timeval** %4, align 8
  br label %73

73:                                               ; preds = %58, %27
  %74 = call i32 @FD_ZERO(i32* %5)
  %75 = load %struct.params*, %struct.params** %2, align 8
  %76 = getelementptr inbounds %struct.params, %struct.params* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FD_SET(i32 %77, i32* %5)
  %79 = load %struct.params*, %struct.params** %2, align 8
  %80 = getelementptr inbounds %struct.params, %struct.params* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @FD_SET(i32 %81, i32* %5)
  %83 = load %struct.params*, %struct.params** %2, align 8
  %84 = getelementptr inbounds %struct.params, %struct.params* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.params*, %struct.params** %2, align 8
  %87 = getelementptr inbounds %struct.params, %struct.params* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %73
  %91 = load %struct.params*, %struct.params** %2, align 8
  %92 = getelementptr inbounds %struct.params, %struct.params* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  br label %98

94:                                               ; preds = %73
  %95 = load %struct.params*, %struct.params** %2, align 8
  %96 = getelementptr inbounds %struct.params, %struct.params* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %93, %90 ], [ %97, %94 ]
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.timeval*, %struct.timeval** %4, align 8
  %103 = call i32 @select(i32 %101, i32* %5, i32* null, i32* null, %struct.timeval* %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %98
  %108 = load %struct.params*, %struct.params** %2, align 8
  %109 = getelementptr inbounds %struct.params, %struct.params* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @FD_ISSET(i32 %110, i32* %5)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.params*, %struct.params** %2, align 8
  %115 = call i32 @read_wifi(%struct.params* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.params*, %struct.params** %2, align 8
  %118 = getelementptr inbounds %struct.params, %struct.params* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @FD_ISSET(i32 %119, i32* %5)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.params*, %struct.params** %2, align 8
  %124 = call i32 @read_buddy(%struct.params* %123)
  br label %125

125:                                              ; preds = %50, %122, %116
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elapsed(i32*, %struct.timeval*) #1

declare dso_local i32 @send_packet(%struct.params*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read_wifi(%struct.params*) #1

declare dso_local i32 @read_buddy(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
