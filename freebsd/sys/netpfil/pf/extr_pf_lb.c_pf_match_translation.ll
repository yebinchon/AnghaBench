; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_match_translation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_match_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pf_rule = type { i64, i64, i32, i64, i64, i32, i32, i32*, i64, %struct.TYPE_13__*, %struct.pf_rule_addr, i64, i32, i32, %struct.pf_rule_addr, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.pf_rule* }
%struct.pf_rule_addr = type { i32*, i64, i32, %struct.pf_addr_wrap }
%struct.pf_addr_wrap = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.pf_addr_wrap }
%struct.pf_pdesc = type { i64, %struct.TYPE_15__, %struct.TYPE_14__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_addr = type { i32 }
%struct.pf_anchor_stackframe = type { i32 }
%struct.pf_ruleset = type { i32 }

@pf_main_ruleset = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PF_BINAT = common dso_local global i64 0, align 8
@PF_IN = common dso_local global i32 0, align 4
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@PF_SKIP_SRC_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_SRC_PORT = common dso_local global i64 0, align 8
@PF_SKIP_DST_PORT = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@PF_NONAT = common dso_local global i64 0, align 8
@PF_NORDR = common dso_local global i64 0, align 8
@PF_NOBINAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_rule* (%struct.pf_pdesc*, %struct.mbuf*, i32, i32, %struct.pfi_kif*, %struct.pf_addr*, i32, %struct.pf_addr*, i32, i32, %struct.pf_anchor_stackframe*)* @pf_match_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_rule* @pf_match_translation(%struct.pf_pdesc* %0, %struct.mbuf* %1, i32 %2, i32 %3, %struct.pfi_kif* %4, %struct.pf_addr* %5, i32 %6, %struct.pf_addr* %7, i32 %8, i32 %9, %struct.pf_anchor_stackframe* %10) #0 {
  %12 = alloca %struct.pf_rule*, align 8
  %13 = alloca %struct.pf_pdesc*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pfi_kif*, align 8
  %18 = alloca %struct.pf_addr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.pf_addr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pf_anchor_stackframe*, align 8
  %24 = alloca %struct.pf_rule*, align 8
  %25 = alloca %struct.pf_rule*, align 8
  %26 = alloca %struct.pf_ruleset*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.pf_rule_addr*, align 8
  %31 = alloca %struct.pf_rule_addr*, align 8
  %32 = alloca %struct.pf_addr_wrap*, align 8
  store %struct.pf_pdesc* %0, %struct.pf_pdesc** %13, align 8
  store %struct.mbuf* %1, %struct.mbuf** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store %struct.pfi_kif* %4, %struct.pfi_kif** %17, align 8
  store %struct.pf_addr* %5, %struct.pf_addr** %18, align 8
  store i32 %6, i32* %19, align 4
  store %struct.pf_addr* %7, %struct.pf_addr** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.pf_anchor_stackframe* %10, %struct.pf_anchor_stackframe** %23, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %25, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %26, align 8
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @pf_main_ruleset, i32 0, i32 0), align 8
  %34 = load i32, i32* %22, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.pf_rule* @TAILQ_FIRST(i32 %39)
  store %struct.pf_rule* %40, %struct.pf_rule** %24, align 8
  br label %41

41:                                               ; preds = %412, %11
  %42 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %43 = icmp ne %struct.pf_rule* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  %46 = icmp eq %struct.pf_rule* %45, null
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %413

49:                                               ; preds = %47
  store %struct.pf_rule_addr* null, %struct.pf_rule_addr** %30, align 8
  store %struct.pf_rule_addr* null, %struct.pf_rule_addr** %31, align 8
  store %struct.pf_addr_wrap* null, %struct.pf_addr_wrap** %32, align 8
  %50 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %51 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PF_BINAT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @PF_IN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %61 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %60, i32 0, i32 14
  store %struct.pf_rule_addr* %61, %struct.pf_rule_addr** %30, align 8
  %62 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %63 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %69 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %68, i32 0, i32 15
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store %struct.pf_addr_wrap* %72, %struct.pf_addr_wrap** %32, align 8
  br label %73

