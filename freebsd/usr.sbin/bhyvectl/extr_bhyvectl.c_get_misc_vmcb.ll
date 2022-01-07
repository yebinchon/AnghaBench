; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_misc_vmcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_misc_vmcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@get_vmcb_intercept = common dso_local global i64 0, align 8
@get_all = common dso_local global i64 0, align 8
@VMCB_OFF_CR_INTERCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cr_intercept[%d]\090x%08x\0A\00", align 1
@VMCB_OFF_DR_INTERCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dr_intercept[%d]\090x%08x\0A\00", align 1
@VMCB_OFF_EXC_INTERCEPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"exc_intercept[%d]\090x%08x\0A\00", align 1
@VMCB_OFF_INST1_INTERCEPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"inst1_intercept[%d]\090x%08x\0A\00", align 1
@VMCB_OFF_INST2_INTERCEPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"inst2_intercept[%d]\090x%08x\0A\00", align 1
@get_vmcb_tlb_ctrl = common dso_local global i64 0, align 8
@VMCB_OFF_TLB_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"TLB ctrl[%d]\090x%016lx\0A\00", align 1
@get_vmcb_exit_details = common dso_local global i64 0, align 8
@VMCB_OFF_EXITINFO1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"exitinfo1[%d]\090x%016lx\0A\00", align 1
@VMCB_OFF_EXITINFO2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"exitinfo2[%d]\090x%016lx\0A\00", align 1
@VMCB_OFF_EXITINTINFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"exitintinfo[%d]\090x%016lx\0A\00", align 1
@get_vmcb_virq = common dso_local global i64 0, align 8
@VMCB_OFF_VIRQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"v_irq/tpr[%d]\090x%016lx\0A\00", align 1
@get_apic_access_addr = common dso_local global i64 0, align 8
@VMCB_OFF_AVIC_BAR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"AVIC apic_bar[%d]\090x%016lx\0A\00", align 1
@get_virtual_apic_addr = common dso_local global i64 0, align 8
@VMCB_OFF_AVIC_PAGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"AVIC backing page[%d]\090x%016lx\0A\00", align 1
@get_avic_table = common dso_local global i64 0, align 8
@VMCB_OFF_AVIC_LT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"AVIC logical table[%d]\090x%016lx\0A\00", align 1
@VMCB_OFF_AVIC_PT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"AVIC physical table[%d]\090x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32)* @get_misc_vmcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_misc_vmcb(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %72, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @get_vmcb_intercept, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @get_all, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %13, %10
  %17 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VMCB_OFF_CR_INTERCEPT, align 4
  %20 = call i32 @vm_get_vmcb_field(%struct.vmctx* %17, i32 %18, i32 %19, i32 4, i32* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VMCB_OFF_DR_INTERCEPT, align 4
  %31 = call i32 @vm_get_vmcb_field(%struct.vmctx* %28, i32 %29, i32 %30, i32 4, i32* %5)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @VMCB_OFF_EXC_INTERCEPT, align 4
  %42 = call i32 @vm_get_vmcb_field(%struct.vmctx* %39, i32 %40, i32 %41, i32 4, i32* %5)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @VMCB_OFF_INST1_INTERCEPT, align 4
  %53 = call i32 @vm_get_vmcb_field(%struct.vmctx* %50, i32 %51, i32 %52, i32 4, i32* %5)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @VMCB_OFF_INST2_INTERCEPT, align 4
  %64 = call i32 @vm_get_vmcb_field(%struct.vmctx* %61, i32 %62, i32 %63, i32 4, i32* %5)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %13, %2
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @get_vmcb_tlb_ctrl, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @get_all, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78, %75
  %82 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @VMCB_OFF_TLB_CTRL, align 4
  %85 = call i32 @vm_get_vmcb_field(%struct.vmctx* %82, i32 %83, i32 %84, i32 4, i32* %5)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %81
  br label %93

93:                                               ; preds = %92, %78, %72
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %136, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @get_vmcb_exit_details, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @get_all, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %99, %96
  %103 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @VMCB_OFF_EXITINFO1, align 4
  %106 = call i32 @vm_get_vmcb_field(%struct.vmctx* %103, i32 %104, i32 %105, i32 8, i32* %5)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %102
  %114 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @VMCB_OFF_EXITINFO2, align 4
  %117 = call i32 @vm_get_vmcb_field(%struct.vmctx* %114, i32 %115, i32 %116, i32 8, i32* %5)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %113
  %125 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @VMCB_OFF_EXITINTINFO, align 4
  %128 = call i32 @vm_get_vmcb_field(%struct.vmctx* %125, i32 %126, i32 %127, i32 8, i32* %5)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %124
  br label %136

136:                                              ; preds = %135, %99, %93
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %157, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* @get_vmcb_virq, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* @get_all, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142, %139
  %146 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @VMCB_OFF_VIRQ, align 4
  %149 = call i32 @vm_get_vmcb_field(%struct.vmctx* %146, i32 %147, i32 %148, i32 8, i32* %5)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %142, %136
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* @get_apic_access_addr, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* @get_all, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163, %160
  %167 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @VMCB_OFF_AVIC_BAR, align 4
  %170 = call i32 @vm_get_vmcb_field(%struct.vmctx* %167, i32 %168, i32 %169, i32 8, i32* %6)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %166
  br label %178

178:                                              ; preds = %177, %163, %157
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* @get_virtual_apic_addr, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* @get_all, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184, %181
  %188 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @VMCB_OFF_AVIC_PAGE, align 4
  %191 = call i32 @vm_get_vmcb_field(%struct.vmctx* %188, i32 %189, i32 %190, i32 8, i32* %6)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %187
  br label %199

199:                                              ; preds = %198, %184, %178
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %231, label %202

202:                                              ; preds = %199
  %203 = load i64, i64* @get_avic_table, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i64, i64* @get_all, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %205, %202
  %209 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @VMCB_OFF_AVIC_LT, align 4
  %212 = call i32 @vm_get_vmcb_field(%struct.vmctx* %209, i32 %210, i32 %211, i32 8, i32* %6)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %208
  %220 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @VMCB_OFF_AVIC_PT, align 4
  %223 = call i32 @vm_get_vmcb_field(%struct.vmctx* %220, i32 %221, i32 %222, i32 8, i32* %6)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %219
  br label %231

231:                                              ; preds = %230, %205, %199
  %232 = load i32, i32* %7, align 4
  ret i32 %232
}

declare dso_local i32 @vm_get_vmcb_field(%struct.vmctx*, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
