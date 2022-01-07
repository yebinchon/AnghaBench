; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.mbuf = type { i32 }
%struct.pf_pdesc = type { i64, i64, i64, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.pf_rule = type { i64, i32, i64, i64, i64, i64, i32, i64, i64, i64, i32*, i64, i64, i64, i64, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.pf_rule* }
%struct.pf_ruleset = type { i32 }
%struct.pf_anchor_stackframe = type { i32 }

@PF_ANCHOR_STACKSIZE = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PF_RULESET_FILTER = common dso_local global i64 0, align 8
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@PF_SKIP_SRC_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@PFRES_MATCH = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i64 0, align 8
@PF_DROP = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_rule**, i32, %struct.pfi_kif*, %struct.mbuf*, i8*, %struct.pf_pdesc*, %struct.pf_rule**, %struct.pf_ruleset**)* @pf_test_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_fragment(%struct.pf_rule** %0, i32 %1, %struct.pfi_kif* %2, %struct.mbuf* %3, i8* %4, %struct.pf_pdesc* %5, %struct.pf_rule** %6, %struct.pf_ruleset** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_rule**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfi_kif*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pf_pdesc*, align 8
  %16 = alloca %struct.pf_rule**, align 8
  %17 = alloca %struct.pf_ruleset**, align 8
  %18 = alloca %struct.pf_rule*, align 8
  %19 = alloca %struct.pf_rule*, align 8
  %20 = alloca %struct.pf_ruleset*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.pf_rule** %0, %struct.pf_rule*** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %12, align 8
  store %struct.mbuf* %3, %struct.mbuf** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.pf_pdesc* %5, %struct.pf_pdesc** %15, align 8
  store %struct.pf_rule** %6, %struct.pf_rule*** %16, align 8
  store %struct.pf_ruleset** %7, %struct.pf_ruleset*** %17, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %19, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %20, align 8
  %29 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %30 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %21, align 8
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %32 = load i32, i32* @PF_ANCHOR_STACKSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %26, align 8
  %35 = alloca %struct.pf_anchor_stackframe, i64 %33, align 16
  store i64 %33, i64* %27, align 8
  %36 = call i32 (...) @PF_RULES_RASSERT()
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pf_main_ruleset, i32 0, i32 0), align 8
  %38 = load i64, i64* @PF_RULESET_FILTER, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.pf_rule* @TAILQ_FIRST(i32 %42)
  store %struct.pf_rule* %43, %struct.pf_rule** %18, align 8
  br label %44

44:                                               ; preds = %388, %8
  %45 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %46 = icmp ne %struct.pf_rule* %45, null
  br i1 %46, label %47, label %389

47:                                               ; preds = %44
  %48 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %49 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %48, i32 0, i32 20
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %53 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %56 = call i64 @pfi_kif_match(i32 %54, %struct.pfi_kif* %55)
  %57 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %58 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %47
  %62 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %63 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %62, i32 0, i32 18
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* @PF_SKIP_IFP, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.pf_rule*, %struct.pf_rule** %67, align 8
  store %struct.pf_rule* %68, %struct.pf_rule** %18, align 8
  br label %380

69:                                               ; preds = %47
  %70 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %71 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %76 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %82 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %81, i32 0, i32 18
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i64, i64* @PF_SKIP_DIR, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.pf_rule*, %struct.pf_rule** %86, align 8
  store %struct.pf_rule* %87, %struct.pf_rule** %18, align 8
  br label %379

88:                                               ; preds = %74, %69
  %89 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %90 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %21, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %101 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %100, i32 0, i32 18
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i64, i64* @PF_SKIP_AF, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.pf_rule*, %struct.pf_rule** %105, align 8
  store %struct.pf_rule* %106, %struct.pf_rule** %18, align 8
  br label %378

107:                                              ; preds = %93, %88
  %108 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %109 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %114 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %117 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %122 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %121, i32 0, i32 18
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i64, i64* @PF_SKIP_PROTO, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load %struct.pf_rule*, %struct.pf_rule** %126, align 8
  store %struct.pf_rule* %127, %struct.pf_rule** %18, align 8
  br label %377

