; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_commit_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_commit_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.pf_rule**, %struct.pf_rulequeue* }
%struct.pf_rule = type { i32 }
%struct.pf_rulequeue = type { i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.pf_rulequeue*, %struct.pf_rule** }

@PF_RULESET_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @pf_commit_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_commit_rules(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pf_ruleset*, align 8
  %9 = alloca %struct.pf_rule*, align 8
  %10 = alloca %struct.pf_rule**, align 8
  %11 = alloca %struct.pf_rulequeue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = call i32 (...) @PF_RULES_WASSERT()
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PF_RULESET_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %255

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.pf_ruleset* @pf_find_ruleset(i8* %24)
  store %struct.pf_ruleset* %25, %struct.pf_ruleset** %8, align 8
  %26 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %27 = icmp eq %struct.pf_ruleset* %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %30 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %42 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %40, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39, %28, %23
  %52 = load i32, i32* @EBUSY, align 4
  store i32 %52, i32* %4, align 4
  br label %255

53:                                               ; preds = %39
  %54 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %55 = icmp eq %struct.pf_ruleset* %54, @pf_main_ruleset
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %58 = call i32 @pf_setup_pfsync_matching(%struct.pf_ruleset* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %255

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %66 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %72, align 8
  store %struct.pf_rulequeue* %73, %struct.pf_rulequeue** %11, align 8
  %74 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %75 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %13, align 8
  %83 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %84 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load %struct.pf_rule**, %struct.pf_rule*** %90, align 8
  store %struct.pf_rule** %91, %struct.pf_rule*** %10, align 8
  %92 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %93 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %99, align 8
  %101 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %102 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store %struct.pf_rulequeue* %100, %struct.pf_rulequeue** %108, align 8
  %109 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %110 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load %struct.pf_rule**, %struct.pf_rule*** %116, align 8
  %118 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %119 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store %struct.pf_rule** %117, %struct.pf_rule*** %125, align 8
  %126 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %127 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %136 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i64 %134, i64* %142, align 8
  %143 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %11, align 8
  %144 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %145 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  store %struct.pf_rulequeue* %143, %struct.pf_rulequeue** %151, align 8
  %152 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %153 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %154 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  store %struct.pf_rule** %152, %struct.pf_rule*** %160, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %163 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i64 %161, i64* %169, align 8
  %170 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %171 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %180 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i64 %178, i64* %186, align 8
  %187 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %188 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %194, align 8
  %196 = call i32 @pf_calc_skip_steps(%struct.pf_rulequeue* %195)
  br label %197

197:                                              ; preds = %201, %64
  %198 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %11, align 8
  %199 = call %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue* %198)
  store %struct.pf_rule* %199, %struct.pf_rule** %9, align 8
  %200 = icmp ne %struct.pf_rule* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %11, align 8
  %203 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %204 = call i32 @pf_unlink_rule(%struct.pf_rulequeue* %202, %struct.pf_rule* %203)
  br label %197

205:                                              ; preds = %197
  %206 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %207 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  %214 = load %struct.pf_rule**, %struct.pf_rule*** %213, align 8
  %215 = icmp ne %struct.pf_rule** %214, null
  br i1 %215, label %216, label %228

216:                                              ; preds = %205
  %217 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %218 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %217, i32 0, i32 0
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load %struct.pf_rule**, %struct.pf_rule*** %224, align 8
  %226 = load i32, i32* @M_TEMP, align 4
  %227 = call i32 @free(%struct.pf_rule** %225, i32 %226)
  br label %228

228:                                              ; preds = %216, %205
  %229 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %230 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %229, i32 0, i32 0
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  store %struct.pf_rule** null, %struct.pf_rule*** %236, align 8
  %237 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %238 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %246 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %245, i32 0, i32 0
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  store i64 0, i64* %252, align 8
  %253 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %254 = call i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset* %253)
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %228, %61, %51, %21
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i8*) #1

declare dso_local i32 @pf_setup_pfsync_matching(%struct.pf_ruleset*) #1

declare dso_local i32 @pf_calc_skip_steps(%struct.pf_rulequeue*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue*) #1

declare dso_local i32 @pf_unlink_rule(%struct.pf_rulequeue*, %struct.pf_rule*) #1

declare dso_local i32 @free(%struct.pf_rule**, i32) #1

declare dso_local i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
