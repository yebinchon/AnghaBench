; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_ShowSticky.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_ShowSticky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32 }
%struct.sticky_route = type { i32, i32, i32, %struct.sticky_route* }

@.str = private unnamed_addr constant [8 x i8] c"%s:\0A%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s:%*s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%*sadd \00", align 1
@ROUTE_DSTMYADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@ROUTE_DSTMYADDR6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@ROUTE_DSTHISADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@ROUTE_DSTHISADDR6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"HISADDR6\00", align 1
@ROUTE_DSTDNS0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@ROUTE_DSTDNS1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ROUTE_GWHISADDR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c" HISADDR\0A\00", align 1
@ROUTE_GWHISADDR6 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c" HISADDR6\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_ShowSticky(%struct.prompt* %0, %struct.sticky_route* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.prompt*, align 8
  %6 = alloca %struct.sticky_route*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.prompt* %0, %struct.prompt** %5, align 8
  store %struct.sticky_route* %1, %struct.sticky_route** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 %12, 2
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.prompt*, %struct.prompt** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %29

21:                                               ; preds = %4
  %22 = load %struct.prompt*, %struct.prompt** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %21, %16
  br label %30

30:                                               ; preds = %150, %29
  %31 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %32 = icmp ne %struct.sticky_route* %31, null
  br i1 %32, label %33, label %154

33:                                               ; preds = %30
  %34 = load %struct.prompt*, %struct.prompt** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %43 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %44 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ROUTE_DSTMYADDR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.prompt*, %struct.prompt** %5, align 8
  %51 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %122

52:                                               ; preds = %40
  %53 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %54 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ROUTE_DSTMYADDR6, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.prompt*, %struct.prompt** %5, align 8
  %61 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %121

62:                                               ; preds = %52
  %63 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %64 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ROUTE_DSTHISADDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.prompt*, %struct.prompt** %5, align 8
  %71 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %120

72:                                               ; preds = %62
  %73 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %74 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ROUTE_DSTHISADDR6, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.prompt*, %struct.prompt** %5, align 8
  %81 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %119

82:                                               ; preds = %72
  %83 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %84 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ROUTE_DSTDNS0, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.prompt*, %struct.prompt** %5, align 8
  %91 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %118

92:                                               ; preds = %82
  %93 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %94 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ROUTE_DSTDNS1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.prompt*, %struct.prompt** %5, align 8
  %101 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %117

102:                                              ; preds = %92
  %103 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %104 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %103, i32 0, i32 2
  %105 = call i64 @ncprange_isdefault(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.prompt*, %struct.prompt** %5, align 8
  %109 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %116

110:                                              ; preds = %102
  %111 = load %struct.prompt*, %struct.prompt** %5, align 8
  %112 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %113 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %112, i32 0, i32 2
  %114 = call i32 @ncprange_ntoa(i32* %113)
  %115 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %89
  br label %119

119:                                              ; preds = %118, %79
  br label %120

120:                                              ; preds = %119, %69
  br label %121

121:                                              ; preds = %120, %59
  br label %122

122:                                              ; preds = %121, %49
  %123 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %124 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.prompt*, %struct.prompt** %5, align 8
  %131 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %149

132:                                              ; preds = %122
  %133 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %134 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ROUTE_GWHISADDR6, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.prompt*, %struct.prompt** %5, align 8
  %141 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %148

142:                                              ; preds = %132
  %143 = load %struct.prompt*, %struct.prompt** %5, align 8
  %144 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %145 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %144, i32 0, i32 1
  %146 = call i32 @ncpaddr_ntoa(i32* %145)
  %147 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %142, %139
  br label %149

149:                                              ; preds = %148, %129
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %152 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %151, i32 0, i32 3
  %153 = load %struct.sticky_route*, %struct.sticky_route** %152, align 8
  store %struct.sticky_route* %153, %struct.sticky_route** %6, align 8
  br label %30

154:                                              ; preds = %30
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i64 @ncprange_isdefault(i32*) #1

declare dso_local i32 @ncprange_ntoa(i32*) #1

declare dso_local i32 @ncpaddr_ntoa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
