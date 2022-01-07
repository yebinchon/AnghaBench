; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_modinfo_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_modinfo_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_i2c_data = type { i32, i32, i32, i32, i32* }

@CHELSIO_T4_GET_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%02x:  %02x %02x %02x %02x  %02x %02x %02x %02x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  %c%c%c%c %c%c%c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @modinfo_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modinfo_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.t4_i2c_data, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %188, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 96
  br i1 %9, label %10, label %193

10:                                               ; preds = %7
  %11 = call i32 @bzero(%struct.t4_i2c_data* %5, i32 24)
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 1
  store i32 160, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 3
  store i32 8, i32* %17, align 4
  %18 = load i32, i32* @CHELSIO_T4_GET_I2C, align 4
  %19 = call i32 @doit(i32 %18, %struct.t4_i2c_data* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %194

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  %60 = load i32, i32* %59, align 4
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i8, i8, i8, i8, i8, i8, i8, i8, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 signext %26, i8 signext %31, i8 signext %36, i8 signext %41, i8 signext %46, i8 signext %51, i8 signext %56, i8 signext %61, i32 %65)
  %67 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @isprint(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %24
  %74 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  br label %79

78:                                               ; preds = %24
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i32 [ %77, %73 ], [ 46, %78 ]
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @isprint(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 46, %93 ]
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @isprint(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  br label %109

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32 [ %107, %103 ], [ 46, %108 ]
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @isprint(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %118
  %125 = phi i32 [ %122, %118 ], [ 46, %123 ]
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @isprint(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  br label %139

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %133
  %140 = phi i32 [ %137, %133 ], [ 46, %138 ]
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @isprint(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  %152 = load i32, i32* %151, align 4
  br label %154

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153, %148
  %155 = phi i32 [ %152, %148 ], [ 46, %153 ]
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @isprint(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  br label %169

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168, %163
  %170 = phi i32 [ %167, %163 ], [ 46, %168 ]
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @isprint(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %5, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  %182 = load i32, i32* %181, align 4
  br label %184

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183, %178
  %185 = phi i32 [ %182, %178 ], [ 46, %183 ]
  %186 = trunc i32 %185 to i8
  %187 = call i32 (i8*, i8, i8, i8, i8, i8, i8, i8, i8, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 signext %81, i8 signext %96, i8 signext %111, i8 signext %126, i8 signext %141, i8 signext %156, i8 signext %171, i8 signext %186)
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  br label %7

193:                                              ; preds = %7
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %22
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @bzero(%struct.t4_i2c_data*, i32) #1

declare dso_local i32 @doit(i32, %struct.t4_i2c_data*) #1

declare dso_local i32 @printf(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