128:                                              ; preds = %112, %107
  %129 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %130 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %129, i32 0, i32 17
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %133 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %21, align 8
  %136 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %137 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %136, i32 0, i32 17
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %142 = call i32 @M_GETFIB(%struct.mbuf* %141)
  %143 = call i64 @PF_MISMATCHAW(i32* %131, i32 %134, i64 %135, i32 %139, %struct.pfi_kif* %140, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %128
  %146 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %147 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %146, i32 0, i32 18
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i64, i64* @PF_SKIP_SRC_ADDR, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.pf_rule*, %struct.pf_rule** %151, align 8
  store %struct.pf_rule* %152, %struct.pf_rule** %18, align 8
  br label %376

153:                                              ; preds = %128
  %154 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %155 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %154, i32 0, i32 16
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %158 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %162 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %161, i32 0, i32 16
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %166 = call i32 @M_GETFIB(%struct.mbuf* %165)
  %167 = call i64 @PF_MISMATCHAW(i32* %156, i32 %159, i64 %160, i32 %164, %struct.pfi_kif* null, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %153
  %170 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %171 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %170, i32 0, i32 18
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load %struct.pf_rule*, %struct.pf_rule** %175, align 8
  store %struct.pf_rule* %176, %struct.pf_rule** %18, align 8
  br label %375

177:                                              ; preds = %153
  %178 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %177
  %183 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %184 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %187 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %182
  %191 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %192 = load i32, i32* @entries, align 4
  %193 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %191, i32 %192)
  store %struct.pf_rule* %193, %struct.pf_rule** %18, align 8
  br label %374

194:                                              ; preds = %182, %177
  %195 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %196 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PF_OSFP_ANY, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %202 = load i32, i32* @entries, align 4
  %203 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %201, i32 %202)
  store %struct.pf_rule* %203, %struct.pf_rule** %18, align 8
  br label %373

204:                                              ; preds = %194
  %205 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %206 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @IPPROTO_UDP, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %212 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %211, i32 0, i32 17
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %218 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %217, i32 0, i32 16
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216, %210
  %223 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %224 = load i32, i32* @entries, align 4
  %225 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %223, i32 %224)
  store %struct.pf_rule* %225, %struct.pf_rule** %18, align 8
  br label %372

226:                                              ; preds = %216, %204
  %227 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %228 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IPPROTO_TCP, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %253

232:                                              ; preds = %226
  %233 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %234 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %233, i32 0, i32 17
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %232
  %239 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %240 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %239, i32 0, i32 16
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %246 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %245, i32 0, i32 15
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244, %238, %232
  %250 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %251 = load i32, i32* @entries, align 4
  %252 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %250, i32 %251)
  store %struct.pf_rule* %252, %struct.pf_rule** %18, align 8
  br label %371

253:                                              ; preds = %244, %226
  %254 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %255 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @IPPROTO_ICMP, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %265, label %259

259:                                              ; preds = %253
  %260 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %261 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %279

265:                                              ; preds = %259, %253
  %266 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %267 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %266, i32 0, i32 14
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %272 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %271, i32 0, i32 13
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %270, %265
  %276 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %277 = load i32, i32* @entries, align 4
  %278 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %276, i32 %277)
  store %struct.pf_rule* %278, %struct.pf_rule** %18, align 8
  br label %370

279:                                              ; preds = %270, %259
  %280 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %281 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %280, i32 0, i32 12
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %279
  %285 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %286 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %285, i32 0, i32 12
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %289 = call i32 @pf_match_ieee8021q_pcp(i64 %287, %struct.mbuf* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %284
  %292 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %293 = load i32, i32* @entries, align 4
  %294 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %292, i32 %293)
  store %struct.pf_rule* %294, %struct.pf_rule** %18, align 8
  br label %369

