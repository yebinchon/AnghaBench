; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.psm_softc* }
%struct.psm_softc = type { i32, %struct.TYPE_2__, %struct.cdev* }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.uio = type { i64 }

@PSM_SMALLBUFSIZE = common dso_local global i32 0, align 4
@PSM_VALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PSM_ASLP = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"psmrea\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @psmread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.psm_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cdev*, %struct.cdev** %5, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.psm_softc*, %struct.psm_softc** %16, align 8
  store %struct.psm_softc* %17, %struct.psm_softc** %8, align 8
  %18 = load i32, i32* @PSM_SMALLBUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PSM_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %215

30:                                               ; preds = %3
  %31 = call i32 (...) @spltty()
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %83, %30
  %33 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %34 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  %39 = load %struct.cdev*, %struct.cdev** %5, align 8
  %40 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %41 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %40, i32 0, i32 2
  %42 = load %struct.cdev*, %struct.cdev** %41, align 8
  %43 = icmp ne %struct.cdev* %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @splx(i32 %45)
  %47 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %215

48:                                               ; preds = %38
  %49 = load i32, i32* @PSM_ASLP, align 4
  %50 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %51 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %55 = load i32, i32* @PZERO, align 4
  %56 = load i32, i32* @PCATCH, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @tsleep(%struct.psm_softc* %54, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @PSM_ASLP, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %62 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %48
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @splx(i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %215

71:                                               ; preds = %48
  %72 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %73 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PSM_VALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @splx(i32 %79)
  %81 = load i32, i32* @EIO, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %215

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  br label %32

84:                                               ; preds = %32
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @splx(i32 %85)
  br label %87

87:                                               ; preds = %212, %84
  %88 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %89 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.uio*, %struct.uio** %6, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i1 [ false, %87 ], [ %97, %93 ]
  br i1 %99, label %100, label %213

100:                                              ; preds = %98
  %101 = call i32 (...) @spltty()
  store i32 %101, i32* %12, align 4
  %102 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %103 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.uio*, %struct.uio** %6, align 8
  %107 = getelementptr inbounds %struct.uio, %struct.uio* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @imin(i64 %105, i64 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nuw i64 4, %19
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = mul nuw i64 4, %19
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %100
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %121 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = sub i64 8, %124
  %126 = icmp ugt i64 %119, %125
  br i1 %126, label %127, label %170

127:                                              ; preds = %117
  %128 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %129 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %133 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = getelementptr inbounds i32, i32* %21, i64 0
  %139 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %140 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = sub i64 8, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @bcopy(i32* %137, i32* %138, i32 %145)
  %147 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %148 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %153 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sub i64 8, %156
  %158 = getelementptr inbounds i32, i32* %21, i64 %157
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %162 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = sub i64 8, %165
  %167 = sub i64 %160, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @bcopy(i32* %151, i32* %158, i32 %168)
  br label %184

170:                                              ; preds = %117
  %171 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %172 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %176 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = getelementptr inbounds i32, i32* %21, i64 0
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @bcopy(i32* %180, i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %170, %127
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %188 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %190, %186
  store i64 %191, i64* %189, align 8
  %192 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %193 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = urem i64 %198, 8
  %200 = trunc i64 %199 to i32
  %201 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %202 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @splx(i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.uio*, %struct.uio** %6, align 8
  %208 = call i32 @uiomove(i32* %21, i32 %206, %struct.uio* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %184
  br label %213

212:                                              ; preds = %184
  br label %87

213:                                              ; preds = %211, %98
  %214 = load i32, i32* %11, align 4
  store i32 %214, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %215

215:                                              ; preds = %213, %78, %67, %44, %28
  %216 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spltty(...) #2

declare dso_local i32 @splx(i32) #2

declare dso_local i32 @tsleep(%struct.psm_softc*, i32, i8*, i32) #2

declare dso_local i32 @imin(i64, i64) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