73:                                               ; preds = %67, %59
  br label %79

74:                                               ; preds = %55, %49
  %75 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %76 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %75, i32 0, i32 10
  store %struct.pf_rule_addr* %76, %struct.pf_rule_addr** %30, align 8
  %77 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %78 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %77, i32 0, i32 14
  store %struct.pf_rule_addr* %78, %struct.pf_rule_addr** %31, align 8
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %81 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %85 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.pfi_kif*, %struct.pfi_kif** %17, align 8
  %88 = call i64 @pfi_kif_match(i32 %86, %struct.pfi_kif* %87)
  %89 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %90 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %79
  %94 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 9
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i64, i64* @PF_SKIP_IFP, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load %struct.pf_rule*, %struct.pf_rule** %99, align 8
  store %struct.pf_rule* %100, %struct.pf_rule** %24, align 8
  br label %405

101:                                              ; preds = %79
  %102 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %103 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %108 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %114 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %113, i32 0, i32 9
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load i64, i64* @PF_SKIP_DIR, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.pf_rule*, %struct.pf_rule** %118, align 8
  store %struct.pf_rule* %119, %struct.pf_rule** %24, align 8
  br label %404

120:                                              ; preds = %106, %101
  %121 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %122 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %121, i32 0, i32 11
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %127 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %130 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %135 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %134, i32 0, i32 9
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i64, i64* @PF_SKIP_AF, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load %struct.pf_rule*, %struct.pf_rule** %139, align 8
  store %struct.pf_rule* %140, %struct.pf_rule** %24, align 8
  br label %403

141:                                              ; preds = %125, %120
  %142 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %143 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %148 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %151 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %156 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %155, i32 0, i32 9
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load i64, i64* @PF_SKIP_PROTO, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.pf_rule*, %struct.pf_rule** %160, align 8
  store %struct.pf_rule* %161, %struct.pf_rule** %24, align 8
  br label %402

162:                                              ; preds = %146, %141
  %163 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %164 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %163, i32 0, i32 3
  %165 = load %struct.pf_addr*, %struct.pf_addr** %18, align 8
  %166 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %167 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %170 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.pfi_kif*, %struct.pfi_kif** %17, align 8
  %173 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %174 = call i32 @M_GETFIB(%struct.mbuf* %173)
  %175 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %164, %struct.pf_addr* %165, i64 %168, i32 %171, %struct.pfi_kif* %172, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %162
  %178 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 9
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %182 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %183 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %182, i32 0, i32 10
  %184 = icmp eq %struct.pf_rule_addr* %181, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i64, i64* @PF_SKIP_SRC_ADDR, align 8
  br label %189

187:                                              ; preds = %177
  %188 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i64 [ %186, %185 ], [ %188, %187 ]
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load %struct.pf_rule*, %struct.pf_rule** %192, align 8
  store %struct.pf_rule* %193, %struct.pf_rule** %24, align 8
  br label %401

