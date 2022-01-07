; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.mbuf = type { i32 }
%struct.pf_pdesc = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32, i64, i64, i8*, i32, i32, i32 }
%struct.pf_rule = type { i64, i32, i64, i64, i64, i64, i32, i64, i64, i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_13__ = type { %struct.pf_rule* }
%struct.TYPE_12__ = type { i32*, i64, i32, i32 }
%struct.TYPE_11__ = type { i32*, i64, i32, i32 }

@pf_main_ruleset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PF_RULESET_SCRUB = common dso_local global i64 0, align 8
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@PF_SKIP_SRC_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_SRC_PORT = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_DST_PORT = common dso_local global i64 0, align 8
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@PF_NOSCRUB = common dso_local global i64 0, align 8
@PF_PASS = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PFRULE_REASSEMBLE_TCP = common dso_local global i32 0, align 4
@PFDESC_TCP_NORM = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4
@TH_URG = common dso_local global i32 0, align 4
@PFRES_NORM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_normalize_tcp(i32 %0, %struct.pfi_kif* %1, %struct.mbuf* %2, i32 %3, i32 %4, i8* %5, %struct.pf_pdesc* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfi_kif*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pf_pdesc*, align 8
  %16 = alloca %struct.pf_rule*, align 8
  %17 = alloca %struct.pf_rule*, align 8
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.pfi_kif* %1, %struct.pfi_kif** %10, align 8
  store %struct.mbuf* %2, %struct.mbuf** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.pf_pdesc* %6, %struct.pf_pdesc** %15, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %17, align 8
  %25 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %26 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.tcphdr*, %struct.tcphdr** %27, align 8
  store %struct.tcphdr* %28, %struct.tcphdr** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %30 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %22, align 8
  %32 = call i32 (...) @PF_RULES_RASSERT()
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pf_main_ruleset, i32 0, i32 0), align 8
  %34 = load i64, i64* @PF_RULESET_SCRUB, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.pf_rule* @TAILQ_FIRST(i32 %38)
  store %struct.pf_rule* %39, %struct.pf_rule** %16, align 8
  br label %40

40:                                               ; preds = %276, %7
  %41 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %42 = icmp ne %struct.pf_rule* %41, null
  br i1 %42, label %43, label %277

43:                                               ; preds = %40
  %44 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %45 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %49 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %52 = call i64 @pfi_kif_match(i32 %50, %struct.pfi_kif* %51)
  %53 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %54 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %43
  %58 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %59 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %58, i32 0, i32 11
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load i64, i64* @PF_SKIP_IFP, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.pf_rule*, %struct.pf_rule** %63, align 8
  store %struct.pf_rule* %64, %struct.pf_rule** %16, align 8
  br label %276

65:                                               ; preds = %43
  %66 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %67 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %72 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %78 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %77, i32 0, i32 11
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i64, i64* @PF_SKIP_DIR, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.pf_rule*, %struct.pf_rule** %82, align 8
  store %struct.pf_rule* %83, %struct.pf_rule** %16, align 8
  br label %275

84:                                               ; preds = %70, %65
  %85 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %86 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %91 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %22, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %97 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %96, i32 0, i32 11
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i64, i64* @PF_SKIP_AF, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.pf_rule*, %struct.pf_rule** %101, align 8
  store %struct.pf_rule* %102, %struct.pf_rule** %16, align 8
  br label %274

103:                                              ; preds = %89, %84
  %104 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %105 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %110 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %113 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %118 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %117, i32 0, i32 11
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load i64, i64* @PF_SKIP_PROTO, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.pf_rule*, %struct.pf_rule** %122, align 8
  store %struct.pf_rule* %123, %struct.pf_rule** %16, align 8
  br label %273

124:                                              ; preds = %108, %103
  %125 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %126 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %125, i32 0, i32 13
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %129 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %22, align 8
  %132 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %133 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %132, i32 0, i32 13
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %137 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %138 = call i32 @M_GETFIB(%struct.mbuf* %137)
  %139 = call i64 @PF_MISMATCHAW(i32* %127, i32 %130, i64 %131, i32 %135, %struct.pfi_kif* %136, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %124
  %142 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %143 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %142, i32 0, i32 11
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i64, i64* @PF_SKIP_SRC_ADDR, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.pf_rule*, %struct.pf_rule** %147, align 8
  store %struct.pf_rule* %148, %struct.pf_rule** %16, align 8
  br label %272

149:                                              ; preds = %124
  %150 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %151 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %150, i32 0, i32 13
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %149
  %156 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %157 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %161 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %167 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %166, i32 0, i32 13
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %173 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pf_match_port(i64 %159, i32 %165, i32 %171, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %155
  %178 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 11
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load i64, i64* @PF_SKIP_SRC_PORT, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.pf_rule*, %struct.pf_rule** %183, align 8
  store %struct.pf_rule* %184, %struct.pf_rule** %16, align 8
  br label %271

185:                                              ; preds = %155, %149
  %186 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %187 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %186, i32 0, i32 12
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %190 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i64, i64* %22, align 8
  %193 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %194 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %193, i32 0, i32 12
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %198 = call i32 @M_GETFIB(%struct.mbuf* %197)
  %199 = call i64 @PF_MISMATCHAW(i32* %188, i32 %191, i64 %192, i32 %196, %struct.pfi_kif* null, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %185
  %202 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %203 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %202, i32 0, i32 11
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load %struct.pf_rule*, %struct.pf_rule** %207, align 8
  store %struct.pf_rule* %208, %struct.pf_rule** %16, align 8
  br label %270

209:                                              ; preds = %185
  %210 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %211 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %210, i32 0, i32 12
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %245

215:                                              ; preds = %209
  %216 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %217 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %216, i32 0, i32 12
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %221 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %220, i32 0, i32 12
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %227 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %226, i32 0, i32 12
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %233 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @pf_match_port(i64 %219, i32 %225, i32 %231, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %215
  %238 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %239 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %238, i32 0, i32 11
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load %struct.pf_rule*, %struct.pf_rule** %243, align 8
  store %struct.pf_rule* %244, %struct.pf_rule** %16, align 8
  br label %269

245:                                              ; preds = %215, %209
  %246 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %247 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @PF_OSFP_ANY, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %245
  %252 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %253 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %256 = call i32 @pf_osfp_fingerprint(%struct.pf_pdesc* %252, %struct.mbuf* %253, i32 %254, %struct.tcphdr* %255)
  %257 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %258 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @pf_osfp_match(i32 %256, i64 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %251
  %263 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %264 = load i32, i32* @entries, align 4
  %265 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %263, i32 %264)
  store %struct.pf_rule* %265, %struct.pf_rule** %16, align 8
  br label %268

266:                                              ; preds = %251, %245
  %267 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  store %struct.pf_rule* %267, %struct.pf_rule** %17, align 8
  br label %277

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %237
  br label %270

270:                                              ; preds = %269, %201
  br label %271

271:                                              ; preds = %270, %177
  br label %272

272:                                              ; preds = %271, %141
  br label %273

273:                                              ; preds = %272, %116
  br label %274

274:                                              ; preds = %273, %95
  br label %275

275:                                              ; preds = %274, %76
  br label %276

276:                                              ; preds = %275, %57
  br label %40

277:                                              ; preds = %266, %40
  %278 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %279 = icmp eq %struct.pf_rule* %278, null
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %282 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @PF_NOSCRUB, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280, %277
  %287 = load i32, i32* @PF_PASS, align 4
  store i32 %287, i32* %8, align 4
  br label %495

288:                                              ; preds = %280
  %289 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %290 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %289, i32 0, i32 10
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* @PF_OUT, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %291, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  %300 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %301 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %304 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %303, i32 0, i32 9
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @PF_OUT, align 4
  %308 = icmp eq i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %305, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %302
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %311, align 4
  br label %316

316:                                              ; preds = %288
  %317 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %318 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @PFRULE_REASSEMBLE_TCP, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @PFDESC_TCP_NORM, align 4
  %325 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %326 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %316
  %330 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  store i32 %332, i32* %21, align 4
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* @TH_SYN, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %329
  %338 = load i32, i32* %21, align 4
  %339 = load i32, i32* @TH_RST, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  br label %474

343:                                              ; preds = %337
  %344 = load i32, i32* %21, align 4
  %345 = load i32, i32* @TH_FIN, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  br label %474

349:                                              ; preds = %343
  br label %359

350:                                              ; preds = %329
  %351 = load i32, i32* %21, align 4
  %352 = load i32, i32* @TH_ACK, align 4
  %353 = load i32, i32* @TH_RST, align 4
  %354 = or i32 %352, %353
  %355 = and i32 %351, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %350
  br label %474

358:                                              ; preds = %350
  br label %359

359:                                              ; preds = %358, %349
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* @TH_ACK, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %381, label %364

364:                                              ; preds = %359
  %365 = load i32, i32* %21, align 4
  %366 = load i32, i32* @TH_FIN, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %379, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* %21, align 4
  %371 = load i32, i32* @TH_PUSH, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  %375 = load i32, i32* %21, align 4
  %376 = load i32, i32* @TH_URG, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374, %369, %364
  br label %474

380:                                              ; preds = %374
  br label %381

381:                                              ; preds = %380, %359
  %382 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = icmp ult i64 %385, 12
  br i1 %386, label %387, label %388

387:                                              ; preds = %381
  br label %474

388:                                              ; preds = %381
  %389 = load i32, i32* %21, align 4
  %390 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %391 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %389, %392
  br i1 %393, label %399, label %394

394:                                              ; preds = %388
  %395 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %396 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %424

399:                                              ; preds = %394, %388
  %400 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %401 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %400, i32 0, i32 5
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  %403 = bitcast i32* %402 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %23, align 8
  %405 = load i32, i32* %21, align 4
  %406 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %407 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  %408 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %409 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %408, i32 0, i32 2
  store i64 0, i64* %409, align 8
  %410 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 5
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = bitcast i32* %412 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %24, align 8
  %415 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %416 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %417 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %416, i32 0, i32 4
  %418 = load i8*, i8** %417, align 8
  %419 = load i64, i64* %23, align 8
  %420 = load i64, i64* %24, align 8
  %421 = call i8* @pf_proto_cksum_fixup(%struct.mbuf* %415, i8* %418, i64 %419, i64 %420, i32 0)
  %422 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %423 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %422, i32 0, i32 4
  store i8* %421, i8** %423, align 8
  store i32 1, i32* %19, align 4
  br label %424

424:                                              ; preds = %399, %394
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* @TH_URG, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %447, label %429

429:                                              ; preds = %424
  %430 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %431 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %430, i32 0, i32 3
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %429
  %435 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %436 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %437 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %436, i32 0, i32 4
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %440 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %439, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = call i8* @pf_proto_cksum_fixup(%struct.mbuf* %435, i8* %438, i64 %441, i64 0, i32 0)
  %443 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %444 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %443, i32 0, i32 4
  store i8* %442, i8** %444, align 8
  %445 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %446 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %445, i32 0, i32 3
  store i64 0, i64* %446, align 8
  store i32 1, i32* %19, align 4
  br label %447

447:                                              ; preds = %434, %429, %424
  %448 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %449 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %448, i32 0, i32 8
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %447
  %453 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %454 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %455 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %456 = load i32, i32* %13, align 4
  %457 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %458 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = call i64 @pf_normalize_tcpopt(%struct.pf_rule* %453, %struct.mbuf* %454, %struct.tcphdr* %455, i32 %456, i64 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %452
  store i32 1, i32* %19, align 4
  br label %463

463:                                              ; preds = %462, %452, %447
  %464 = load i32, i32* %19, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %463
  %467 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %468 = load i32, i32* %13, align 4
  %469 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %470 = ptrtoint %struct.tcphdr* %469 to i32
  %471 = call i32 @m_copyback(%struct.mbuf* %467, i32 %468, i32 48, i32 %470)
  br label %472

472:                                              ; preds = %466, %463
  %473 = load i32, i32* @PF_PASS, align 4
  store i32 %473, i32* %8, align 4
  br label %495

474:                                              ; preds = %387, %379, %357, %348, %342
  %475 = load i32, i32* @PFRES_NORM, align 4
  %476 = call i32 @REASON_SET(i32* %20, i32 %475)
  %477 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %478 = icmp ne %struct.pf_rule* %477, null
  br i1 %478, label %479, label %493

479:                                              ; preds = %474
  %480 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %481 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %480, i32 0, i32 7
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %479
  %485 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %486 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %487 = load i32, i32* @AF_INET, align 4
  %488 = load i32, i32* %9, align 4
  %489 = load i32, i32* %20, align 4
  %490 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %491 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %492 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %485, %struct.mbuf* %486, i32 %487, i32 %488, i32 %489, %struct.pf_rule* %490, i32* null, i32* null, %struct.pf_pdesc* %491, i32 1)
  br label %493

493:                                              ; preds = %484, %479, %474
  %494 = load i32, i32* @PF_DROP, align 4
  store i32 %494, i32* %8, align 4
  br label %495

495:                                              ; preds = %493, %472, %286
  %496 = load i32, i32* %8, align 4
  ret i32 %496
}

declare dso_local i32 @PF_RULES_RASSERT(...) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #1

declare dso_local i64 @PF_MISMATCHAW(i32*, i32, i64, i32, %struct.pfi_kif*, i32) #1

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #1

declare dso_local i32 @pf_match_port(i64, i32, i32, i32) #1

declare dso_local i32 @pf_osfp_match(i32, i64) #1

declare dso_local i32 @pf_osfp_fingerprint(%struct.pf_pdesc*, %struct.mbuf*, i32, %struct.tcphdr*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i8* @pf_proto_cksum_fixup(%struct.mbuf*, i8*, i64, i64, i32) #1

declare dso_local i64 @pf_normalize_tcpopt(%struct.pf_rule*, %struct.mbuf*, %struct.tcphdr*, i32, i64) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

declare dso_local i32 @PFLOG_PACKET(%struct.pfi_kif*, %struct.mbuf*, i32, i32, i32, %struct.pf_rule*, i32*, i32*, %struct.pf_pdesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
