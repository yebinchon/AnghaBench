; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_do_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_do_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WLAN_SYSCTL_MAX = common dso_local global i32 0, align 4
@wlan_sysctl_name = common dso_local global i32 0, align 4
@wlan_sysctl = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sysctl(%s) failed - %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_do_sysctl(%struct.wlan_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlan_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wlan_config* %0, %struct.wlan_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %3
  store i64 4, i64* %12, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %61 [
    i32 128, label %17
    i32 130, label %21
    i32 131, label %25
    i32 129, label %29
    i32 132, label %33
    i32 135, label %37
    i32 137, label %41
    i32 133, label %45
    i32 134, label %49
    i32 136, label %53
    i32 138, label %57
  ]

17:                                               ; preds = %15
  %18 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %19 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %23 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %62

25:                                               ; preds = %15
  %26 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %27 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %62

29:                                               ; preds = %15
  %30 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %31 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  br label %62

33:                                               ; preds = %15
  %34 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %35 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %62

37:                                               ; preds = %15
  %38 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %39 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %62

41:                                               ; preds = %15
  %42 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %43 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %62

45:                                               ; preds = %15
  %46 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %47 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %62

49:                                               ; preds = %15
  %50 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %51 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %62

53:                                               ; preds = %15
  %54 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %55 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %15
  %58 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %59 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  br label %62

61:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %145

62:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17
  br label %69

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @WLAN_SYSCTL_MAX, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %145

68:                                               ; preds = %63
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %71 = load i32, i32* @wlan_sysctl_name, align 4
  %72 = call i32 @strlcpy(i8* %70, i32 %71, i32 100)
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %74 = load i32*, i32** @wlan_sysctl, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strlcat(i8* %73, i32 %78, i32 100)
  store i64 4, i64* %11, align 8
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %85

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %83
  %86 = phi i32* [ %10, %83 ], [ null, %84 ]
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @sysctlbyname(i8* %80, i32* %9, i64* %11, i32* %86, i64 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 @syslog(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %94)
  store i32 -1, i32* %4, align 4
  br label %145

96:                                               ; preds = %85
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %142 [
    i32 128, label %98
    i32 130, label %102
    i32 131, label %106
    i32 129, label %110
    i32 132, label %114
    i32 135, label %118
    i32 137, label %122
    i32 133, label %126
    i32 134, label %130
    i32 136, label %134
    i32 138, label %138
  ]

98:                                               ; preds = %96
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %101 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %144

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %105 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %144

106:                                              ; preds = %96
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %109 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %144

110:                                              ; preds = %96
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %113 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %144

114:                                              ; preds = %96
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %117 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  br label %144

118:                                              ; preds = %96
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %121 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %144

122:                                              ; preds = %96
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %125 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  br label %144

126:                                              ; preds = %96
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %129 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  br label %144

130:                                              ; preds = %96
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %133 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 4
  br label %144

134:                                              ; preds = %96
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %137 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %136, i32 0, i32 9
  store i32 %135, i32* %137, align 4
  br label %144

138:                                              ; preds = %96
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.wlan_config*, %struct.wlan_config** %5, align 8
  %141 = getelementptr inbounds %struct.wlan_config, %struct.wlan_config* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 4
  br label %144

142:                                              ; preds = %96
  %143 = call i32 (...) @abort() #3
  unreachable

144:                                              ; preds = %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %90, %67, %61
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i32, i32) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i64) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