194:                                              ; preds = %162
  %195 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %196 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %194
  %200 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %201 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %204 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %209 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @pf_match_port(i64 %202, i32 %207, i32 %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %233, label %216

216:                                              ; preds = %199
  %217 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %218 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %217, i32 0, i32 9
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %30, align 8
  %221 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %222 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %221, i32 0, i32 10
  %223 = icmp eq %struct.pf_rule_addr* %220, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i64, i64* @PF_SKIP_SRC_PORT, align 8
  br label %228

226:                                              ; preds = %216
  %227 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i64 [ %225, %224 ], [ %227, %226 ]
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load %struct.pf_rule*, %struct.pf_rule** %231, align 8
  store %struct.pf_rule* %232, %struct.pf_rule** %24, align 8
  br label %400

233:                                              ; preds = %199, %194
  %234 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %235 = icmp ne %struct.pf_rule_addr* %234, null
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  %237 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %238 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %237, i32 0, i32 3
  %239 = load %struct.pf_addr*, %struct.pf_addr** %20, align 8
  %240 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %241 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %244 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %247 = call i32 @M_GETFIB(%struct.mbuf* %246)
  %248 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %238, %struct.pf_addr* %239, i64 %242, i32 %245, %struct.pfi_kif* null, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %236
  %251 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %252 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %251, i32 0, i32 9
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load %struct.pf_rule*, %struct.pf_rule** %256, align 8
  store %struct.pf_rule* %257, %struct.pf_rule** %24, align 8
  br label %399

258:                                              ; preds = %236, %233
  %259 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %32, align 8
  %260 = icmp ne %struct.pf_addr_wrap* %259, null
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %32, align 8
  %263 = load %struct.pf_addr*, %struct.pf_addr** %20, align 8
  %264 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %265 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %268 = call i32 @M_GETFIB(%struct.mbuf* %267)
  %269 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %262, %struct.pf_addr* %263, i64 %266, i32 0, %struct.pfi_kif* null, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %261
  %272 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %273 = load i32, i32* @entries, align 4
  %274 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %272, i32 %273)
  store %struct.pf_rule* %274, %struct.pf_rule** %24, align 8
  br label %398

275:                                              ; preds = %261, %258
  %276 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %277 = icmp ne %struct.pf_rule_addr* %276, null
  br i1 %277, label %278, label %308

278:                                              ; preds = %275
  %279 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %280 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %308

