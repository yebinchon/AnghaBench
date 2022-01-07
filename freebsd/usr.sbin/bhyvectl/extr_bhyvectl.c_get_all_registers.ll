; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_all_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_get_all_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@get_efer = common dso_local global i64 0, align 8
@get_all = common dso_local global i64 0, align 8
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"efer[%d]\09\090x%016lx\0A\00", align 1
@get_cr0 = common dso_local global i64 0, align 8
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cr0[%d]\09\090x%016lx\0A\00", align 1
@get_cr2 = common dso_local global i64 0, align 8
@VM_REG_GUEST_CR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cr2[%d]\09\090x%016lx\0A\00", align 1
@get_cr3 = common dso_local global i64 0, align 8
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"cr3[%d]\09\090x%016lx\0A\00", align 1
@get_cr4 = common dso_local global i64 0, align 8
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cr4[%d]\09\090x%016lx\0A\00", align 1
@get_dr0 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"dr0[%d]\09\090x%016lx\0A\00", align 1
@get_dr1 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"dr1[%d]\09\090x%016lx\0A\00", align 1
@get_dr2 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"dr2[%d]\09\090x%016lx\0A\00", align 1
@get_dr3 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"dr3[%d]\09\090x%016lx\0A\00", align 1
@get_dr6 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"dr6[%d]\09\090x%016lx\0A\00", align 1
@get_dr7 = common dso_local global i64 0, align 8
@VM_REG_GUEST_DR7 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"dr7[%d]\09\090x%016lx\0A\00", align 1
@get_rsp = common dso_local global i64 0, align 8
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"rsp[%d]\09\090x%016lx\0A\00", align 1
@get_rip = common dso_local global i64 0, align 8
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"rip[%d]\09\090x%016lx\0A\00", align 1
@get_rax = common dso_local global i64 0, align 8
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"rax[%d]\09\090x%016lx\0A\00", align 1
@get_rbx = common dso_local global i64 0, align 8
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"rbx[%d]\09\090x%016lx\0A\00", align 1
@get_rcx = common dso_local global i64 0, align 8
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"rcx[%d]\09\090x%016lx\0A\00", align 1
@get_rdx = common dso_local global i64 0, align 8
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"rdx[%d]\09\090x%016lx\0A\00", align 1
@get_rsi = common dso_local global i64 0, align 8
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"rsi[%d]\09\090x%016lx\0A\00", align 1
@get_rdi = common dso_local global i64 0, align 8
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"rdi[%d]\09\090x%016lx\0A\00", align 1
@get_rbp = common dso_local global i64 0, align 8
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"rbp[%d]\09\090x%016lx\0A\00", align 1
@get_r8 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R8 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"r8[%d]\09\090x%016lx\0A\00", align 1
@get_r9 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R9 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"r9[%d]\09\090x%016lx\0A\00", align 1
@get_r10 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R10 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"r10[%d]\09\090x%016lx\0A\00", align 1
@get_r11 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R11 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"r11[%d]\09\090x%016lx\0A\00", align 1
@get_r12 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R12 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"r12[%d]\09\090x%016lx\0A\00", align 1
@get_r13 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R13 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"r13[%d]\09\090x%016lx\0A\00", align 1
@get_r14 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R14 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"r14[%d]\09\090x%016lx\0A\00", align 1
@get_r15 = common dso_local global i64 0, align 8
@VM_REG_GUEST_R15 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"r15[%d]\09\090x%016lx\0A\00", align 1
@get_rflags = common dso_local global i64 0, align 8
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"rflags[%d]\090x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32)* @get_all_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_all_registers(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* @get_efer, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @get_all, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %37
  %44 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  %47 = call i32 @vm_get_register(%struct.vmctx* %44, i32 %45, i32 %46, i32* %18)
  store i32 %47, i32* %34, align 4
  %48 = load i32, i32* %34, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %40, %2
  %56 = load i32, i32* %34, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @get_cr0, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @get_all, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61, %58
  %65 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %68 = call i32 @vm_get_register(%struct.vmctx* %65, i32 %66, i32 %67, i32* %5)
  store i32 %68, i32* %34, align 4
  %69 = load i32, i32* %34, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %64
  br label %76

