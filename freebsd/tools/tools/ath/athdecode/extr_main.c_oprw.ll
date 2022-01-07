; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_oprw.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_oprw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.athregrec = type { i32, i32, i32, i64 }
%struct.dumpreg = type { i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"\0A%05d: [%d] \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AR_%s (0x%x)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"AR_KEYTABLE%u(%u) (0x%x)\00", align 1
@AR_KEYTABLE_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"AR_RATE_DURATION(0x%x) (0x%x)\00", align 1
@AR_RATE_DURATION_0 = common dso_local global i32 0, align 4
@AR_PHY_BASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"AR_PHY(%u) (0x%x)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%-30s %s 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@AR_PHY_PCDAC_TX_POWER_0 = common dso_local global i32 0, align 4
@PWR_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.athregrec*)* @oprw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oprw(i32* %0, i32 %1, %struct.athregrec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.athregrec*, align 8
  %7 = alloca %struct.dumpreg*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.athregrec* %2, %struct.athregrec** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %17 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %21 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dumpreg* @findreg(i32 %22)
  store %struct.dumpreg* %23, %struct.dumpreg** %7, align 8
  %24 = load %struct.dumpreg*, %struct.dumpreg** %7, align 8
  %25 = icmp ne %struct.dumpreg* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %3
  %27 = load %struct.dumpreg*, %struct.dumpreg** %7, align 8
  %28 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %33 = load %struct.dumpreg*, %struct.dumpreg** %7, align 8
  %34 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %37 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load %struct.dumpreg*, %struct.dumpreg** %7, align 8
  %41 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  br label %125

43:                                               ; preds = %26, %3
  %44 = call i32 @AR_KEYTABLE(i32 0)
  %45 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %46 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %51 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AR_KEYTABLE(i32 128)
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %57 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %58 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AR_KEYTABLE_0, align 4
  %61 = sub nsw i32 %59, %60
  %62 = ashr i32 %61, 2
  %63 = and i32 %62, 7
  %64 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %65 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AR_KEYTABLE_0, align 4
  %68 = sub nsw i32 %66, %67
  %69 = ashr i32 %68, 5
  %70 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %71 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %69, i32 %72)
  store i8* null, i8** %9, align 8
  br label %124

74:                                               ; preds = %49, %43
  %75 = call i32 @AR_RATE_DURATION(i32 0)
  %76 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %77 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %82 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AR_RATE_DURATION(i32 32)
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %88 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %89 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AR_RATE_DURATION_0, align 4
  %92 = sub nsw i32 %90, %91
  %93 = ashr i32 %92, 2
  %94 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %95 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %96)
  store i8* null, i8** %9, align 8
  br label %123

98:                                               ; preds = %80, %74
  %99 = load i32, i32* @AR_PHY_BASE, align 4
  %100 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %101 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %106 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %107 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AR_PHY_BASE, align 4
  %110 = sub nsw i32 %108, %109
  %111 = ashr i32 %110, 2
  %112 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %113 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %105, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %114)
  store i8* null, i8** %9, align 8
  br label %122

116:                                              ; preds = %98
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %118 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %119 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %117, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  store i8* null, i8** %9, align 8
  br label %122

122:                                              ; preds = %116, %104
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %55
  br label %125

125:                                              ; preds = %124, %31
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %128 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %129 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %134 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %135 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %127, i8* %133, i32 %136)
  %138 = load i8*, i8** %9, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %202

140:                                              ; preds = %125
  %141 = load i8*, i8** %9, align 8
  store i8* %141, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %11, align 8
  br label %144

144:                                              ; preds = %194, %140
  %145 = load i8*, i8** %11, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %195

148:                                              ; preds = %144
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %11, align 8
  %151 = load i8, i8* %149, align 1
  %152 = sext i8 %151 to i32
  store i32 %152, i32* %13, align 4
  %153 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %154 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %156, 1
  %158 = shl i32 1, %157
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %148
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 44, i32 60
  %166 = trunc i32 %165 to i8
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @putc(i8 signext %166, i32* %167)
  br label %169

169:                                              ; preds = %179, %161
  %170 = load i8*, i8** %11, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  store i32 %172, i32* %13, align 4
  %173 = icmp sgt i32 %172, 32
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i32, i32* %13, align 4
  %176 = trunc i32 %175 to i8
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @putc(i8 signext %176, i32* %177)
  br label %179

179:                                              ; preds = %174
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %11, align 8
  br label %169

182:                                              ; preds = %169
  store i32 1, i32* %12, align 4
  br label %194

183:                                              ; preds = %148
  br label %184

184:                                              ; preds = %190, %183
  %185 = load i8*, i8** %11, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp sgt i32 %187, 32
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  br label %190

190:                                              ; preds = %189
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %11, align 8
  br label %184

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193, %182
  br label %144

195:                                              ; preds = %144
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @putc(i8 signext 62, i32* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %125
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local %struct.dumpreg* @findreg(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @AR_KEYTABLE(i32) #1

declare dso_local i32 @AR_RATE_DURATION(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
