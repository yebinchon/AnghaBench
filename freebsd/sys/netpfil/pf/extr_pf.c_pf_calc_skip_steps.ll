; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_calc_skip_steps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_calc_skip_steps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rulequeue = type { i32 }
%struct.pf_rule = type { i64, i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64*, i64, i32 }
%struct.TYPE_3__ = type { i64, i64*, i64, i32 }

@PF_SKIP_COUNT = common dso_local global i32 0, align 4
@PF_SKIP_IFP = common dso_local global i32 0, align 4
@PF_SKIP_DIR = common dso_local global i32 0, align 4
@PF_SKIP_AF = common dso_local global i32 0, align 4
@PF_SKIP_PROTO = common dso_local global i32 0, align 4
@PF_SKIP_SRC_ADDR = common dso_local global i32 0, align 4
@PF_SKIP_SRC_PORT = common dso_local global i32 0, align 4
@PF_SKIP_DST_ADDR = common dso_local global i32 0, align 4
@PF_SKIP_DST_PORT = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_calc_skip_steps(%struct.pf_rulequeue* %0) #0 {
  %2 = alloca %struct.pf_rulequeue*, align 8
  %3 = alloca %struct.pf_rule*, align 8
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pf_rulequeue* %0, %struct.pf_rulequeue** %2, align 8
  %8 = load i32, i32* @PF_SKIP_COUNT, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca %struct.pf_rule*, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %2, align 8
  %13 = call %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue* %12)
  store %struct.pf_rule* %13, %struct.pf_rule** %3, align 8
  %14 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  store %struct.pf_rule* %14, %struct.pf_rule** %4, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %24, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PF_SKIP_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pf_rule*, %struct.pf_rule** %11, i64 %22
  store %struct.pf_rule* %20, %struct.pf_rule** %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %15

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %209, %27
  %29 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %30 = icmp ne %struct.pf_rule* %29, null
  br i1 %30, label %31, label %214

31:                                               ; preds = %28
  %32 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %33 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %36 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %41 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %44 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %31
  %48 = load i32, i32* @PF_SKIP_IFP, align 4
  %49 = call i32 @PF_SET_SKIP_STEPS(i32 %48)
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %52 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %55 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @PF_SKIP_DIR, align 4
  %60 = call i32 @PF_SET_SKIP_STEPS(i32 %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %63 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %66 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @PF_SKIP_AF, align 4
  %71 = call i32 @PF_SET_SKIP_STEPS(i32 %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %74 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %77 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @PF_SKIP_PROTO, align 4
  %82 = call i32 @PF_SET_SKIP_STEPS(i32 %81)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %85 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %89 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %83
  %94 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %98 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = call i64 @pf_addr_wrap_neq(i32* %96, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93, %83
  %103 = load i32, i32* @PF_SKIP_SRC_ADDR, align 4
  %104 = call i32 @PF_SET_SKIP_STEPS(i32 %103)
  br label %105

105:                                              ; preds = %102, %93
  %106 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %107 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %113 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %111, %117
  br i1 %118, label %143, label %119

119:                                              ; preds = %105
  %120 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %121 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %127 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %125, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %119
  %134 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %135 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %139 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %137, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %133, %119, %105
  %144 = load i32, i32* @PF_SKIP_SRC_PORT, align 4
  %145 = call i32 @PF_SET_SKIP_STEPS(i32 %144)
  br label %146

146:                                              ; preds = %143, %133
  %147 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %148 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %152 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %165, label %156

156:                                              ; preds = %146
  %157 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %158 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %161 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = call i64 @pf_addr_wrap_neq(i32* %159, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156, %146
  %166 = load i32, i32* @PF_SKIP_DST_ADDR, align 4
  %167 = call i32 @PF_SET_SKIP_STEPS(i32 %166)
  br label %168

168:                                              ; preds = %165, %156
  %169 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %170 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %176 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %174, %180
  br i1 %181, label %206, label %182

182:                                              ; preds = %168
  %183 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %184 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %190 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %188, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %182
  %197 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %198 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %202 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %200, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %196, %182, %168
  %207 = load i32, i32* @PF_SKIP_DST_PORT, align 4
  %208 = call i32 @PF_SET_SKIP_STEPS(i32 %207)
  br label %209

209:                                              ; preds = %206, %196
  %210 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  store %struct.pf_rule* %210, %struct.pf_rule** %4, align 8
  %211 = load %struct.pf_rule*, %struct.pf_rule** %3, align 8
  %212 = load i32, i32* @entries, align 4
  %213 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %211, i32 %212)
  store %struct.pf_rule* %213, %struct.pf_rule** %3, align 8
  br label %28

214:                                              ; preds = %28
  store i32 0, i32* %7, align 4
  br label %215

215:                                              ; preds = %222, %214
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @PF_SKIP_COUNT, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @PF_SET_SKIP_STEPS(i32 %220)
  br label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %215

225:                                              ; preds = %215
  %226 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %226)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue*) #2

declare dso_local i32 @PF_SET_SKIP_STEPS(i32) #2

declare dso_local i64 @pf_addr_wrap_neq(i32*, i32*) #2

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