76:                                               ; preds = %75, %61, %55
  %77 = load i32, i32* %34, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @get_cr2, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* @get_all, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82, %79
  %86 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @VM_REG_GUEST_CR2, align 4
  %89 = call i32 @vm_get_register(%struct.vmctx* %86, i32 %87, i32 %88, i32* %6)
  store i32 %89, i32* %34, align 4
  %90 = load i32, i32* %34, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %85
  br label %97

97:                                               ; preds = %96, %82, %76
  %98 = load i32, i32* %34, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @get_cr3, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @get_all, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103, %100
  %107 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %110 = call i32 @vm_get_register(%struct.vmctx* %107, i32 %108, i32 %109, i32* %7)
  store i32 %110, i32* %34, align 4
  %111 = load i32, i32* %34, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %106
  br label %118

118:                                              ; preds = %117, %103, %97
  %119 = load i32, i32* %34, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* @get_cr4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @get_all, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124, %121
  %128 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %131 = call i32 @vm_get_register(%struct.vmctx* %128, i32 %129, i32 %130, i32* %8)
  store i32 %131, i32* %34, align 4
  %132 = load i32, i32* %34, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %127
  br label %139

139:                                              ; preds = %138, %124, %118
  %140 = load i32, i32* %34, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %160, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* @get_dr0, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* @get_all, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145, %142
  %149 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @VM_REG_GUEST_DR0, align 4
  %152 = call i32 @vm_get_register(%struct.vmctx* %149, i32 %150, i32 %151, i32* %9)
  store i32 %152, i32* %34, align 4
  %153 = load i32, i32* %34, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  br label %160

160:                                              ; preds = %159, %145, %139
  %161 = load i32, i32* %34, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* @get_dr1, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i64, i64* @get_all, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %166, %163
  %170 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @VM_REG_GUEST_DR1, align 4
  %173 = call i32 @vm_get_register(%struct.vmctx* %170, i32 %171, i32 %172, i32* %10)
  store i32 %173, i32* %34, align 4
  %174 = load i32, i32* %34, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %169
  br label %181

181:                                              ; preds = %180, %166, %160
  %182 = load i32, i32* %34, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %202, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* @get_dr2, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* @get_all, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %187, %184
  %191 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @VM_REG_GUEST_DR2, align 4
  %194 = call i32 @vm_get_register(%struct.vmctx* %191, i32 %192, i32 %193, i32* %11)
  store i32 %194, i32* %34, align 4
  %195 = load i32, i32* %34, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %190
  br label %202

202:                                              ; preds = %201, %187, %181
  %203 = load i32, i32* %34, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %223, label %205

205:                                              ; preds = %202
  %206 = load i64, i64* @get_dr3, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* @get_all, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208, %205
  %212 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @VM_REG_GUEST_DR3, align 4
  %215 = call i32 @vm_get_register(%struct.vmctx* %212, i32 %213, i32 %214, i32* %12)
  store i32 %215, i32* %34, align 4
  %216 = load i32, i32* %34, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %211
  br label %223

223:                                              ; preds = %222, %208, %202
  %224 = load i32, i32* %34, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %223
  %227 = load i64, i64* @get_dr6, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i64, i64* @get_all, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %229, %226
  %233 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @VM_REG_GUEST_DR6, align 4
  %236 = call i32 @vm_get_register(%struct.vmctx* %233, i32 %234, i32 %235, i32* %13)
  store i32 %236, i32* %34, align 4
  %237 = load i32, i32* %34, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %239, %232
  br label %244

244:                                              ; preds = %243, %229, %223
  %245 = load i32, i32* %34, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %244
  %248 = load i64, i64* @get_dr7, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i64, i64* @get_all, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %250, %247
  %254 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* @VM_REG_GUEST_DR7, align 4
  %257 = call i32 @vm_get_register(%struct.vmctx* %254, i32 %255, i32 %256, i32* %14)
  store i32 %257, i32* %34, align 4
  %258 = load i32, i32* %34, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %260, %253
  br label %265

265:                                              ; preds = %264, %250, %244
  %266 = load i32, i32* %34, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %286, label %268

268:                                              ; preds = %265
  %269 = load i64, i64* @get_rsp, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i64, i64* @get_all, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %271, %268
  %275 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %278 = call i32 @vm_get_register(%struct.vmctx* %275, i32 %276, i32 %277, i32* %15)
  store i32 %278, i32* %34, align 4
  %279 = load i32, i32* %34, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %281, %274
  br label %286