283:                                              ; preds = %278
  %284 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %285 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %288 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %31, align 8
  %293 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %21, align 4
  %298 = call i32 @pf_match_port(i64 %286, i32 %291, i32 %296, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %308, label %300

300:                                              ; preds = %283
  %301 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %302 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %301, i32 0, i32 9
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %302, align 8
  %304 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = load %struct.pf_rule*, %struct.pf_rule** %306, align 8
  store %struct.pf_rule* %307, %struct.pf_rule** %24, align 8
  br label %397

308:                                              ; preds = %283, %278, %275
  %309 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %310 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %309, i32 0, i32 8
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %335

313:                                              ; preds = %308
  %314 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %315 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %316 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %317 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %316, i32 0, i32 2
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %317, align 8
  %319 = icmp ne %struct.TYPE_14__* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %313
  %321 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %322 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %321, i32 0, i32 2
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  br label %327

326:                                              ; preds = %313
  br label %327

327:                                              ; preds = %326, %320
  %328 = phi i32 [ %325, %320 ], [ 0, %326 ]
  %329 = call i32 @pf_match_tag(%struct.mbuf* %314, %struct.pf_rule* %315, i32* %27, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %333 = load i32, i32* @entries, align 4
  %334 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %332, i32 %333)
  store %struct.pf_rule* %334, %struct.pf_rule** %24, align 8
  br label %396

335:                                              ; preds = %327, %308
  %336 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %337 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @PF_OSFP_ANY, align 8
  %340 = icmp ne i64 %338, %339
  br i1 %340, label %341, label %365

341:                                              ; preds = %335
  %342 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %343 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @IPPROTO_TCP, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %361, label %347

347:                                              ; preds = %341
  %348 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %349 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %350 = load i32, i32* %15, align 4
  %351 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %352 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @pf_osfp_fingerprint(%struct.pf_pdesc* %348, %struct.mbuf* %349, i32 %350, i32 %354)
  %356 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %357 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @pf_osfp_match(i32 %355, i64 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %347, %341
  %362 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %363 = load i32, i32* @entries, align 4
  %364 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %362, i32 %363)
  store %struct.pf_rule* %364, %struct.pf_rule** %24, align 8
  br label %395

365:                                              ; preds = %347, %335
  %366 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %367 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %372 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  store i32 %373, i32* %27, align 4
  br label %374

374:                                              ; preds = %370, %365
  %375 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %376 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 4
  %378 = icmp sge i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %381 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %28, align 4
  br label %383

383:                                              ; preds = %379, %374
  %384 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %385 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %384, i32 0, i32 7
  %386 = load i32*, i32** %385, align 8
  %387 = icmp eq i32* %386, null
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  store %struct.pf_rule* %389, %struct.pf_rule** %25, align 8
  br label %394

390:                                              ; preds = %383
  %391 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %23, align 8
  %392 = load i32, i32* %22, align 4
  %393 = call i32 @pf_step_into_anchor(%struct.pf_anchor_stackframe* %391, i32* %29, %struct.pf_ruleset** %26, i32 %392, %struct.pf_rule** %24, i32* null, i32* null)
  br label %394

394:                                              ; preds = %390, %388
  br label %395

395:                                              ; preds = %394, %361
  br label %396

396:                                              ; preds = %395, %331
  br label %397

397:                                              ; preds = %396, %300
  br label %398

398:                                              ; preds = %397, %271
  br label %399

399:                                              ; preds = %398, %250
  br label %400

400:                                              ; preds = %399, %228
  br label %401

401:                                              ; preds = %400, %189
  br label %402

402:                                              ; preds = %401, %154
  br label %403

403:                                              ; preds = %402, %133
  br label %404

404:                                              ; preds = %403, %112
  br label %405

405:                                              ; preds = %404, %93
  %406 = load %struct.pf_rule*, %struct.pf_rule** %24, align 8
  %407 = icmp eq %struct.pf_rule* %406, null
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %23, align 8
  %410 = load i32, i32* %22, align 4
  %411 = call i32 @pf_step_out_of_anchor(%struct.pf_anchor_stackframe* %409, i32* %29, %struct.pf_ruleset** %26, i32 %410, %struct.pf_rule** %24, i32* null, i32* null)
  br label %412

412:                                              ; preds = %408, %405
  br label %41

413:                                              ; preds = %47
  %414 = load i32, i32* %27, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %413
  %417 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %418 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %419 = load i32, i32* %27, align 4
  %420 = call i64 @pf_tag_packet(%struct.mbuf* %417, %struct.pf_pdesc* %418, i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %416
  store %struct.pf_rule* null, %struct.pf_rule** %12, align 8
  br label %454

423:                                              ; preds = %416, %413
  %424 = load i32, i32* %28, align 4
  %425 = icmp sge i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %423
  %427 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %428 = load i32, i32* %28, align 4
  %429 = call i32 @M_SETFIB(%struct.mbuf* %427, i32 %428)
  br label %430

430:                                              ; preds = %426, %423
  %431 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  %432 = icmp ne %struct.pf_rule* %431, null
  br i1 %432, label %433, label %452

433:                                              ; preds = %430
  %434 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  %435 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @PF_NONAT, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %451, label %439

439:                                              ; preds = %433
  %440 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  %441 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @PF_NORDR, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  %447 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @PF_NOBINAT, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %445, %439, %433
  store %struct.pf_rule* null, %struct.pf_rule** %12, align 8
  br label %454

452:                                              ; preds = %445, %430
  %453 = load %struct.pf_rule*, %struct.pf_rule** %25, align 8
  store %struct.pf_rule* %453, %struct.pf_rule** %12, align 8
  br label %454

454:                                              ; preds = %452, %451, %422
  %455 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  ret %struct.pf_rule* %455
}

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #1

declare dso_local i64 @PF_MISMATCHAW(%struct.pf_addr_wrap*, %struct.pf_addr*, i64, i32, %struct.pfi_kif*, i32) #1

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #1

declare dso_local i32 @pf_match_port(i64, i32, i32, i32) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i32 @pf_match_tag(%struct.mbuf*, %struct.pf_rule*, i32*, i32) #1

declare dso_local i32 @pf_osfp_match(i32, i64) #1

declare dso_local i32 @pf_osfp_fingerprint(%struct.pf_pdesc*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @pf_step_into_anchor(%struct.pf_anchor_stackframe*, i32*, %struct.pf_ruleset**, i32, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i32 @pf_step_out_of_anchor(%struct.pf_anchor_stackframe*, i32*, %struct.pf_ruleset**, i32, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i64 @pf_tag_packet(%struct.mbuf*, %struct.pf_pdesc*, i32) #1

declare dso_local i32 @M_SETFIB(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
