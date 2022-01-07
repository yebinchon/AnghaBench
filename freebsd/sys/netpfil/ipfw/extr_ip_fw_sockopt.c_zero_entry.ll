; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_zero_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_zero_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RESVD_SET = common dso_local global i32 0, align 4
@V_norule_counter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"All logging counts reset\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Accounting cleared\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"logging count reset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cleared\00", align 1
@V_fw_verbose = common dso_local global i64 0, align 8
@LOG_SECURITY = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ipfw: Entry %d %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ipfw: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32, i32)* @zero_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_entry(%struct.ip_fw_chain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_fw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 65535
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @RESVD_SET, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %159

38:                                               ; preds = %32, %29
  %39 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %40 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %39)
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  store i64 0, i64* @V_norule_counter, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %47 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %52 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %51, i32 0, i32 1
  %53 = load %struct.ip_fw**, %struct.ip_fw*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %53, i64 %55
  %57 = load %struct.ip_fw*, %struct.ip_fw** %56, align 8
  store %struct.ip_fw* %57, %struct.ip_fw** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %62 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %60, %50
  %68 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @clear_counters(%struct.ip_fw* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)
  store i8* %78, i8** %9, align 8
  br label %136

79:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %121, %79
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %83 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %80
  %87 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %88 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %87, i32 0, i32 1
  %89 = load %struct.ip_fw**, %struct.ip_fw*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %89, i64 %91
  %93 = load %struct.ip_fw*, %struct.ip_fw** %92, align 8
  store %struct.ip_fw* %93, %struct.ip_fw** %8, align 8
  %94 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %95 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %104 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %99
  %109 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @clear_counters(%struct.ip_fw* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %86
  %114 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %115 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %124

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %80

124:                                              ; preds = %119, %80
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %129 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %128)
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %4, align 4
  br label %159

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %131, %74
  %137 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %138 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %137)
  %139 = load i64, i64* @V_fw_verbose, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load i32, i32* @LOG_SECURITY, align 4
  %143 = load i32, i32* @LOG_NOTICE, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i64, i64* %11, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32, i32* %15, align 4
  %149 = load i64, i64* %11, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @log(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %150, i8* %151)
  br label %157

153:                                              ; preds = %141
  %154 = load i32, i32* %15, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 (i32, i8*, i8*, ...) @log(i32 %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %136
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %127, %36, %27
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @clear_counters(%struct.ip_fw*, i32) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @log(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