286:                                              ; preds = %285, %271, %265
  %287 = load i32, i32* %34, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %307, label %289

289:                                              ; preds = %286
  %290 = load i64, i64* @get_rip, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i64, i64* @get_all, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %292, %289
  %296 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %299 = call i32 @vm_get_register(%struct.vmctx* %296, i32 %297, i32 %298, i32* %16)
  store i32 %299, i32* %34, align 4
  %300 = load i32, i32* %34, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %295
  br label %307

307:                                              ; preds = %306, %292, %286
  %308 = load i32, i32* %34, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %328, label %310

310:                                              ; preds = %307
  %311 = load i64, i64* @get_rax, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load i64, i64* @get_all, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %313, %310
  %317 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %320 = call i32 @vm_get_register(%struct.vmctx* %317, i32 %318, i32 %319, i32* %19)
  store i32 %320, i32* %34, align 4
  %321 = load i32, i32* %34, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %316
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* %19, align 4
  %326 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %323, %316
  br label %328

328:                                              ; preds = %327, %313, %307
  %329 = load i32, i32* %34, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %349, label %331

331:                                              ; preds = %328
  %332 = load i64, i64* @get_rbx, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i64, i64* @get_all, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %349

337:                                              ; preds = %334, %331
  %338 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %341 = call i32 @vm_get_register(%struct.vmctx* %338, i32 %339, i32 %340, i32* %20)
  store i32 %341, i32* %34, align 4
  %342 = load i32, i32* %34, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %337
  %345 = load i32, i32* %4, align 4
  %346 = load i32, i32* %20, align 4
  %347 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %344, %337
  br label %349

349:                                              ; preds = %348, %334, %328
  %350 = load i32, i32* %34, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %370, label %352

352:                                              ; preds = %349
  %353 = load i64, i64* @get_rcx, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i64, i64* @get_all, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %370

358:                                              ; preds = %355, %352
  %359 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %362 = call i32 @vm_get_register(%struct.vmctx* %359, i32 %360, i32 %361, i32* %21)
  store i32 %362, i32* %34, align 4
  %363 = load i32, i32* %34, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %358
  %366 = load i32, i32* %4, align 4
  %367 = load i32, i32* %21, align 4
  %368 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %358
  br label %370

370:                                              ; preds = %369, %355, %349
  %371 = load i32, i32* %34, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %391, label %373

373:                                              ; preds = %370
  %374 = load i64, i64* @get_rdx, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %373
  %377 = load i64, i64* @get_all, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %376, %373
  %380 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %381 = load i32, i32* %4, align 4
  %382 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %383 = call i32 @vm_get_register(%struct.vmctx* %380, i32 %381, i32 %382, i32* %22)
  store i32 %383, i32* %34, align 4
  %384 = load i32, i32* %34, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load i32, i32* %4, align 4
  %388 = load i32, i32* %22, align 4
  %389 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %386, %379
  br label %391

391:                                              ; preds = %390, %376, %370
  %392 = load i32, i32* %34, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %412, label %394

394:                                              ; preds = %391
  %395 = load i64, i64* @get_rsi, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %394
  %398 = load i64, i64* @get_all, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %412

400:                                              ; preds = %397, %394
  %401 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %402 = load i32, i32* %4, align 4
  %403 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %404 = call i32 @vm_get_register(%struct.vmctx* %401, i32 %402, i32 %403, i32* %23)
  store i32 %404, i32* %34, align 4
  %405 = load i32, i32* %34, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load i32, i32* %4, align 4
  %409 = load i32, i32* %23, align 4
  %410 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %407, %400
  br label %412

412:                                              ; preds = %411, %397, %391
  %413 = load i32, i32* %34, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %433, label %415

415:                                              ; preds = %412
  %416 = load i64, i64* @get_rdi, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = load i64, i64* @get_all, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %433

421:                                              ; preds = %418, %415
  %422 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %423 = load i32, i32* %4, align 4
  %424 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %425 = call i32 @vm_get_register(%struct.vmctx* %422, i32 %423, i32 %424, i32* %24)
  store i32 %425, i32* %34, align 4
  %426 = load i32, i32* %34, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %421
  %429 = load i32, i32* %4, align 4
  %430 = load i32, i32* %24, align 4
  %431 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %428, %421
  br label %433

