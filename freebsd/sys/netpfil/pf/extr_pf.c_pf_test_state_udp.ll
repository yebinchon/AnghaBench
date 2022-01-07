; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_state_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_state_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i32, %struct.pf_state_key**, i32, i32, %struct.pf_state_peer, %struct.pf_state_peer }
%struct.pf_state_key = type { i64*, i32* }
%struct.pf_state_peer = type { i64 }
%struct.pfi_kif = type { i32 }
%struct.mbuf = type { i32 }
%struct.pf_pdesc = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.udphdr* }
%struct.udphdr = type { i64, i64, i32 }
%struct.pf_state_key_cmp = type { i64*, i32, i32*, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@PFUDPS_SINGLE = common dso_local global i64 0, align 8
@PFUDPS_MULTIPLE = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i32 0, align 4
@PFTM_UDP_MULTIPLE = common dso_local global i32 0, align 4
@PFTM_UDP_SINGLE = common dso_local global i32 0, align 4
@PF_SK_WIRE = common dso_local global i64 0, align 8
@PF_SK_STACK = common dso_local global i64 0, align 8
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**, i32, %struct.pfi_kif*, %struct.mbuf*, i32, i8*, %struct.pf_pdesc*)* @pf_test_state_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_state_udp(%struct.pf_state** %0, i32 %1, %struct.pfi_kif* %2, %struct.mbuf* %3, i32 %4, i8* %5, %struct.pf_pdesc* %6) #0 {
  %8 = alloca %struct.pf_state**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfi_kif*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pf_pdesc*, align 8
  %15 = alloca %struct.pf_state_peer*, align 8
  %16 = alloca %struct.pf_state_peer*, align 8
  %17 = alloca %struct.pf_state_key_cmp, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %10, align 8
  store %struct.mbuf* %3, %struct.mbuf** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.pf_pdesc* %6, %struct.pf_pdesc** %14, align 8
  %20 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %21 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  store %struct.udphdr* %23, %struct.udphdr** %18, align 8
  %24 = call i32 @bzero(%struct.pf_state_key_cmp* %17, i32 32)
  %25 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %26 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @IPPROTO_UDP, align 4
  %30 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PF_IN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %39 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PF_ACPY(i32* %37, i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %48 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PF_ACPY(i32* %46, i32 %49, i32 %51)
  %53 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %54 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 %61, i64* %64, align 8
  br label %96

65:                                               ; preds = %7
  %66 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %70 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PF_ACPY(i32* %68, i32 %71, i32 %73)
  %75 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %79 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PF_ACPY(i32* %77, i32 %80, i32 %82)
  %84 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %85 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %91 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %17, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %65, %34
  %97 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %100 = load %struct.pf_state*, %struct.pf_state** %99, align 8
  %101 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %102 = call i32 @STATE_LOOKUP(%struct.pfi_kif* %97, %struct.pf_state_key_cmp* %17, i32 %98, %struct.pf_state* %100, %struct.pf_pdesc* %101)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %105 = load %struct.pf_state*, %struct.pf_state** %104, align 8
  %106 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %111 = load %struct.pf_state*, %struct.pf_state** %110, align 8
  %112 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %111, i32 0, i32 4
  store %struct.pf_state_peer* %112, %struct.pf_state_peer** %15, align 8
  %113 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %114 = load %struct.pf_state*, %struct.pf_state** %113, align 8
  %115 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %114, i32 0, i32 5
  store %struct.pf_state_peer* %115, %struct.pf_state_peer** %16, align 8
  br label %123

116:                                              ; preds = %96
  %117 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %118 = load %struct.pf_state*, %struct.pf_state** %117, align 8
  %119 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %118, i32 0, i32 5
  store %struct.pf_state_peer* %119, %struct.pf_state_peer** %15, align 8
  %120 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %121 = load %struct.pf_state*, %struct.pf_state** %120, align 8
  %122 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %121, i32 0, i32 4
  store %struct.pf_state_peer* %122, %struct.pf_state_peer** %16, align 8
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.pf_state_peer*, %struct.pf_state_peer** %15, align 8
  %125 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PFUDPS_SINGLE, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i64, i64* @PFUDPS_SINGLE, align 8
  %131 = load %struct.pf_state_peer*, %struct.pf_state_peer** %15, align 8
  %132 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.pf_state_peer*, %struct.pf_state_peer** %16, align 8
  %135 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PFUDPS_SINGLE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i64, i64* @PFUDPS_MULTIPLE, align 8
  %141 = load %struct.pf_state_peer*, %struct.pf_state_peer** %16, align 8
  %142 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* @time_uptime, align 4
  %145 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %146 = load %struct.pf_state*, %struct.pf_state** %145, align 8
  %147 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  %148 = load %struct.pf_state_peer*, %struct.pf_state_peer** %15, align 8
  %149 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PFUDPS_MULTIPLE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.pf_state_peer*, %struct.pf_state_peer** %16, align 8
  %155 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PFUDPS_MULTIPLE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* @PFTM_UDP_MULTIPLE, align 4
  %161 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %162 = load %struct.pf_state*, %struct.pf_state** %161, align 8
  %163 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 8
  br label %169

164:                                              ; preds = %153, %143
  %165 = load i32, i32* @PFTM_UDP_SINGLE, align 4
  %166 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %167 = load %struct.pf_state*, %struct.pf_state** %166, align 8
  %168 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %171 = load %struct.pf_state*, %struct.pf_state** %170, align 8
  %172 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %171, i32 0, i32 1
  %173 = load %struct.pf_state_key**, %struct.pf_state_key*** %172, align 8
  %174 = load i64, i64* @PF_SK_WIRE, align 8
  %175 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %173, i64 %174
  %176 = load %struct.pf_state_key*, %struct.pf_state_key** %175, align 8
  %177 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %178 = load %struct.pf_state*, %struct.pf_state** %177, align 8
  %179 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %178, i32 0, i32 1
  %180 = load %struct.pf_state_key**, %struct.pf_state_key*** %179, align 8
  %181 = load i64, i64* @PF_SK_STACK, align 8
  %182 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %180, i64 %181
  %183 = load %struct.pf_state_key*, %struct.pf_state_key** %182, align 8
  %184 = icmp ne %struct.pf_state_key* %176, %183
  br i1 %184, label %185, label %320

185:                                              ; preds = %169
  %186 = load %struct.pf_state**, %struct.pf_state*** %8, align 8
  %187 = load %struct.pf_state*, %struct.pf_state** %186, align 8
  %188 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %187, i32 0, i32 1
  %189 = load %struct.pf_state_key**, %struct.pf_state_key*** %188, align 8
  %190 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %191 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %189, i64 %192
  %194 = load %struct.pf_state_key*, %struct.pf_state_key** %193, align 8
  store %struct.pf_state_key* %194, %struct.pf_state_key** %19, align 8
  %195 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %196 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %199 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %202 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %206 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @PF_ANEQ(i32 %197, i32* %204, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %223, label %210

210:                                              ; preds = %185
  %211 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %212 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %215 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i64, i64* %213, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %220 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %210, %185
  %224 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %225 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %226 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %229 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %228, i32 0, i32 0
  %230 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %231 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %234 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %233, i32 0, i32 2
  %235 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %236 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %239 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %243 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %246 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds i64, i64* %244, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %251 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @pf_change_ap(%struct.mbuf* %224, i32 %227, i64* %229, i32 %232, i32* %234, i32* %241, i64 %249, i32 1, i32 %252)
  br label %254

254:                                              ; preds = %223, %210
  %255 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %256 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %259 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %262 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %266 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @PF_ANEQ(i32 %257, i32* %264, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %283, label %270

270:                                              ; preds = %254
  %271 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %272 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %275 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i64, i64* %273, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %280 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %314

283:                                              ; preds = %270, %254
  %284 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %285 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %286 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %289 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %288, i32 0, i32 1
  %290 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %291 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %294 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %293, i32 0, i32 2
  %295 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %296 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %299 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %303 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %306 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i64, i64* %304, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.pf_pdesc*, %struct.pf_pdesc** %14, align 8
  %311 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @pf_change_ap(%struct.mbuf* %284, i32 %287, i64* %289, i32 %292, i32* %294, i32* %301, i64 %309, i32 1, i32 %312)
  br label %314

314:                                              ; preds = %283, %270
  %315 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %316 = load i32, i32* %12, align 4
  %317 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %318 = ptrtoint %struct.udphdr* %317 to i32
  %319 = call i32 @m_copyback(%struct.mbuf* %315, i32 %316, i32 24, i32 %318)
  br label %320

320:                                              ; preds = %314, %169
  %321 = load i32, i32* @PF_PASS, align 4
  ret i32 %321
}

declare dso_local i32 @bzero(%struct.pf_state_key_cmp*, i32) #1

declare dso_local i32 @PF_ACPY(i32*, i32, i32) #1

declare dso_local i32 @STATE_LOOKUP(%struct.pfi_kif*, %struct.pf_state_key_cmp*, i32, %struct.pf_state*, %struct.pf_pdesc*) #1

declare dso_local i64 @PF_ANEQ(i32, i32*, i32) #1

declare dso_local i32 @pf_change_ap(%struct.mbuf*, i32, i64*, i32, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
