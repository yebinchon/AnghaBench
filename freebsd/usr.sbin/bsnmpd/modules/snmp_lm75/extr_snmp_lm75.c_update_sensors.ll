; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_update_sensors.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_update_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM75BUF = common dso_local global i32 0, align 4
@update_sensors.now = internal global i64 0, align 8
@last_sensors_update = common dso_local global i64 0, align 8
@UPDATE_INTERVAL = common dso_local global i64 0, align 8
@lm75_sensors = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"dev.lm75\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to allocate %zu bytes for resource\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @update_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_sensors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @LM75BUF, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = call i64 (...) @get_ticks()
  store i64 %16, i64* @update_sensors.now, align 8
  %17 = load i64, i64* @update_sensors.now, align 8
  %18 = load i64, i64* @last_sensors_update, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @UPDATE_INTERVAL, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

23:                                               ; preds = %0
  %24 = load i64, i64* @update_sensors.now, align 8
  store i64 %24, i64* @last_sensors_update, align 8
  %25 = call i32 (...) @free_sensors()
  store i64 0, i64* @lm75_sensors, align 8
  store i64 2, i64* %10, align 8
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %27 = call i32 @sysctlnametomib(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %26, i64* %10)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 4, %31
  %33 = call i64 @malloc(i64 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %42 = load i64, i64* %10, align 8
  %43 = mul i64 %42, 4
  %44 = call i32 @memcpy(i32* %40, i32* %41, i64 %43)
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %140, %129, %39
  store i64 0, i64* %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @sysctlgetnext(i32* %47, i64 %48, i32* null, i64* %9)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @free(i32* %52)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @malloc(i64 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @LOG_ERR, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @syslog(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @free(i32* %64)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

66:                                               ; preds = %54
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @sysctlgetnext(i32* %67, i64 %68, i32* %69, i64* %9)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @free(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @free(i32* %75)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

77:                                               ; preds = %66
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @free(i32* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %100, %77
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @free(i32* %97)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load i64, i64* %9, align 8
  %105 = call i64 @malloc(i64 %104)
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @LOG_ERR, align 4
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @syslog(i32 %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @free(i32* %113)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

115:                                              ; preds = %103
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @memcpy(i32* %116, i32* %117, i64 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @free(i32* %120)
  %122 = load i64, i64* %9, align 8
  %123 = udiv i64 %122, 4
  store i64 %123, i64* %8, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = trunc i64 %13 to i32
  %127 = call i64 @sysctlname(i32* %124, i64 %125, i8* %15, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %46

130:                                              ; preds = %115
  %131 = call i64 @strstr(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = call i64 @add_sensor(i8* %15)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @free(i32* %137)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %141

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %130
  br label %46

141:                                              ; preds = %136, %109, %96, %72, %60, %51, %37, %29, %22
  %142 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %1, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_ticks(...) #2

declare dso_local i32 @free_sensors(...) #2

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @sysctlgetnext(i32*, i64, i32*, i64*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @syslog(i32, i8*, i64) #2

declare dso_local i64 @sysctlname(i32*, i64, i8*, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i64 @add_sensor(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