433:                                              ; preds = %432, %418, %412
  %434 = load i32, i32* %34, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %454, label %436

436:                                              ; preds = %433
  %437 = load i64, i64* @get_rbp, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %436
  %440 = load i64, i64* @get_all, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %454

442:                                              ; preds = %439, %436
  %443 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %444 = load i32, i32* %4, align 4
  %445 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %446 = call i32 @vm_get_register(%struct.vmctx* %443, i32 %444, i32 %445, i32* %25)
  store i32 %446, i32* %34, align 4
  %447 = load i32, i32* %34, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %442
  %450 = load i32, i32* %4, align 4
  %451 = load i32, i32* %25, align 4
  %452 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %450, i32 %451)
  br label %453

453:                                              ; preds = %449, %442
  br label %454

454:                                              ; preds = %453, %439, %433
  %455 = load i32, i32* %34, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %475, label %457

457:                                              ; preds = %454
  %458 = load i64, i64* @get_r8, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %463, label %460

460:                                              ; preds = %457
  %461 = load i64, i64* @get_all, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %475

463:                                              ; preds = %460, %457
  %464 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %465 = load i32, i32* %4, align 4
  %466 = load i32, i32* @VM_REG_GUEST_R8, align 4
  %467 = call i32 @vm_get_register(%struct.vmctx* %464, i32 %465, i32 %466, i32* %26)
  store i32 %467, i32* %34, align 4
  %468 = load i32, i32* %34, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %463
  %471 = load i32, i32* %4, align 4
  %472 = load i32, i32* %26, align 4
  %473 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %471, i32 %472)
  br label %474

474:                                              ; preds = %470, %463
  br label %475

475:                                              ; preds = %474, %460, %454
  %476 = load i32, i32* %34, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %496, label %478

478:                                              ; preds = %475
  %479 = load i64, i64* @get_r9, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i64, i64* @get_all, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %481, %478
  %485 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %486 = load i32, i32* %4, align 4
  %487 = load i32, i32* @VM_REG_GUEST_R9, align 4
  %488 = call i32 @vm_get_register(%struct.vmctx* %485, i32 %486, i32 %487, i32* %27)
  store i32 %488, i32* %34, align 4
  %489 = load i32, i32* %34, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %495

491:                                              ; preds = %484
  %492 = load i32, i32* %4, align 4
  %493 = load i32, i32* %27, align 4
  %494 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %492, i32 %493)
  br label %495

495:                                              ; preds = %491, %484
  br label %496

496:                                              ; preds = %495, %481, %475
  %497 = load i32, i32* %34, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %517, label %499

499:                                              ; preds = %496
  %500 = load i64, i64* @get_r10, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = load i64, i64* @get_all, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %517

505:                                              ; preds = %502, %499
  %506 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %507 = load i32, i32* %4, align 4
  %508 = load i32, i32* @VM_REG_GUEST_R10, align 4
  %509 = call i32 @vm_get_register(%struct.vmctx* %506, i32 %507, i32 %508, i32* %28)
  store i32 %509, i32* %34, align 4
  %510 = load i32, i32* %34, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %505
  %513 = load i32, i32* %4, align 4
  %514 = load i32, i32* %28, align 4
  %515 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %513, i32 %514)
  br label %516

516:                                              ; preds = %512, %505
  br label %517

517:                                              ; preds = %516, %502, %496
  %518 = load i32, i32* %34, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %538, label %520

520:                                              ; preds = %517
  %521 = load i64, i64* @get_r11, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %520
  %524 = load i64, i64* @get_all, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %538

526:                                              ; preds = %523, %520
  %527 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %528 = load i32, i32* %4, align 4
  %529 = load i32, i32* @VM_REG_GUEST_R11, align 4
  %530 = call i32 @vm_get_register(%struct.vmctx* %527, i32 %528, i32 %529, i32* %29)
  store i32 %530, i32* %34, align 4
  %531 = load i32, i32* %34, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %526
  %534 = load i32, i32* %4, align 4
  %535 = load i32, i32* %29, align 4
  %536 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %534, i32 %535)
  br label %537

537:                                              ; preds = %533, %526
  br label %538

538:                                              ; preds = %537, %523, %517
  %539 = load i32, i32* %34, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %559, label %541

541:                                              ; preds = %538
  %542 = load i64, i64* @get_r12, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %547, label %544