295:                                              ; preds = %284, %279
  %296 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %297 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %295
  %301 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %302 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (...) @arc4random()
  %305 = load i32, i32* @UINT_MAX, align 4
  %306 = sub nsw i32 %305, 1
  %307 = srem i32 %304, %306
  %308 = add nsw i32 %307, 1
  %309 = icmp sle i32 %303, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %300
  %311 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %312 = load i32, i32* @entries, align 4
  %313 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %311, i32 %312)
  store %struct.pf_rule* %313, %struct.pf_rule** %18, align 8
  br label %368

314:                                              ; preds = %300, %295
  %315 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %316 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %315, i32 0, i32 11
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %341

319:                                              ; preds = %314
  %320 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %321 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %322 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %323 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %322, i32 0, i32 3
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %323, align 8
  %325 = icmp ne %struct.TYPE_13__* %324, null
  br i1 %325, label %326, label %332

326:                                              ; preds = %319
  %327 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %328 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %327, i32 0, i32 3
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  br label %333

332:                                              ; preds = %319
  br label %333

333:                                              ; preds = %332, %326
  %334 = phi i32 [ %331, %326 ], [ 0, %332 ]
  %335 = call i32 @pf_match_tag(%struct.mbuf* %320, %struct.pf_rule* %321, i32* %23, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %339 = load i32, i32* @entries, align 4
  %340 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %338, i32 %339)
  store %struct.pf_rule* %340, %struct.pf_rule** %18, align 8
  br label %367

341:                                              ; preds = %333, %314
  %342 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %343 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %342, i32 0, i32 10
  %344 = load i32*, i32** %343, align 8
  %345 = icmp eq i32* %344, null
  br i1 %345, label %346, label %363

346:                                              ; preds = %341
  store i32 1, i32* %25, align 4
  %347 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %348 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  store %struct.pf_rule* %347, %struct.pf_rule** %348, align 8
  %349 = load %struct.pf_rule*, %struct.pf_rule** %19, align 8
  %350 = load %struct.pf_rule**, %struct.pf_rule*** %16, align 8
  store %struct.pf_rule* %349, %struct.pf_rule** %350, align 8
  %351 = load %struct.pf_ruleset*, %struct.pf_ruleset** %20, align 8
  %352 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %17, align 8
  store %struct.pf_ruleset* %351, %struct.pf_ruleset** %352, align 8
  %353 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %354 = load %struct.pf_rule*, %struct.pf_rule** %353, align 8
  %355 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %354, i32 0, i32 9
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %346
  br label %389

359:                                              ; preds = %346
  %360 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %361 = load i32, i32* @entries, align 4
  %362 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %360, i32 %361)
  store %struct.pf_rule* %362, %struct.pf_rule** %18, align 8
  br label %366

363:                                              ; preds = %341
  %364 = load i64, i64* @PF_RULESET_FILTER, align 8
  %365 = call i32 @pf_step_into_anchor(%struct.pf_anchor_stackframe* %35, i32* %24, %struct.pf_ruleset** %20, i64 %364, %struct.pf_rule** %18, %struct.pf_rule** %19, i32* %25)
  br label %366

366:                                              ; preds = %363, %359
  br label %367

367:                                              ; preds = %366, %337
  br label %368

368:                                              ; preds = %367, %310
  br label %369

369:                                              ; preds = %368, %291
  br label %370

370:                                              ; preds = %369, %275
  br label %371

371:                                              ; preds = %370, %249
  br label %372

372:                                              ; preds = %371, %222
  br label %373

373:                                              ; preds = %372, %200
  br label %374

374:                                              ; preds = %373, %190
  br label %375

375:                                              ; preds = %374, %169
  br label %376

376:                                              ; preds = %375, %145
  br label %377

377:                                              ; preds = %376, %120
  br label %378

378:                                              ; preds = %377, %99
  br label %379

379:                                              ; preds = %378, %80
  br label %380

380:                                              ; preds = %379, %61
  %381 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %382 = icmp eq %struct.pf_rule* %381, null
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = load i64, i64* @PF_RULESET_FILTER, align 8
  %385 = call i64 @pf_step_out_of_anchor(%struct.pf_anchor_stackframe* %35, i32* %24, %struct.pf_ruleset** %20, i64 %384, %struct.pf_rule** %18, %struct.pf_rule** %19, i32* %25)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %383
  br label %389

