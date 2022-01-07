; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_init_800.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_init_800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_5__*, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_6__*, i8* }

@board_opt_dflt = common dso_local global i32 0, align 4
@B_SIGMA_800 = common dso_local global i32 0, align 4
@dmamask = common dso_local global i32* null, align 8
@irqmask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"800\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/800\00", align 1
@NCHAN = common dso_local global i32 0, align 4
@T_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_init_800(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 14
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @board_opt_dflt, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @B_SIGMA_800, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** @dmamask, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @irqmask, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %39, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 11
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %6
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strcat(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %6
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %124, %67
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %127

71:                                               ; preds = %68
  %72 = load i64, i64* %9, align 8
  %73 = call i8* @CS0(i64 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 0
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i8* %73, i8** %81, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i8* @CS1A(i64 %82)
  %84 = call i64 @cx_probe_chip(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load i64, i64* %9, align 8
  %88 = call i8* @CS1A(i64 %87)
  br label %92

89:                                               ; preds = %71
  %90 = load i64, i64* %9, align 8
  %91 = call i8* @CS1(i64 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i8* [ %88, %86 ], [ %91, %89 ]
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  store i8* %93, i8** %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 16
  %104 = call i8* @CS0(i64 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  store i8* %104, i8** %112, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, 16
  %115 = call i8* @CS1(i64 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 12
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  store i8* %115, i8** %123, align 8
  br label %124

124:                                              ; preds = %92
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %68

127:                                              ; preds = %68
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %13, align 8
  br label %131

131:                                              ; preds = %171, %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* @NCHAN, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = icmp ult %struct.TYPE_5__* %132, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %131
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** %143, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = ptrtoint %struct.TYPE_5__* %144 to i64
  %149 = ptrtoint %struct.TYPE_5__* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 40
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  store i64 33000000, i64* %156, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 8
  br i1 %160, label %164, label %161

161:                                              ; preds = %140
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %140
  br label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @T_NONE, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = phi i32 [ 130, %164 ], [ %166, %165 ]
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 1
  store %struct.TYPE_5__* %173, %struct.TYPE_5__** %13, align 8
  br label %131

174:                                              ; preds = %131
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  store %struct.TYPE_5__* %183, %struct.TYPE_5__** %13, align 8
  br label %184

184:                                              ; preds = %213, %174
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load i32, i32* @NCHAN, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = icmp ult %struct.TYPE_5__* %185, %191
  br i1 %192, label %193, label %216

193:                                              ; preds = %184
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %212 [
    i32 135, label %197
    i32 131, label %202
    i32 130, label %202
    i32 129, label %202
    i32 128, label %202
    i32 134, label %207
    i32 132, label %207
    i32 133, label %207
  ]

197:                                              ; preds = %193
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  br label %212

202:                                              ; preds = %193, %193, %193, %193
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  br label %212

207:                                              ; preds = %193, %193, %193
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %193, %207, %202, %197
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 1
  store %struct.TYPE_5__* %215, %struct.TYPE_5__** %13, align 8
  br label %184

216:                                              ; preds = %184
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = call i32 @cx_reinit_board(%struct.TYPE_6__* %217)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i8* @CS0(i64) #1

declare dso_local i64 @cx_probe_chip(i8*) #1

declare dso_local i8* @CS1A(i64) #1

declare dso_local i8* @CS1(i64) #1

declare dso_local i32 @cx_reinit_board(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