544:                                              ; preds = %541
  %545 = load i64, i64* @get_all, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %559

547:                                              ; preds = %544, %541
  %548 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %549 = load i32, i32* %4, align 4
  %550 = load i32, i32* @VM_REG_GUEST_R12, align 4
  %551 = call i32 @vm_get_register(%struct.vmctx* %548, i32 %549, i32 %550, i32* %30)
  store i32 %551, i32* %34, align 4
  %552 = load i32, i32* %34, align 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %547
  %555 = load i32, i32* %4, align 4
  %556 = load i32, i32* %30, align 4
  %557 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %555, i32 %556)
  br label %558

558:                                              ; preds = %554, %547
  br label %559

559:                                              ; preds = %558, %544, %538
  %560 = load i32, i32* %34, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %580, label %562

562:                                              ; preds = %559
  %563 = load i64, i64* @get_r13, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %562
  %566 = load i64, i64* @get_all, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %580

568:                                              ; preds = %565, %562
  %569 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %570 = load i32, i32* %4, align 4
  %571 = load i32, i32* @VM_REG_GUEST_R13, align 4
  %572 = call i32 @vm_get_register(%struct.vmctx* %569, i32 %570, i32 %571, i32* %31)
  store i32 %572, i32* %34, align 4
  %573 = load i32, i32* %34, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %579

575:                                              ; preds = %568
  %576 = load i32, i32* %4, align 4
  %577 = load i32, i32* %31, align 4
  %578 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %576, i32 %577)
  br label %579

579:                                              ; preds = %575, %568
  br label %580

580:                                              ; preds = %579, %565, %559
  %581 = load i32, i32* %34, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %601, label %583

583:                                              ; preds = %580
  %584 = load i64, i64* @get_r14, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %589, label %586

586:                                              ; preds = %583
  %587 = load i64, i64* @get_all, align 8
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %601

589:                                              ; preds = %586, %583
  %590 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %591 = load i32, i32* %4, align 4
  %592 = load i32, i32* @VM_REG_GUEST_R14, align 4
  %593 = call i32 @vm_get_register(%struct.vmctx* %590, i32 %591, i32 %592, i32* %32)
  store i32 %593, i32* %34, align 4
  %594 = load i32, i32* %34, align 4
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %589
  %597 = load i32, i32* %4, align 4
  %598 = load i32, i32* %32, align 4
  %599 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %597, i32 %598)
  br label %600

600:                                              ; preds = %596, %589
  br label %601

601:                                              ; preds = %600, %586, %580
  %602 = load i32, i32* %34, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %622, label %604

604:                                              ; preds = %601
  %605 = load i64, i64* @get_r15, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %610, label %607

607:                                              ; preds = %604
  %608 = load i64, i64* @get_all, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %622

610:                                              ; preds = %607, %604
  %611 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %612 = load i32, i32* %4, align 4
  %613 = load i32, i32* @VM_REG_GUEST_R15, align 4
  %614 = call i32 @vm_get_register(%struct.vmctx* %611, i32 %612, i32 %613, i32* %33)
  store i32 %614, i32* %34, align 4
  %615 = load i32, i32* %34, align 4
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %621

617:                                              ; preds = %610
  %618 = load i32, i32* %4, align 4
  %619 = load i32, i32* %33, align 4
  %620 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %618, i32 %619)
  br label %621

621:                                              ; preds = %617, %610
  br label %622

622:                                              ; preds = %621, %607, %601
  %623 = load i32, i32* %34, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %643, label %625

625:                                              ; preds = %622
  %626 = load i64, i64* @get_rflags, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %625
  %629 = load i64, i64* @get_all, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %643

631:                                              ; preds = %628, %625
  %632 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %633 = load i32, i32* %4, align 4
  %634 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %635 = call i32 @vm_get_register(%struct.vmctx* %632, i32 %633, i32 %634, i32* %17)
  store i32 %635, i32* %34, align 4
  %636 = load i32, i32* %34, align 4
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %631
  %639 = load i32, i32* %4, align 4
  %640 = load i32, i32* %17, align 4
  %641 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %639, i32 %640)
  br label %642

642:                                              ; preds = %638, %631
  br label %643

643:                                              ; preds = %642, %628, %622
  %644 = load i32, i32* %34, align 4
  ret i32 %644
}

declare dso_local i32 @vm_get_register(%struct.vmctx*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
