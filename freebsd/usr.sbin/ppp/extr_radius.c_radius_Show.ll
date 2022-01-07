; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { i8*, i8*, i8*, i64, i64, %struct.TYPE_4__, i64, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.prompt = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c" Radius config:     %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\0A                IP: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"           Netmask: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"               MTU: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"                VJ: %sabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"           Message: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"   MPPE Enc Policy: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"    MPPE Enc Types: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"     MPPE Recv Key: %seceived\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Not r\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"     MPPE Send Key: %seceived\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c" MS-CHAP2-Response: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"     Error Message: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"            Routes\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"            IPv6 Routes\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c" (not authenticated)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_Show(%struct.radius* %0, %struct.prompt* %1) #0 {
  %3 = alloca %struct.radius*, align 8
  %4 = alloca %struct.prompt*, align 8
  store %struct.radius* %0, %struct.radius** %3, align 8
  store %struct.prompt* %1, %struct.prompt** %4, align 8
  %5 = load %struct.prompt*, %struct.prompt** %4, align 8
  %6 = load %struct.radius*, %struct.radius** %3, align 8
  %7 = getelementptr inbounds %struct.radius, %struct.radius* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.radius*, %struct.radius** %3, align 8
  %15 = getelementptr inbounds %struct.radius, %struct.radius* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i8* [ %17, %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.radius*, %struct.radius** %3, align 8
  %23 = getelementptr inbounds %struct.radius, %struct.radius* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %145

26:                                               ; preds = %19
  %27 = load %struct.prompt*, %struct.prompt** %4, align 8
  %28 = load %struct.radius*, %struct.radius** %3, align 8
  %29 = getelementptr inbounds %struct.radius, %struct.radius* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @inet_ntoa(i32 %30)
  %32 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.prompt*, %struct.prompt** %4, align 8
  %34 = load %struct.radius*, %struct.radius** %3, align 8
  %35 = getelementptr inbounds %struct.radius, %struct.radius* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @inet_ntoa(i32 %36)
  %38 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.prompt*, %struct.prompt** %4, align 8
  %40 = load %struct.radius*, %struct.radius** %3, align 8
  %41 = getelementptr inbounds %struct.radius, %struct.radius* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.prompt*, %struct.prompt** %4, align 8
  %45 = load %struct.radius*, %struct.radius** %3, align 8
  %46 = getelementptr inbounds %struct.radius, %struct.radius* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %51 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = load %struct.prompt*, %struct.prompt** %4, align 8
  %53 = load %struct.radius*, %struct.radius** %3, align 8
  %54 = getelementptr inbounds %struct.radius, %struct.radius* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %26
  %58 = load %struct.radius*, %struct.radius** %3, align 8
  %59 = getelementptr inbounds %struct.radius, %struct.radius* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i8* [ %60, %57 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %61 ]
  %64 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %63)
  %65 = load %struct.prompt*, %struct.prompt** %4, align 8
  %66 = load %struct.radius*, %struct.radius** %3, align 8
  %67 = getelementptr inbounds %struct.radius, %struct.radius* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @radius_policyname(i32 %69)
  %71 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %70)
  %72 = load %struct.prompt*, %struct.prompt** %4, align 8
  %73 = load %struct.radius*, %struct.radius** %3, align 8
  %74 = getelementptr inbounds %struct.radius, %struct.radius* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @radius_typesname(i32 %76)
  %78 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load %struct.prompt*, %struct.prompt** %4, align 8
  %80 = load %struct.radius*, %struct.radius** %3, align 8
  %81 = getelementptr inbounds %struct.radius, %struct.radius* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  %87 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %86)
  %88 = load %struct.prompt*, %struct.prompt** %4, align 8
  %89 = load %struct.radius*, %struct.radius** %3, align 8
  %90 = getelementptr inbounds %struct.radius, %struct.radius* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  %96 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %95)
  %97 = load %struct.prompt*, %struct.prompt** %4, align 8
  %98 = load %struct.radius*, %struct.radius** %3, align 8
  %99 = getelementptr inbounds %struct.radius, %struct.radius* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %62
  %103 = load %struct.radius*, %struct.radius** %3, align 8
  %104 = getelementptr inbounds %struct.radius, %struct.radius* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  br label %107

106:                                              ; preds = %62
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i8* [ %105, %102 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %106 ]
  %109 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %108)
  %110 = load %struct.prompt*, %struct.prompt** %4, align 8
  %111 = load %struct.radius*, %struct.radius** %3, align 8
  %112 = getelementptr inbounds %struct.radius, %struct.radius* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.radius*, %struct.radius** %3, align 8
  %117 = getelementptr inbounds %struct.radius, %struct.radius* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  br label %120

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi i8* [ %118, %115 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %119 ]
  %122 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %121)
  %123 = load %struct.radius*, %struct.radius** %3, align 8
  %124 = getelementptr inbounds %struct.radius, %struct.radius* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.prompt*, %struct.prompt** %4, align 8
  %129 = load %struct.radius*, %struct.radius** %3, align 8
  %130 = getelementptr inbounds %struct.radius, %struct.radius* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @route_ShowSticky(%struct.prompt* %128, i64 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 16)
  br label %133

133:                                              ; preds = %127, %120
  %134 = load %struct.radius*, %struct.radius** %3, align 8
  %135 = getelementptr inbounds %struct.radius, %struct.radius* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.prompt*, %struct.prompt** %4, align 8
  %140 = load %struct.radius*, %struct.radius** %3, align 8
  %141 = getelementptr inbounds %struct.radius, %struct.radius* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @route_ShowSticky(%struct.prompt* %139, i64 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 16)
  br label %144

144:                                              ; preds = %138, %133
  br label %148

145:                                              ; preds = %19
  %146 = load %struct.prompt*, %struct.prompt** %4, align 8
  %147 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %144
  ret void
}

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @radius_policyname(i32) #1

declare dso_local i32 @radius_typesname(i32) #1

declare dso_local i32 @route_ShowSticky(%struct.prompt*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
