; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_wide_nego.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_wide_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64*, i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wide msgin\00", align 1
@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i64 0, align 8
@HS_BUSY = common dso_local global i64 0, align 8
@NS_WIDE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"wdtr: wide=%d chg=%d.\0A\00", align 1
@M_EXTENDED = common dso_local global i8* null, align 8
@M_X_SYNC_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@NS_SYNC = common dso_local global i64 0, align 8
@sdtr_resp = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@M_X_WIDE_REQ = common dso_local global i32 0, align 4
@M_NOOP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"wide msgout\00", align 1
@wdtr_resp = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*)* @sym_wide_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_wide_nego(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @DEBUG_FLAGS, align 4
  %11 = load i32, i32* @DEBUG_NEGO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = call i32 @sym_print_msg(%struct.TYPE_21__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @HS_PRT, align 4
  %22 = call i64 @INB(i32 %21)
  %23 = load i64, i64* @HS_NEGOTIATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* @HS_PRT, align 4
  %27 = load i64, i64* @HS_BUSY, align 8
  %28 = call i32 @OUTB(i32 %26, i64 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NS_WIDE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %214

40:                                               ; preds = %33, %25
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %20
  store i64 0, i64* %7, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  store i64 1, i64* %7, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  store i64 1, i64* %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* @DEBUG_FLAGS, align 4
  %76 = load i32, i32* @DEBUG_NEGO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = call i32 @PRINT_ADDR(%struct.TYPE_21__* %80)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %164

88:                                               ; preds = %85
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %214

92:                                               ; preds = %88
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @sym_setwide(%struct.TYPE_20__* %93, %struct.TYPE_21__* %94, i64 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %159

103:                                              ; preds = %92
  %104 = load i8*, i8** @M_EXTENDED, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 3, i32* %113, align 4
  %114 = load i32, i32* @M_X_SYNC_REQ, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @DEBUG_FLAGS, align 4
  %138 = load i32, i32* @DEBUG_NEGO, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %103
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = bitcast i32* %145 to i64*
  %147 = call i32 @sym_print_msg(%struct.TYPE_21__* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %146)
  br label %148

148:                                              ; preds = %141, %103
  %149 = load i64, i64* @NS_SYNC, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @HS_PRT, align 4
  %153 = load i64, i64* @HS_NEGOTIATE, align 8
  %154 = call i32 @OUTB(i32 %152, i64 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = load i32, i32* @sdtr_resp, align 4
  %157 = call i32 @SCRIPTB_BA(%struct.TYPE_20__* %155, i32 %156)
  %158 = call i32 @OUTL_DSP(i32 %157)
  br label %219

159:                                              ; preds = %92
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = load i32, i32* @clrack, align 4
  %162 = call i32 @SCRIPTA_BA(%struct.TYPE_20__* %160, i32 %161)
  %163 = call i32 @OUTL_DSP(i32 %162)
  br label %219

164:                                              ; preds = %85
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @sym_setwide(%struct.TYPE_20__* %165, %struct.TYPE_21__* %166, i64 %167)
  %169 = load i8*, i8** @M_EXTENDED, align 8
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 2, i32* %178, align 4
  %179 = load i32, i32* @M_X_WIDE_REQ, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  store i32 %179, i32* %183, align 4
  %184 = load i64, i64* %8, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 %185, i32* %189, align 4
  %190 = load i64, i64* @M_NOOP, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  store i64 %190, i64* %194, align 8
  %195 = load i64, i64* @NS_WIDE, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* @DEBUG_FLAGS, align 4
  %199 = load i32, i32* @DEBUG_NEGO, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %164
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = bitcast i32* %206 to i64*
  %208 = call i32 @sym_print_msg(%struct.TYPE_21__* %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %207)
  br label %209

209:                                              ; preds = %202, %164
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %211 = load i32, i32* @wdtr_resp, align 4
  %212 = call i32 @SCRIPTB_BA(%struct.TYPE_20__* %210, i32 %211)
  %213 = call i32 @OUTL_DSP(i32 %212)
  br label %219

214:                                              ; preds = %91, %39
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %216 = load i32, i32* @msg_bad, align 4
  %217 = call i32 @SCRIPTB_BA(%struct.TYPE_20__* %215, i32 %216)
  %218 = call i32 @OUTL_DSP(i32 %217)
  br label %219

219:                                              ; preds = %214, %209, %159, %148
  ret void
}

declare dso_local i32 @sym_print_msg(%struct.TYPE_21__*, i8*, i64*) #1

declare dso_local i64 @INB(i32) #1

declare dso_local i32 @OUTB(i32, i64) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_21__*) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @sym_setwide(%struct.TYPE_20__*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
