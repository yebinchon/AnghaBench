; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_vjset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_vjset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slotcomp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_vjset(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 2
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %115

14:                                               ; preds = %1
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcasecmp(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %14
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @atoi(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %26
  store i32 1, i32* %2, align 4
  br label %115

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %45, i32* %53, align 4
  store i32 0, i32* %2, align 4
  br label %115

54:                                               ; preds = %14
  %55 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %59 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcasecmp(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %113, label %66

66:                                               ; preds = %54
  %67 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcasecmp(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %66
  %80 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %81 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %112

88:                                               ; preds = %66
  %89 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %90 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %93 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strcasecmp(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %88
  %102 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %103 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %111

110:                                              ; preds = %88
  store i32 2, i32* %2, align 4
  br label %115

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %79
  store i32 0, i32* %2, align 4
  br label %115

113:                                              ; preds = %54
  br label %114

114:                                              ; preds = %113
  store i32 -1, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %112, %110, %44, %43, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