388:                                              ; preds = %383, %380
  br label %44

389:                                              ; preds = %387, %358, %44
  %390 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %391 = load %struct.pf_rule*, %struct.pf_rule** %390, align 8
  store %struct.pf_rule* %391, %struct.pf_rule** %18, align 8
  %392 = load %struct.pf_rule**, %struct.pf_rule*** %16, align 8
  %393 = load %struct.pf_rule*, %struct.pf_rule** %392, align 8
  store %struct.pf_rule* %393, %struct.pf_rule** %19, align 8
  %394 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %17, align 8
  %395 = load %struct.pf_ruleset*, %struct.pf_ruleset** %394, align 8
  store %struct.pf_ruleset* %395, %struct.pf_ruleset** %20, align 8
  %396 = load i32, i32* @PFRES_MATCH, align 4
  %397 = call i32 @REASON_SET(i32* %22, i32 %396)
  %398 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %399 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %398, i32 0, i32 8
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %413

402:                                              ; preds = %389
  %403 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %404 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %405 = load i64, i64* %21, align 8
  %406 = load i32, i32* %11, align 4
  %407 = load i32, i32* %22, align 4
  %408 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %409 = load %struct.pf_rule*, %struct.pf_rule** %19, align 8
  %410 = load %struct.pf_ruleset*, %struct.pf_ruleset** %20, align 8
  %411 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %412 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %403, %struct.mbuf* %404, i64 %405, i32 %406, i32 %407, %struct.pf_rule* %408, %struct.pf_rule* %409, %struct.pf_ruleset* %410, %struct.pf_pdesc* %411, i32 1)
  br label %413

413:                                              ; preds = %402, %389
  %414 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %415 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %414, i32 0, i32 7
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @PF_PASS, align 8
  %418 = icmp ne i64 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %413
  %420 = load i32, i32* @PF_DROP, align 4
  store i32 %420, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %437

421:                                              ; preds = %413
  %422 = load i32, i32* %23, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %434

424:                                              ; preds = %421
  %425 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %426 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %427 = load i32, i32* %23, align 4
  %428 = call i64 @pf_tag_packet(%struct.mbuf* %425, %struct.pf_pdesc* %426, i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %424
  %431 = load i32, i32* @PFRES_MEMORY, align 4
  %432 = call i32 @REASON_SET(i32* %22, i32 %431)
  %433 = load i32, i32* @PF_DROP, align 4
  store i32 %433, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %437

434:                                              ; preds = %424, %421
  %435 = load i64, i64* @PF_PASS, align 8
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %437

437:                                              ; preds = %434, %430, %419
  %438 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %438)
  %439 = load i32, i32* %9, align 4
  ret i32 %439
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PF_RULES_RASSERT(...) #2

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #2

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #2

declare dso_local i64 @PF_MISMATCHAW(i32*, i32, i64, i32, %struct.pfi_kif*, i32) #2

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #2

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #2

declare dso_local i32 @pf_match_ieee8021q_pcp(i64, %struct.mbuf*) #2

declare dso_local i32 @arc4random(...) #2

declare dso_local i32 @pf_match_tag(%struct.mbuf*, %struct.pf_rule*, i32*, i32) #2

declare dso_local i32 @pf_step_into_anchor(%struct.pf_anchor_stackframe*, i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, %struct.pf_rule**, i32*) #2

declare dso_local i64 @pf_step_out_of_anchor(%struct.pf_anchor_stackframe*, i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, %struct.pf_rule**, i32*) #2

declare dso_local i32 @REASON_SET(i32*, i32) #2

declare dso_local i32 @PFLOG_PACKET(%struct.pfi_kif*, %struct.mbuf*, i64, i32, i32, %struct.pf_rule*, %struct.pf_rule*, %struct.pf_ruleset*, %struct.pf_pdesc*, i32) #2

declare dso_local i64 @pf_tag_packet(%struct.mbuf*, %struct.pf_pdesc*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
