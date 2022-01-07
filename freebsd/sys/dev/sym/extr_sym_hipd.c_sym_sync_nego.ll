; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_sync_nego.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_sync_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i64, i64, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sync msgin\00", align 1
@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i64 0, align 8
@HS_BUSY = common dso_local global i32 0, align 4
@NS_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\0A\00", align 1
@clrack = common dso_local global i32 0, align 4
@M_EXTENDED = common dso_local global i32 0, align 4
@M_X_SYNC_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@M_NOOP = common dso_local global i64 0, align 8
@sdtr_resp = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__*)* @sym_sync_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_sync_nego(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @DEBUG_FLAGS, align 4
  %14 = load i32, i32* @DEBUG_NEGO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @sym_print_msg(%struct.TYPE_20__* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @HS_PRT, align 4
  %25 = call i64 @INB(i32 %24)
  %26 = load i64, i64* @HS_NEGOTIATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* @HS_PRT, align 4
  %30 = load i32, i32* @HS_BUSY, align 4
  %31 = call i32 @OUTB(i32 %29, i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NS_SYNC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %218

43:                                               ; preds = %36, %28
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %23
  store i64 0, i64* %7, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %44
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  store i64 1, i64* %7, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  store i64 1, i64* %7, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %78, %70
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  store i64 1, i64* %7, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %103, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  store i64 1, i64* %7, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %110, %102
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %86
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @sym_getsync(%struct.TYPE_19__* %122, i32 0, i64 %123, i64* %11, i64* %10)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %218

127:                                              ; preds = %121, %118
  %128 = load i32, i32* @DEBUG_FLAGS, align 4
  %129 = load i32, i32* @DEBUG_NEGO, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = call i32 @PRINT_ADDR(%struct.TYPE_20__* %133)
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %218

148:                                              ; preds = %144
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @sym_setsync(%struct.TYPE_19__* %149, %struct.TYPE_20__* %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = load i32, i32* @clrack, align 4
  %158 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %156, i32 %157)
  %159 = call i32 @OUTL_DSP(i32 %158)
  br label %226

160:                                              ; preds = %141
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @sym_setsync(%struct.TYPE_19__* %161, %struct.TYPE_20__* %162, i64 %163, i64 %164, i64 %165, i64 %166)
  %168 = load i32, i32* @M_EXTENDED, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 3, i32* %176, align 4
  %177 = load i32, i32* @M_X_SYNC_REQ, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %177, i32* %181, align 4
  %182 = load i64, i64* %9, align 8
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  store i32 %183, i32* %187, align 4
  %188 = load i64, i64* %8, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  store i32 %189, i32* %193, align 4
  %194 = load i64, i64* @NS_SYNC, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load i32, i32* @DEBUG_FLAGS, align 4
  %198 = load i32, i32* @DEBUG_NEGO, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %160
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = bitcast i32* %205 to i64*
  %207 = call i32 @sym_print_msg(%struct.TYPE_20__* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %206)
  br label %208

208:                                              ; preds = %201, %160
  %209 = load i64, i64* @M_NOOP, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  store i64 %209, i64* %213, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %215 = load i32, i32* @sdtr_resp, align 4
  %216 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %214, i32 %215)
  %217 = call i32 @OUTL_DSP(i32 %216)
  br label %226

218:                                              ; preds = %147, %126, %42
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %221 = call i32 @sym_setsync(%struct.TYPE_19__* %219, %struct.TYPE_20__* %220, i64 0, i64 0, i64 0, i64 0)
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %223 = load i32, i32* @msg_bad, align 4
  %224 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %222, i32 %223)
  %225 = call i32 @OUTL_DSP(i32 %224)
  br label %226

226:                                              ; preds = %218, %208, %148
  ret void
}

declare dso_local i32 @sym_print_msg(%struct.TYPE_20__*, i8*, i64*) #1

declare dso_local i64 @INB(i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i64 @sym_getsync(%struct.TYPE_19__*, i32, i64, i64*, i64*) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_20__*) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @sym_setsync(%struct.TYPE_19__*, %struct.TYPE_20__*, i64, i64, i64, i64) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
