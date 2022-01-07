; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ResolvCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ResolvCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @ResolvCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResolvCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %115

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcasecmp(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @ipcp_LoadDNS(%struct.TYPE_10__* %29)
  br label %114

31:                                               ; preds = %12
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcasecmp(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %31
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @ipcp_RestoreDNS(%struct.TYPE_10__* %48)
  br label %113

50:                                               ; preds = %31
  %51 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %52 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcasecmp(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %50
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @ipcp_WriteDNS(%struct.TYPE_10__* %67)
  br label %112

69:                                               ; preds = %50
  %70 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %74 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcasecmp(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %69
  %82 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %83 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %111

89:                                               ; preds = %69
  %90 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %91 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %94 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strcasecmp(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %89
  %102 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %103 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %110

109:                                              ; preds = %89
  store i32 -1, i32* %2, align 4
  br label %116

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %81
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112, %43
  br label %114

114:                                              ; preds = %113, %24
  store i32 0, i32* %2, align 4
  br label %116

115:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %114, %109
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @ipcp_LoadDNS(%struct.TYPE_10__*) #1

declare dso_local i32 @ipcp_RestoreDNS(%struct.TYPE_10__*) #1

declare dso_local i32 @ipcp_WriteDNS(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
