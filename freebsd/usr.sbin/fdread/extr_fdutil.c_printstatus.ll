; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_printstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_printstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_status = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"\0AFDC status ST0=%#x ST1=%#x ST2=%#x C=%u H=%u R=%u N=%u:\0A\00", align 1
@NE7_ST0_IC_RC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@NE7_ST0_IC_AT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unexcpted interrupt code %#x\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unexpected error code in ST1/ST2\00", align 1
@NE7_ST1_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"end of cylinder (wrong format)\00", align 1
@NE7_ST1_DE = common dso_local global i32 0, align 4
@NE7_ST2_DD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"CRC error in data field\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"CRC error in ID field\00", align 1
@NE7_ST1_MA = common dso_local global i32 0, align 4
@NE7_ST2_MD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"no address mark in data field\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"no address mark in ID field\00", align 1
@NE7_ST2_WC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"wrong cylinder (format mismatch)\00", align 1
@NE7_ST1_ND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"no data (sector not found)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printstatus(%struct.fdc_status* %0, i32 %1) #0 {
  %3 = alloca %struct.fdc_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  store %struct.fdc_status* %0, %struct.fdc_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %11 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %17 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %23 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %29 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %35 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %41 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %47 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %27, i32 %33, i32 %39, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %8, %2
  %54 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %55 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NE7_ST0_IC_RC, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %179

65:                                               ; preds = %53
  %66 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %67 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NE7_ST0_IC_RC, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @NE7_ST0_IC_AT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %77 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %78 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NE7_ST0_IC_RC, align 4
  %83 = and i32 %81, %82
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %178

85:                                               ; preds = %65
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %89 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NE7_ST1_EN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %98 = call i32 @strcpy(i8* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %177

99:                                               ; preds = %85
  %100 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %101 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NE7_ST1_DE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %99
  %109 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %110 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NE7_ST2_DD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %119 = call i32 @strcpy(i8* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %123

120:                                              ; preds = %108
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %122 = call i32 @strcpy(i8* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  br label %176

124:                                              ; preds = %99
  %125 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %126 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NE7_ST1_MA, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %124
  %134 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %135 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NE7_ST2_MD, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %144 = call i32 @strcpy(i8* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %148

145:                                              ; preds = %133
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %147 = call i32 @strcpy(i8* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  br label %175

149:                                              ; preds = %124
  %150 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %151 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @NE7_ST2_WC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %160 = call i32 @strcpy(i8* %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %174

161:                                              ; preds = %149
  %162 = load %struct.fdc_status*, %struct.fdc_status** %3, align 8
  %163 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NE7_ST1_ND, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %172 = call i32 @strcpy(i8* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %161
  br label %174

174:                                              ; preds = %173, %158
  br label %175

175:                                              ; preds = %174, %148
  br label %176

176:                                              ; preds = %175, %123
  br label %177

177:                                              ; preds = %176, %96
  br label %178

178:                                              ; preds = %177, %75
  br label %179

179:                                              ; preds = %178, %62
  %180 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32 @fputs(i8* %180, i32 %181)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
