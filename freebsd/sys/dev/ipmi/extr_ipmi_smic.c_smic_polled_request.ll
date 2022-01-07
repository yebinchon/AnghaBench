; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_polled_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_polled_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32, i64, i64, i32, i32, i64*, i32, i64* }

@.str = private unnamed_addr constant [30 x i8] c"SMIC: Reply address mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SMIC: Command mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SMIC: Read short: %zd buffer, %d actual\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*)* @smic_polled_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smic_polled_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %11 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %12 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @smic_start_write(%struct.ipmi_softc* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

17:                                               ; preds = %2
  %18 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %19 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %24 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %25 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @smic_write_last(%struct.ipmi_softc* %23, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %167

30:                                               ; preds = %22
  br label %70

31:                                               ; preds = %17
  %32 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %33 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @smic_write_next(%struct.ipmi_softc* %32, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %167

39:                                               ; preds = %31
  %40 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %41 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %40, i32 0, i32 7
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %6, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %59, %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %46 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %6, align 8
  %54 = load i64, i64* %52, align 8
  %55 = call i32 @smic_write_next(%struct.ipmi_softc* %51, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %167

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @smic_write_last(%struct.ipmi_softc* %63, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %167

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %72 = call i32 @smic_start_read(%struct.ipmi_softc* %71, i64* %7)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %167

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %78 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IPMI_REPLY_ADDR(i32 %79)
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

87:                                               ; preds = %75
  %88 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %89 = call i32 @smic_read_byte(%struct.ipmi_softc* %88, i64* %7)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %167

92:                                               ; preds = %87
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %95 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

103:                                              ; preds = %92
  %104 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %105 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %106 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %105, i32 0, i32 2
  %107 = call i32 @smic_read_byte(%struct.ipmi_softc* %104, i64* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %167

111:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %135, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %117 = call i32 @smic_read_byte(%struct.ipmi_softc* %116, i64* %7)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %167

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %124 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %130 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %129, i32 0, i32 5
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %128, i64* %134, align 8
  br label %135

135:                                              ; preds = %127, %121
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %112

138:                                              ; preds = %112
  %139 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %140 = call i32 @smic_read_end(%struct.ipmi_softc* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %167

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %146 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %148 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %143
  %153 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %154 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %159 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %162 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %152, %143
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %142, %120, %110, %98, %91, %82, %74, %68, %57, %38, %29, %16
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @smic_start_write(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @smic_write_last(%struct.ipmi_softc*, i64) #1

declare dso_local i32 @smic_write_next(%struct.ipmi_softc*, i64) #1

declare dso_local i32 @smic_start_read(%struct.ipmi_softc*, i64*) #1

declare dso_local i64 @IPMI_REPLY_ADDR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @smic_read_byte(%struct.ipmi_softc*, i64*) #1

declare dso_local i32 @smic_read_end(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
